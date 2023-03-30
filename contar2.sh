#!/bin/bash 

# número de líneas en cada archivo txt 
for archivo in *.txt; do
  lineas=$(wc -l < "$archivo")
  echo "$archivo tiene $lineas líneas."
done
