variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for resource tagging"
  type        = string
  default     = "library-management-platform"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the public subnet"
  type        = string
  default     = "us-east-1a"
}

variable "instance_type" {
  description = "EC2 instance type for the application server"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Ubuntu 22.04 LTS AMI ID (us-east-1)"
  type        = string
  # Ubuntu 22.04 LTS (Jammy) - us-east-1
  # Update when deploying: aws ec2 describe-images ...
  default     = "ami-0c7217cdde317cfec"
}

variable "key_name" {
  description = "Name of existing EC2 key pair for SSH access"
  type        = string
  default     = "library-key"
}

variable "app_port" {
  description = "Port on which the Flask application listens"
  type        = number
  default     = 5000
}

variable "s3_bucket_name" {
  description = "Unique S3 bucket name for application assets"
  type        = string
  default     = "library-mgmt-assets-2025-vedant"
}
