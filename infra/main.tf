resource "aws_instance" "app_server" {
  ami           = "ami-01b14b7ad41e17ba4"
  instance_type = var.instancia
  key_name = var.chave
  tags = {
    Name = "Terraform Ansible Python"
  }
}

resource "aws_key_pair" "chaveSSH" {
  key_name = var.chave
  public_key = file("${var.chave}.pub")
}

output "IP_Publico" { 
  value = aws_instance.app_server.public_ip
}

