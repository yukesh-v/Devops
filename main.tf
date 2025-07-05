variable "region" {
  description = "AWS Region"
  type        = string
}

variable "instance_name" {
  description = "Name for the EC2 instance"
  type        = string
}
variable "tags" {
  description = "A map of tags to apply to all resources."
  type        = map(string)
  default     = {} # Provide an empty map as default if not always needed
}
provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
  ami           = "ami-05ffe3c48a9991133"
  instance_type = "t2.micro"
  
  tags = merge(
    var.tags,
    {
      Name        = var.instance_name
    }
  )
}
