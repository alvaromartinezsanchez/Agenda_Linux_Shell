#!/bin/bash
cont=0;
echo "Introduce el nombre del contacto a buscar:"
read nombre
#grep " -w " sirve para especificar que filtre las palabras que sean iguales a lo introducido(si contiene parte del nombre no lo coge debe contenerlo entero)
#cut -d cortamos especificando delimitador en este caso las filas 1,2,3,4,5
#sed s/ sustitulle "\:"(los dos puntos) por "/ /"(un espacio) ..cada sed corresponde a una fila..!!
cat contactos.txt |grep -w $nombre | cut -d: -f1,2,3,4,5 | sed "s/\:/ /" | sed "s/\:/ /" | sed "s/\:/-/" | sed "s/\:/-/"
cat contactos.txt |grep -w $nombre > /dev/null 2> /dev/null
cont=$?;
#si el contacto no esta en la agenda
if [ $cont -ne 0 ]
then
    echo "El contacto buscado no esta en el sistema";
fi
echo "Pulsa intro para seguir"
read pausa
./inicio.sh
