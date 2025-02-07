variable "instance_type" {
  description = "Tipo da instância EC2"
  default     = "t2.micro"
}

variable "region" {
  description = "Região da AWS"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR da VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR da sub-rede pública"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR da sub-rede privada"
  default     = "10.0.2.0/24"
}

variable "db_instance_class" {
  description = "Classe da instância do RDS"
  default     = "db.t2.micro"
}

variable "db_name" {
  description = "Nome do banco de dados"
  default     = "mydatabase"
}

variable "db_username" {
  description = "Nome de usuário do banco de dados"
  default     = "admin"
}

variable "db_password" {
  description = "Senha do banco de dados"
  default     = "password123"
}

variable "s3_bucket_name" {
  description = "Nome do bucket S3"
  default     = "my-prod-bucket"
}

variable "load_balancer_name" {
  description = "Nome do Load Balancer"
  default     = "my-prod-load-balancer"
}