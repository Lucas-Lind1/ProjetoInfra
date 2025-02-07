output "load_balancer_dns" {
  value = aws_lb.example.dns_name
}

output "load_balancer_arn" {
  value = aws_lb.example.arn
}