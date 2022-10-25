terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0d593311db5abb72b"
  instance_type = "t2.micro"

  key_name = "testeiac"

  tags = {
    Name = "Instancia Teste"
  }
}
