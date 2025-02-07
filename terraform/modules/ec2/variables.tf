variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
}

variable "key_name" {
  description = "Name of the key pair to use for SSH access"
}

variable "vpc_id" {
  description = "VPC ID where the EC2 instance will be deployed"
}

variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be deployed"
}

variable "security_group_ids" {
  description = "List of security group IDs to associate with the EC2 instance"
  type        = list(string)
}

variable "user_data" {
  description = "User data to configure the instance on launch"
  type        = string
  default     = ""
}