#!/bin/bash
#mostramos el texto cortando las filas 1,2,3,4,5 por el delimitador ":" y entre la 1ª y 2ª fila delimitada por ":" , y 2ª y 3ª sustituimos los ":" por un espacio y entre la 3ª y 4ª y 4ª y 5ª filas que contiene la fecha sustituimos los ":" por un "-" para mostrar la fecha
cat contactos.txt | cut -d: -f1,2,3,4,5 | sed "s/\:/ /" | sed "s/\:/ /" | sed "s/\:/-/" | sed "s/\:/-/"
echo "Pulsa intro para seguir"
read pausa
./inicio.sh
