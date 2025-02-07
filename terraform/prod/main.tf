resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "prod-vpc"
  }
}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true
  tags = {
    Name = "prod-public-subnet"
  }
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr
  availability_zone = var.availability_zone
  tags = {
    Name = "prod-private-subnet"
  }
}

module "ec2" {
  source          = "../modules/ec2"
  vpc_id         = aws_vpc.main.id
  subnet_id      = aws_subnet.private.id
  instance_type  = var.ec2_instance_type
  ami             = var.ec2_ami
}

module "rds" {
  source          = "../modules/rds"
  vpc_id         = aws_vpc.main.id
  subnet_ids      = [aws_subnet.private.id]
  db_instance_class = var.db_instance_class
  db_name         = var.db_name
  username        = var.db_username
  password        = var.db_password
}

module "s3" {
  source          = "../modules/s3"
  bucket_name     = var.s3_bucket_name
}

module "load_balancer" {
  source          = "../modules/load_balancer"
  vpc_id         = aws_vpc.main.id
  subnet_ids      = [aws_subnet.public.id]
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "rds_endpoint" {
  value = module.rds.endpoint
}

output "s3_bucket_name" {
  value = module.s3.bucket_name
}

output "load_balancer_dns" {
  value = module.load_balancer.dns_name
}