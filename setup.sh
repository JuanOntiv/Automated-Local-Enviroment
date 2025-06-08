#!/bin/bash

echo "Iniciando entorno DevOps Django + React"

#Verificar si Docker está instalado
if ! command -v docker &> /dev/null; then
    echo "❌ Docker no esta instalado. Instalalo Primero."
    exit 1
fi

#Clonar el proyecto si no existe
if [ ! -d "./backend" ]; then
    echo "Clonando backend Django..."
    django-admin startproject backend ./backend
fi

if [ ! -d "./frontend" ]; then
    echo "Clonando frontend React..."
    npm create vite@latest frontend -- --template react ./backend
fi

# Levantar servicios
echo "🔧 Construyendo contenedores..."
docker compose up --build