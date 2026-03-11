resource "aws_instance" "dev_instance" {
  ami = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
  
}

resource "aws_instance" "test_instance" {
  ami = var.ami_id
  instance_type = var.instance_type
  provider = "aws.test"
  tags = {
    Name = "${var.instance_name}-test"
  }
  
}