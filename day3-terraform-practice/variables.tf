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

variable "instance_name" {
  default = ""
  type = string
  description = "Name tag for the EC2 instance"
} 

variable "dev_profile" {
  default = ""
  type = string
  description = "AWS CLI profile to use for authentication"
  
}

variable "test_profile" {
  default = "syed"
  type = string
  description = "AWS CLI profile to use for authentication"
  
}