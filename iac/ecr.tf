resource "aws_ecr_repository" "app" {
  name                 = "platformengineering/sorteador"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = var.common_tags

} 