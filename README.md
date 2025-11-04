# 🚀 Pipeline IaC - Infraestructura como Código

## 📋 Descripción

Proyecto de demostración de Pipeline CI/CD para Infraestructura como Código usando Terraform, GitHub Actions y principios GitOps.

## 🏗️ Diagrama del Pipeline

```
┌─────────────────────────────────────────────────────────────┐
│                    🚀 PIPELINE CI/CD                        │
└─────────────────────────────────────────────────────────────┘

📥 CODIGO PUSH
       │
       ▼
┌─────────────┐   ┌─────────────┐   ┌─────────────┐   ┌─────────────┐
│🔍 VALIDATE  │──▶│🛡️ SECURITY │──▶│📊 PLAN      │──▶│🚀 DEPLOY    │
│             │   │             │   │             │   │             │
│terraform    │   │checkov      │   │terraform    │   │terraform    │
│validate     │   │scan         │   │plan         │   │apply        │
│tflint       │   │             │   │             │   │+ approval   │
└─────────────┘   └─────────────┘   └─────────────┘   └─────────────┘
```

## 📁 Estructura del Proyecto

```
proyecto-iac-pipeline/
├── main.tf                    # Código Terraform principal
├── variables.tf               # Variables del proyecto
├── terraform.tfvars.example   # Ejemplo de variables
├── .tflint.hcl               # Configuración de linting
├── .gitignore                # Archivos a ignorar
├── test-local.bat            # Script de prueba local
├── simulacion-pipeline.bat   # Simulador del pipeline
├── INFORME_GRUPAL.md         # Template del informe
├── README.md                 # Esta documentación
└── .github/
    └── workflows/
        └── pipeline.yml      # Pipeline CI/CD
```

## 🚀 Comandos Rápidos

### Probar Localmente

```bash
# Ejecutar pruebas locales
test-local.bat

# Simular pipeline completo
simulacion-pipeline.bat

# Simular con deploy
simulacion-pipeline.bat --deploy
```

### Comandos Terraform

```bash
# Inicializar
terraform init

# Validar
terraform validate

# Planificar
terraform plan

# Aplicar (solo si tienes AWS configurado)
terraform apply
```

## 🛡️ Características de Seguridad

- ✅ Bucket S3 con encriptación
- ✅ Versionado habilitado
- ✅ Acceso público bloqueado
- ✅ Validación con Checkov
- ✅ Linting con TFLint

## 🎯 Para la Actividad Grupal

1. **Clonar/Crear** este proyecto
2. **Ejecutar** simulacion-pipeline.bat
3. **Modificar** variables en terraform.tfvars.example
4. **Simular** cambio con el validador del equipo
5. **Completar** INFORME_GRUPAL.md

## 👥 Roles del Equipo

- **Desarrollador:** Crea cambios en código
- **Validador:** Aprueba Pull Requests
- **DevOps:** Configura pipeline
- **Tester:** Ejecuta simulaciones

---

🤖 **Generado por IA** - Proyecto educativo GitOps
