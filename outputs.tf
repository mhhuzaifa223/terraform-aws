output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.main.id
}

output "public_ip" {
  description = "Elastic IP address of the server"
  value       = aws_eip.main.public_ip
}

output "ssh_command" {
  description = "SSH command to connect to the server"
  value       = "ssh -i your-key.pem ec2-user@${aws_eip.main.public_ip}"
}

output "security_group_id" {
  description = "Security Group ID"
  value       = aws_security_group.main.id
}