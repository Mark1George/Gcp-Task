variable "instance_name" {}
variable "instance_zone" {}
variable "instance_type" {
  default = "n1-standard-1"
  }
variable "instance_network" {}
variable "subnet_name" {}
variable "image" {}
variable "svacc" {}