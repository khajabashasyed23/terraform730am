resource "aws_instance" "dev_instance" {
  count = 1
  
  ami = var.ami_id # Amazon Linux 2 AMI (HVM), SSD Volume Type

  instance_type = var.instance_type # EC2 instance type
  
  tags = {
    Name = "dev-instance-${count.index}"
  }
  
}

