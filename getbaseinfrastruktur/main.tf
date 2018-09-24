data "terraform_remote_state" "baseInfra" {
  backend = "s3"

  config {
    bucket = "${var.remote_state_bucket}"
    key    = "env:/${terraform.workspace}/${var.remote_state_key}"
    region = "${var.remote_state_bucket_region}"
  }
}