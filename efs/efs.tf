resource "aws_efs_file_system" "efs_StorageBackend" {
  lifecycle {
    ignore_changes = ["tags.tf_created"]
  }

  tags = "${merge(var.tags,
            map(
              "Name", "${var.projectId}-${terraform.workspace}-EFS_Storagebackend"
              )
              )}"
}

resource "aws_efs_mount_target" "EFS_Mount_Target" {
  count           = "${length(var.subnet_ids)}"
  file_system_id  = "${aws_efs_file_system.efs_StorageBackend.id}"
  subnet_id       = "${element(var.subnet_ids,count.index)}"
  security_groups = ["${aws_security_group.SG_EFS_IN_FROM_VPC.id}"]
}

resource "aws_security_group" "SG_EFS_IN_FROM_VPC" {
  name        = "${var.projectId}-${terraform.workspace}-SG_EFS_IN_VPC"
  description = "Allow EFS traffic from VPC"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 2049
    to_port     = 2049
    protocol    = "tcp"
    cidr_blocks = ["${data.aws_vpc.vpcdata.cidr_block}"]
  }

  egress {
    from_port   = 0
    to_port     = 65534
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  lifecycle {
    ignore_changes = ["tags.tf_created"]
  }

  tags = "${merge(var.tags,
            map(
              "Name", "${var.projectId}-${terraform.workspace}-SG_EFS_IN_VPC"
              )
              )}"
}
