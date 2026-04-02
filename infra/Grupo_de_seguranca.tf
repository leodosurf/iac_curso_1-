resource "aws_security_group" "acesso_geral" {
    name = "acesso_geral_prod"
    description = "acesso geral"
    ingress{
        cidr_blocks = ["191.181.58.215/32"] # IP da Claro no dia desse treinamento
        #ipv6_cidr_blocks = ["::/0"]
        from_port = 0
        to_port = 0
        protocol = "all"
    }
    egress{
        cidr_blocks = ["0.0.0.0/0"] # IP da Claro no dia desse treinamento
        ipv6_cidr_blocks = ["::/0"]
        from_port = 0
        to_port = 0
        protocol = "all"
    }
}
