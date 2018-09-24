variable "tags" {
  type = "map"
}

variable "projectId" {}

variable "subnet_ids" {
  type    = "list"
  default = []
}

variable "vpc_id" {}
