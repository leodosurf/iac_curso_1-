module "aws_prod" {
    source = "../../infra"
    instancia = "t3.micro"
    regiao_aws = "us-east-1"
    chave = "IAC-Prod"
}

output "IP" {
    value = module.aws_prod.IP_Publico
}