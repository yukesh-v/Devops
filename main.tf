provider "aws" {
  region = "TF_VAR_region"
}

resource "aws_instance" "web" {
  ami           = "ami-05ffe3c48a9991133"
  instance_type = "t2.micro"
  
  tags = {
    Name = "TF_VAR_name"
  }
}
