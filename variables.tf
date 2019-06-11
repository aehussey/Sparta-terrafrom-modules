variable "name" {
  default="app-steve"
}

variable "app_ami_id" {
  default="ami-c2b8bfbb"
}

variable "db_ami_id" {
  default="ami-01020378"
}

variable "cidr_block" {
  default="10.0.0.0/16"
}

variable "app_vpc" {
  default = "app_vpc"
}
