# Data sources para parâmetros SSM
data "aws_ssm_parameter" "vpc_id" {
  name = "/platformengineering/vpc/id"
}
data "aws_ssm_parameter" "public_subnet_1a" {
  name = "/platformengineering/vpc/public-subnet-1a"
}

data "aws_ssm_parameter" "public_subnet_1b" {
  name = "/platformengineering/vpc/public-subnet-1b"
}

data "aws_ssm_parameter" "public_subnet_1c" {
  name = "/platformengineering/vpc/public-subnet-1c"
}

data "aws_ssm_parameter" "private_subnet_1a" {
  name = "/platformengineering/vpc/private-subnet-1a"
}

data "aws_ssm_parameter" "private_subnet_1b" {
  name = "/platformengineering/vpc/private-subnet-1b"
}
data "aws_ssm_parameter" "private_subnet_1c" {
  name = "/platformengineering/vpc/private-subnet-1c"
}
