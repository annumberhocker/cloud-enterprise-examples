variable "project_name" {}
variable "environment" {}

variable "resource_group" {
  default = "IKS-RG1"
}
variable "region" {
  default = "us-east"
}
variable "vpc_zone_names" {
  type    = list
  default = ["us-east-1"]
}
variable "flavors" {
  type    = list
  default = ["bx2.16x64"]
}
variable "workers_count" {
  type    = list
  default = [3]
}
variable "k8s_version" {
  default = "4.5_openshift"
}

variable "public_endpoint_disable" {
  type = bool
  default = false
}

variable "pwx_volume_size" {
  default = "200"
}

locals {
  max_size = length(var.vpc_zone_names)
}