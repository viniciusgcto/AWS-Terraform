provider "aws" {
    region = var.aws_region
}

#Centralizar o arquivo de controle de estado do Terraform em um Bucket na S3
terraform {
  backend "s3" {
      bucket = "terraform-state-igti-vini"
      key = "state/igti/edc/mod1/terraform.tfstate"
      region = "us-east-1"
  }
}