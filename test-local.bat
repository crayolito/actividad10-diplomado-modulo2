@echo off
echo ========================================
echo PROBANDO PIPELINE LOCALMENTE
echo ========================================

echo.
echo [1/4] Inicializando Terraform...
terraform init

echo.
echo [2/4] Validando configuracion...
terraform validate

echo.
echo [3/4] Verificando formato...
terraform fmt -check

echo.
echo [4/4] Generando plan...
terraform plan

echo.
echo ========================================
echo PRUEBA COMPLETADA
echo ========================================
pause