#!/bin/sh
set -e

BLOCKED="${LAUDO_BLOCKED:-false}"

if [ "$BLOCKED" = "true" ]; then
  echo "[laudo] Modo BLOQUEADO — servindo access-denied.html"
  cp /usr/share/nginx/html/access-denied.html /usr/share/nginx/html/relatorio-clinico.html
else
  echo "[laudo] Modo ATIVO — servindo relatorio-clinico.html original"
  cp /usr/share/nginx/html/relatorio-clinico-original.html /usr/share/nginx/html/relatorio-clinico.html
fi

exec nginx -g 'daemon off;'
