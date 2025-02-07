resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "${var.environment}-vpc"
  }
}

resource "aws_subnet" "public" {
  count = var.public_subnet_count
  vpc_id = aws_vpc.main.id
  cidr_block = element(var.public_subnet_cidrs, count.index)
  availability_zone = element(var.availability_zones, count.index)
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.environment}-public-subnet-${count.index + 1}"
  }
}

resource "aws_subnet" "private" {
  count = var.private_subnet_count
  vpc_id = aws_vpc.main.id
  cidr_block = element(var.private_subnet_cidrs, count.index)
  availability_zone = element(var.availability_zones, count.index)
  tags = {
    Name = "${var.environment}-private-subnet-${count.index + 1}"
  }
}

module "ec2" {
  source = "../modules/ec2"
  environment = var.environment
  vpc_id = aws_vpc.main.id
  subnet_id = aws_subnet.private[*].id
}

module "rds" {
  source = "../modules/rds"
  environment = var.environment
  vpc_id = aws_vpc.main.id
  subnet_ids = aws_subnet.private[*].id
}

module "s3" {
  source = "../modules/s3"
  environment = var.environment
}

module "load_balancer" {
  source = "../modules/load_balancer"
  environment = var.environment
  vpc_id = aws_vpc.main.id
  subnet_ids = aws_subnet.public[*].id
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "ec2_instance_ids" {
  value = module.ec2.instance_ids
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