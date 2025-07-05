variable "region" {
  description = "AWS Region"
  type        = string
}

variable "instance_name" {
  description = "Name for the EC2 instance"
  type        = string
}
provider "aws" {
  region = "var.region"
}

resource "aws_instance" "web" {
  ami           = "ami-05ffe3c48a9991133"
  instance_type = "t2.micro"
  
  tags = {
    Name = "var.instance_name.Name"
  }
}
