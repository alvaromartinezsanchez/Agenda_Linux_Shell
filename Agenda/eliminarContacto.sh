#!/bin/bash
#cont= variable utilizada para ejecutar el borrado si el usuario esta registrado en el sistema
cont=0;
#misma operacion que para ver contactos para que muestre los contactos de la agenda y elegir el que vamos a eliminar
cat contactos.txt | cut -d: -f1,2,3,4,5 | sed "s/\:/  /" | sed "s/\:/  /" | sed "s/\:/-/" | sed "s/\:/-/"
echo "Introduce el nombre del contacto a eliminar:"
read nombre
#comprobamos si el nombre elegido por el usuario esta en el sistema
cat contactos.txt |grep $nombre
if [ $? -ne 0 ]
then
    echo "El contacto buscado no esta en el sistema";
    #si el contacto no esta el el sistema aumentamos el contador para que no ejecute el proceso de borrado
    cont=1;
fi
#Borra con sed la liniea que contiene el nombre del contacto con la opcion "d" y lo vuelca en "contactos2"
sed '/'$nombre'/d' contactos.txt > contactos2.txt
if [ $cont -eq 0 ]
then
echo "Desea eliminar de forma permanente S/N"
read respuesta
if [ $respuesta == "S" -o $respuesta == "s" ]
then
#si confirmamos el borrado volcamos los datos del archivo temporal contactos2.txt(lista de usuarios con usuario borrado) en contactos.txt que es el archivo con los usuarios 
cat contactos2.txt > contactos.txt
echo " Contacto eliminado con exito..!"
fi
fi
echo "Pulsa intro para seguir"
read pausa
./inicio.sh
