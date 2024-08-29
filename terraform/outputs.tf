output "ec2_public_ips" {
  description = "Public IP addresses of all EC2 instances"
  value       = [aws_instance.example1.public_ip, aws_instance.example2.public_ip]
}
