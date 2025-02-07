variable "region" {
  description = "The AWS region to deploy the resources"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "The CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "The CIDR blocks for the private subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "instance_type" {
  description = "The type of EC2 instance"
  default     = "t2.micro"
}

variable "db_username" {
  description = "The username for the RDS database"
  default     = "admin"
}

variable "db_password" {
  description = "The password for the RDS database"
  sensitive   = true
}

variable "db_instance_class" {
  description = "The instance class for the RDS database"
  default     = "db.t2.micro"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  default     = "my-dev-bucket"
}

variable "load_balancer_name" {
  description = "The name of the Load Balancer"
  default     = "dev-load-balancer"
}