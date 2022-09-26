# This template is designed for deploying an EC2 instance from the Morpheus UI.

################################
##         Variables          ##
################################

variable "region" {}
variable "access_key" {}
variable "secret_key" {}

variable "vpc" {
  default = "vpc-33ac354e"
}
variable "security_groups" {
  default = "sg-2b299333"
}
variable "key_name" {
  default = "MorpheusApp"
}
variable "power_schedule" {
  default = "on"
}
variable "subnet" {
  default = "subnet-ed6462e3"
}

locals {
  ec2_power_schedule = "on" != "null" ? "on" : var.power_schedule
}

data "aws_subnet" "subnet" {
  availability_zone = var.subnet
  vpc_id            = var.vpc
}

#################################
##          Provider           ##
#################################

provider "aws" {
    region = var.region
    access_key = var.access_key
    secret_key = var.secret_key
}

#################################
##           Resources         ##
#################################

resource "aws_instance" "ec2" {
  instance_type           = "t2.micro"
  ami                     = "ami-08d4ac5b634553e16"
  subnet_id               = data.aws_subnet.subnet.id
  vpc_security_group_ids  = [var.security_groups]
  key_name                = var.key_name
  user_data               = "${file("install_apache.sh")}"
  tags = {
    Name = "<%=instance.name%>"
    PowerSchedule = local.ec2_power_schedule
    }
}

