provider "aws" {
    region = "us-east-1"
  
}

variable "ami" {
  description = "this value for AMI"
}

variable "instance_type" {
    description = "this is instance_type value"
  
}

resource "aws_instance" "example" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id     = "subnet-0255c54d7136e7c71" # Replace with the ID of the created subnet
  
}