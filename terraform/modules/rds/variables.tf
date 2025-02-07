variable "db_instance_class" {
  description = "The instance type of the RDS database."
  type        = string
  default     = "db.t2.micro"
}

variable "db_name" {
  description = "The name of the database to create."
  type        = string
  default     = "mydatabase"
}

variable "db_username" {
  description = "The username for the database."
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "The password for the database."
  type        = string
  sensitive   = true
}

variable "db_allocated_storage" {
  description = "The allocated storage for the database (in GB)."
  type        = number
  default     = 20
}

variable "db_engine" {
  description = "The database engine to use."
  type        = string
  default     = "mysql"
}

variable "db_engine_version" {
  description = "The version of the database engine."
  type        = string
  default     = "8.0"
}

variable "vpc_id" {
  description = "The VPC ID where the RDS instance will be created."
  type        = string
}

variable "subnet_ids" {
  description = "The subnet IDs where the RDS instance will be created."
  type        = list(string)
}

variable "db_security_group_ids" {
  description = "The security group IDs associated with the RDS instance."
  type        = list(string)
}