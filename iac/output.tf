output "ecr_repository_url" {
  description = "URL do repositório do ECR"
  value       = aws_ecr_repository.app.repository_url
}

#output "alb_dns_name" {
#  description = "DNS name do Application Load Balance"
#  value       = aws_lb_.app.dns_name
#}

output "ecs_cluster_name" {
  description = "Nome do cluster ECS"
  value       = aws_ecs_cluster.main.name
}

output "ecs_service_name" {
  description = "Nome do serviço do ECS"
  value       = aws_ecs_service.app.name
}