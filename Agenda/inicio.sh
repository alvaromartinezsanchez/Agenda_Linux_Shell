#!/bin/bash
clear
echo " _____________________________________"
echo "|             -.AGENDA.-              |"
echo "|_____________________________________|"
echo "|                                     |"
echo "|  [1] Visualizar todos los contactos |"
echo "|  [2] Nuevo contacto                 |"
echo "|  [3] Buscar contacto                |"
echo "|  [4] Eliminar contacto              |"
echo "|  [5] Avisar cumpleaños              |"
echo "|  [6] Salir                          |"
echo "|                                     |"
echo "|  Elige una opcion y pulsa intro:    |"
echo "|                                     |"
echo "|_____________________________________|"
read opcion

case $opcion in
	1) ./verContactos.sh;;
	2) ./nuevoContacto.sh;;
	3) ./buscarContacto.sh;;
	4) ./eliminarContacto.sh;;
	5) ./verCumpleaños.sh;;
	6) exit;;
	*) echo "La opcion elegida no es valida";;
esac

