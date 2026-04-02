module "aws_dev" {
    source = "../../infra"
    instancia = "t3.micro"
    regiao_aws = "us-east-1"
    chave = "IAC-Dev"
}

output "IP" {
    value = module.aws_dev.IP_Publico
}