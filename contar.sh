#!/bin/bash

# Comprobar si se ha especificado al menos un archivo como argumento
if [ $# -eq 0 ]; then
  echo "Error: Especifique al menos un archivo como argumento."
  exit 1
fi

# Contar el número de líneas en cada archivo especificado como argumento
for archivo in "$@"; do
  # Comprobar si el archivo existe
  if [ ! -f "$archivo" ]; then
    echo "Error: El archivo \"$archivo\" no existe."
    continue
  fi
  # Contar el número de líneas en el archivo
  lineas=$(wc -l < "$archivo")
  # Mostrar el resultado
  echo "$archivo tiene $lineas líneas."
done