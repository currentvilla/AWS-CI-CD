output "public_ips" {
  description = "Public IPv4 addresses of public EC2 instances"
  value       = aws_instance.public_ec2a[*].public_ip
}
