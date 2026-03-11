output "publicid" {
  value = aws_instance.dev_instance.public_ip
  
}

output "privateid" {
  value = aws_instance.dev_instance.private_ip
}

output "test_publicid" {
  value = aws_instance.test_instance.public_ip
  
}

output "test_privateid" {
  value = aws_instance.test_instance.private_ip
}

output "inst_name" {
  value = aws_instance.dev_instance.key_name
}

output "test_name" {
  value = aws_instance.test_instance.key_name
}