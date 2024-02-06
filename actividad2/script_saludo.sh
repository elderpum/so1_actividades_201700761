#!/bin/bash

read -p "Ingresa tu nombre de usuario de GitHub: " GITHUB_USER

API_URL="https://api.github.com/users/$GITHUB_USER"
JSON_RESPONSE=$(curl -s "$API_URL")

GITHUB_USER=$(echo "$JSON_RESPONSE" | jq -r '.login')
Id_user=$(echo "$JSON_RESPONSE" | jq -r '.id')
creado_en=$(echo "$JSON_RESPONSE" | jq -r '.created_at')

echo "Hola $GITHUB_USER. User ID: $Id_user. Cuenta fue creada el: $creado_en."

LOG_DIR="/tmp/$(date +%Y%m%d)"
LOG_FILE="$LOG_DIR/saludos.log"

mkdir -p "$LOG_DIR"
echo "Hola $GITHUB_USER. User ID: $Id_user. Cuenta fue creada el: $creado_en." >> "$LOG_FILE"

echo "Se ha creado el log en: $LOG_FILE"