# Pipeline IaC Demo

## Descripción

Proyecto de demostración de Pipeline CI/CD para Infraestructura como Código.

## Estructura

- `main.tf` - Configuración principal de Terraform
- `variables.tf` - Variables del proyecto
- `.github/workflows/pipeline.yml` - Pipeline de CI/CD

## Comandos básicos

```bash
# Inicializar Terraform
terraform init

# Validar configuración
terraform validate

# Ver plan de ejecución
terraform plan
```

### Paso 10: Inicializar repositorio Git

```cmd
# Inicializar Git
git init

# Agregar archivos
git add .

# Primer commit
git commit -m "Initial commit: Setup IaC pipeline"
```

### Paso 11: Verificar que todo está listo

```cmd
# Ver todos los archivos creados
dir /s /b
```

Deberías ver algo como:
