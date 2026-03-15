variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-02dfbd4ff395f2a1b"
  
}

variable "instance_type" {
  description = "The type of EC2 instance to create"
  type        = string
  default     = "t2.micro"
  
}

variable "instance_name" {
  description = "The name tag for the EC2 instance"
  type        = string
  default     = "dev-instance"
  
}


