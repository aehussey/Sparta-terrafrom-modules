module "app" {
  source ="./modules/app_tier"
  name = "${var.name}"
  app_ami_id = "${var.app_ami_id}"
  cidr_block = "${var.cidr_block}"
  db_ami_id = "${var.db_ami_id}"
  app_vpc = "{aws_vpc.app.id}"
}

module "db" {
  source ="./modules/db_tier"
  name = "${var.name}"
  app_ami_id = "${var.app_ami_id}"
  cidr_block = "${var.cidr_block}"
  db_ami_id = "${var.db_ami_id}"
}

provider "aws" {
  region  = "eu-west-1"
}

# create a vpc
resource "aws_vpc" "app" {
  cidr_block = "${var.cidr_block}"

  tags = {
    Name = "${var.name}"
  }
}

# internet gateway
resource "aws_internet_gateway" "app" {
  vpc_id = "${aws_vpc.app.id}"

  tags = {
    Name = "${var.name}"
  }
}
