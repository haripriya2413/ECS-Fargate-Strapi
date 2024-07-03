output "alb_dns_name" {
  description = "The DNS name of the ALB"
  value       = aws_lb.strapiLB.dns_name
}

output "ecs_service_name" {
  description = "The name of the ECS service"
  value       = aws_ecs_service.nodeapp.name
}
