output "rds_endpoint" {
  value = aws_db_instance.my_db.endpoint
}

output "rds_instance_id" {
  value = aws_db_instance.my_db.id
}

output "rds_instance_arn" {
  value = aws_db_instance.my_db.arn
}

output "rds_instance_username" {
  value = aws_db_instance.my_db.username
}