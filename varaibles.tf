variable "bucket_name" {
  description = "Nombre base del bucket S3"
  type        = string
  default     = "mi-bucket-iac-demo"

  validation {
    condition     = length(var.bucket_name) > 3 && length(var.bucket_name) < 50
    error_message = "El nombre del bucket debe tener entre 3 y 50 caracteres."
  }
}

variable "region" {
  description = "Región de AWS donde crear los recursos"
  type        = string
  default     = "us-east-1"

  validation {
    condition = contains([
      "us-east-1", "us-west-1", "us-west-2",
      "eu-west-1", "eu-central-1", "ap-southeast-1"
    ], var.region)
    error_message = "Región no válida. Usa una región AWS válida."
  }
}

variable "environment" {
  description = "Ambiente de despliegue"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment debe ser: dev, staging, o prod."
  }
}
