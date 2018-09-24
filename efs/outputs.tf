output "efs_filesystem_id" {
  value = "${aws_efs_file_system.efs_StorageBackend.id}"
}
output "efs_filesystem_dns" {
  value = "${aws_efs_file_system.efs_StorageBackend.dns_name}"
}
output "efs_target_id" {
  value = "${aws_efs_mount_target.EFS_Mount_Target.*.id}"
}
output "efs_target_dns" {
  value = "${aws_efs_mount_target.EFS_Mount_Target.*.dns_name}"
}
output "efs_target_network_interface_id" {
  value = "${aws_efs_mount_target.EFS_Mount_Target.*.network_interface_id}"
}
output "efs_sg_id" {
  value = "${aws_security_group.SG_EFS_IN_FROM_VPC.id}"
}
output "efs_sg_arn" {
  value = "${aws_security_group.SG_EFS_IN_FROM_VPC.arn}"
}
