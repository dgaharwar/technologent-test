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

locals {
  ec2_power_schedule = "<%=customOptions.ot_power_schedule%>" != "null" ? "<%=customOptions.ot_power_schedule%>" : var.power_schedule
}

data "aws_subnet" "subnet" {
  availability_zone = "<%=customOptions.ot_availability_zone%>"
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
  instance_type           = "<%=customOptions.ec2InstanceType%>"
  ami                     = "<%=customOptions.ot_image_id%>"
  subnet_id               = data.aws_subnet.subnet.id
  vpc_security_group_ids  = [var.security_groups]
  key_name                = var.key_name
  user_data               = "${file("admin-server-userdata.sh")}"
  tags = {
    Name = "<%=instance.name%>"
    PowerSchedule = local.ec2_power_schedule
    }
}

