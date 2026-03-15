output "ec2_instance_id" {
  description = "The ID of the public EC2 instance"
  value       = aws_instance.public_instance.id
  
}

output "ec2_instance_public_ip" {
  description = "The public IP address of the public EC2 instance"
  value       = aws_instance.public_instance.public_ip
  
}

output "ec2_instance_private_ip" {
  description = "The private IP address of the public EC2 instance"
  value       = aws_instance.public_instance.private_ip
  
}