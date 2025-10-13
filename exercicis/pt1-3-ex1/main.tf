provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instancia1" {
  ami= "ami-052064a798f08f0d3" 
  instance_type = "t3.micro"

  tags = {
    Name = "instancia1"
  }
}

resource "aws_instance" "instancia2" {
  ami= "ami-052064a798f08f0d3"
  instance_type = "t3.micro"

  tags = {
    Name = "instancia2"
  }
}
