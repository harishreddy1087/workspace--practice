provider "aws" {
    region = "us-east-1"
  
}

variable "ami" {
  description = "this for ami"

}

variable "instance_type" {
    description = "this is for instance"
    type = map(string)
    default = {
      "dev" = "t2.micro"
      "qa" = "t2.nano"
      "prod" = "t2.medium"
    }
  
}
module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami = var.ami
    instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
}