@echo off
echo 🚀 CONFIGURANDO PROYECTO IaC
echo ═══════════════════════════════

echo.
echo [1/5] Verificando Git...
git --version
if errorlevel 1 (
    echo ❌ Git no encontrado. Instala Git primero.
    pause
    exit /b 1
)

echo.
echo [2/5] Inicializando repositorio...
git init
git add .
git commit -m "🎉 Initial commit: Pipeline IaC setup"

echo.
echo [3/5] Creando ramas...
git branch -M main
git checkout -b feature/validaciones

echo.
echo [4/5] Configurando ejemplo de variables...
copy terraform.tfvars.example terraform.tfvars.local

echo.
echo [5/5] ✅ Proyecto configurado!
echo.
echo 📋 PROXIMOS PASOS:
echo 1. Ejecuta: simulacion-pipeline.bat
echo 2. Modifica terraform.tfvars.local
echo 3. Completa INFORME_GRUPAL.md
echo.
pause