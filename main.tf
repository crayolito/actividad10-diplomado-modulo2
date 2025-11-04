# Configuración básica de AWS
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# Recurso: Bucket S3
resource "aws_s3_bucket" "mi_bucket" {
  bucket = "mi-bucket-iac-demo-${random_string.suffix.result}"
}

# String aleatorio para hacer único el bucket
resource "random_string" "suffix" {
  length  = 8
  special = false
  upper   = false
}
