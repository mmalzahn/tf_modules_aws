variable "aws_region" {
  default     = "eu-west-1"
  description = "AWS Region fuer das Deployment"
}
variable "key_dockerkeys" {
  default = true
}
variable "key_register" {
  default = true
}

variable "key_algorithm" {
  default = "RSA"
}
variable "key_size" {
  default = 4096
}
variable "key_name" {
  default = ""
}
variable "key_path" {}
