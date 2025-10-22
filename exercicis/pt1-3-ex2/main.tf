provider "aws" {
  region = "us-east-1"
}

# VPC
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"

  tags = {
    Name = "VPC-Gerard"
  }
}


# Subnets
resource "aws_subnet" "subnet_a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.32.0/25"
  availability_zone       = "us-east-1a"

  tags = {
    Name = "SubA"
  }
}

resource "aws_subnet" "subnet_b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.30.0/23"
  availability_zone       = "us-east-1a"

  tags = {
    Name = "SubB"
  }
}

resource "aws_subnet" "subnet_c" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.33.0/28"
  availability_zone       = "us-east-1a"

  tags = {
    Name = "SubC"
  }
}


resource "aws_instance" "subnet_a_vm1" {
  ami           = "ami-052064a798f08f0d3"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.subnet_a.id

  tags = {
    Name = "V-A1"
  }
}

resource "aws_instance" "subnet_a_vm2" {
  ami           = "ami-052064a798f08f0d3"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.subnet_a.id

  tags = {
    Name = "V-A2"
  }
}

# Subnet B
resource "aws_instance" "subnet_b_vm1" {
  ami           = "ami-052064a798f08f0d3"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.subnet_b.id

  tags = {
    Name = "V-B1"
  }
}

resource "aws_instance" "subnet_b_vm2" {
  ami           = "ami-052064a798f08f0d3"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.subnet_b.id

  tags = {
    Name = "V-B2"
  }
}

# Subnet C
resource "aws_instance" "subnet_c_vm1" {
  ami           = "ami-052064a798f08f0d3"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.subnet_c.id

  tags = {
    Name = "V-C1"
  }
}

resource "aws_instance" "subnet_c_vm2" {
  ami           = "ami-052064a798f08f0d3"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.subnet_c.id

  tags = {
    Name = "V-C2"
  }
}
