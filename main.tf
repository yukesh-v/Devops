
provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
  ami           = "ami-05ffe3c48a9991133"
  instance_type = "t2.micro"
  key_name ="id_pair"
  tags = var.tags   
}
