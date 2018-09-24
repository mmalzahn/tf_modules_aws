output "vpc_id" {
  value = "${data.terraform_remote_state.baseInfra.vpc_id}"
}
output "vpc_cidr" {
  value = "${data.terraform_remote_state.baseInfra.vpc_cidr}"
}
output "subnet_dmz_ids" {
  value = "${data.terraform_remote_state.baseInfra.subnet_ids_dmz}"
}
output "subnet_dmz_cidrblocks" {
  value = "${data.terraform_remote_state.baseInfra.subnet_cidrblocks_dmz}"
}
output "subnet_backend_ids" {
  value = "${data.terraform_remote_state.baseInfra.subnet_ids_backend}"
}
output "subnet_backend_cidrblocks" {
  value = "${data.terraform_remote_state.baseInfra.subnet_cidrblocks_backend}"
}
output "subnet_servicesbackend_ids" {
  value = "${data.terraform_remote_state.baseInfra.subnet_ids_servicesbackend}"
}
output "subnet_servicesbackend_cidrblocks" {
  value = "${data.terraform_remote_state.baseInfra.subnet_cidrblocks_servicesbackend}"
}
output "bastion_PubKey_Bucket_name" {
  value = "${data.terraform_remote_state.baseInfra.s3PubKeyBucket_name}"
}
output "bastion_public_ip" {
  value = "${data.terraform_remote_state.baseInfra.bastion_public_ip}"
}
output "bastion_private_ip" {
  value = "${data.terraform_remote_state.baseInfra.bastion_private_ip}"
}
output "bastion_dns" {
  value = "${data.terraform_remote_state.baseInfra.bastion_dns}"
}
output "bastion_dns_entry" {
  value = "${data.terraform_remote_state.baseInfra.bastion_dns_entry}"
}
output "bastion_port" {
  value = "${data.terraform_remote_state.baseInfra.bastion_port}"
}
output "bastion_sg" {
  value = "${data.terraform_remote_state.baseInfra.bastion_sg}"
}
output "testhost_private_ip" {
  value = "${data.terraform_remote_state.baseInfra.testhost_ip}"
}

output "testhost_dns" {
  value = "${data.terraform_remote_state.baseInfra.testhost_dns}"
}

output "dns_name" {
  value = "${data.terraform_remote_state.baseInfra.dns_name}"
}
output "dns_zone_id" {
  value = "${data.terraform_remote_state.baseInfra.dns_zone_id}"
}

# output "ConfigId" {
#   value = "${random_id.configId.b64_url}"
# }

# output "api_url_customdomain" {
#   value = "${terraform.workspace == "prod" ? join(";", aws_api_gateway_domain_name.tfapidomain_base.*.domain_name) : join(";",aws_api_gateway_domain_name.tfapidomain_workspace.*.domain_name)}"
# }

# output "api_url_cloudfront_url" {
#   value = "${terraform.workspace == "prod" ? join(";",aws_api_gateway_domain_name.tfapidomain_base.*.cloudfront_domain_name) : join(";",aws_api_gateway_domain_name.tfapidomain_workspace.*.cloudfront_domain_name)}"
# }
# output "api_url_cloudfront_id" {
#   value = "${terraform.workspace == "prod" ? join(";",aws_api_gateway_domain_name.tfapidomain_base.*.cloudfront_zone_id) : join(";",aws_api_gateway_domain_name.tfapidomain_workspace.*.cloudfront_zone_id)}"
# }

# output "api_invokeUrl" {
#   value = "${aws_api_gateway_deployment.testdeployment.*.invoke_url}"
# }
# output "efs_filesystem_id" {
#   value = "${aws_efs_file_system.efs_StorageBackend.*.id}"
# }

# output "efs_mount_targets_id" {
#   value = "${aws_efs_mount_target.EFS_Backend.*.id}"
# }

# output "efs_mount_targets_dns" {
#   value = "${aws_efs_mount_target.EFS_Backend.*.dns_name}"
# }

# output "secgroups" {
#   value = "${map("ssh_all_in", aws_security_group.SG_SSH_IN_from_anywhere.id,
#                  "ssh_bastion_in", aws_security_group.SG_SSH_IN_from_Bastionhost.id,
#                  "rdp_bastion_in",aws_security_group.SG_RDP_IN_from_Bastionhost.id)
#             }"
# }


# output "state_key" {
#   value = "${local.workspace_key}"
# }
