output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}

output "security_group_id" {
  description = "ID of the application security group"
  value       = aws_security_group.app_sg.id
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "instance_public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = aws_instance.app_server.public_dns
}

output "s3_bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.assets.bucket
}

output "s3_bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.assets.arn
}

output "app_url" {
  description = "Application URL after deployment"
  value       = "http://${aws_instance.app_server.public_ip}:${var.app_port}"
}
