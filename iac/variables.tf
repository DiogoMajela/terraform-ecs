variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "Região AWS onde os recursos serão criado."
}

variable "project_name" {
  type        = string
  default     = "sorteador"
  description = "Nome do projeto para prefixar os recursos"
}

variable "container_port" {
  type        = number
  default     = 5000
  description = "Porta do container da aplicação"
}

variable "task_cpu" {
  type        = number
  default     = 256
  description = "CPU units para a task ECS (1024 = 1 vCPU)"
}

variable "task_memory" {
  type        = number
  default     = 512
  description = "Memória para a task ECS em MB"
}

variable "service_desired_count" {
  type        = number
  default     = 1
  description = "Número desejado de instâncias do serviço ECS"
}

variable "service_min_count" {
  type        = number
  default     = 1
  description = "Número minimo de instâncias do serviço ECS"
}

variable "service_max_count" {
  type        = number
  default     = 2
  description = "Número máximo de instâncias do serviço ECS"
}

variable "certificate_arn" {
  description = "ARN do certificado SSL para o ALB"
  type        = string
  default     = "arn:aws:acm:us-east-1:760337697893:certificate/d7fc9463-792e-4f15-9d0d-0dfab0789c02"
}

variable "common_tags" {
  type = map(string)
  default = {
    Project     = "platformengineering"
    Environment = "production"
    ManagedBy   = "terraform"
    Owner       = "Diogo"
  }
  description = "Tags comuns para todos os recursos"
}

locals {
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  public_subnet_ids = [
    data.aws_ssm_parameter.public_subnet_1a.value,
    data.aws_ssm_parameter.public_subnet_1b.value,
    data.aws_ssm_parameter.public_subnet_1c.value
  ]
  private_subnet_ids = [
    data.aws_ssm_parameter.private_subnet_1a.value,
    data.aws_ssm_parameter.private_subnet_1b.value,
    data.aws_ssm_parameter.private_subnet_1c.value
  ]
}