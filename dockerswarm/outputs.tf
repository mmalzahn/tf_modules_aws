output "DockerMasterBackendFqdn" {
  value = "${aws_route53_record.dockerhost_masterintern.fqdn}"
}
