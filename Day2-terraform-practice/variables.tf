variable "ami_id" {
  default = ""
  type = string
  description = "Amazon Linux 2 AMI (HVM), SSD Volume Type"
}

variable "instance_type" {
  default = ""
  type = string
  description = "EC2 instance type" 
}