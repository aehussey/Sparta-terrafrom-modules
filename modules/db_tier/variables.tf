variable "name" {
  description = "name of the app"
}

variable "app_ami_id" {
  description = "id of the app ami"

}

variable "db_ami_id" {
  description = "id of the db ami"
}

variable "cidr_block" {
  description = "the cidr_block"
}

variable "app_vpc" {
  description = "app_vpc"
}

variable "security_group" {
  description = "security_group"
}

variable "subnet_cidr_block" {
  description = "subnet_cidr_block"
}
