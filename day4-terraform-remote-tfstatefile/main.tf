resource "aws_vpc" "dev_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "dev-vpc"
  }
  
}

resource "aws_subnet" "dev_subnet_public" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = "10.0.1.0/24"
  tags = {
    Name = "dev-subnet-public"
  }
}

resource "aws_subnet" "dev_subnet_private" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = "10.0.2.0/24"
  tags = {
    Name = "dev-subnet-private"
  }
}

resource "aws_internet_gateway" "dev_igw" {
  vpc_id = aws_vpc.dev_vpc.id
  tags = {
    Name = "dev-igw"
  }
  
}

resource "aws_route_table" "dev_public_rt" {
  vpc_id = aws_vpc.dev_vpc.id
  tags = {
    Name = "dev-public-rt"
  }
}

resource "aws_route" "dev_public_rt_default_route" {
  route_table_id         = aws_route_table.dev_public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.dev_igw.id
}

resource "aws_route_table_association" "dev_public_rt_assoc" {
  subnet_id      = aws_subnet.dev_subnet_public.id
  route_table_id = aws_route_table.dev_public_rt.id
}

resource "aws_instance" "public_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.dev_subnet_public.id
  tags = {
    Name = var.instance_name
  }
  associate_public_ip_address = true

}

resource "aws_security_group" "securitygroup_dev" {
  name        = "sg_dev"
  description = "Security group for dev environment"
  vpc_id      = aws_vpc.dev_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}