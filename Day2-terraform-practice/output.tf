output "public_ip" {
  value = aws_instance.dev_instance[0].public_ip

}

output "private_ip" {
  value = aws_instance.dev_instance[0].private_ip

}

output "instance_id" {
  value = aws_instance.dev_instance[0].id

}