#!/bin/bash
#cont= variable utilizada para pasar de un bucle a otro
cont=0;
#mientras introduzcamos un nombre que este en la lista se repite el proceso de introducir nombre
while [ $cont -eq 0 ]
do
	echo "Introduce el nombre"
	read nombre
	#buscamos el nombre en la lista
	cat contactos.txt |grep -w $nombre > /dev/null 2> /dev/null
	#si esta en la lista el resultado de la operacion sera 0 si no esta sera 1
	cont=$?;
	if [ $cont -eq 0 ]
		then
		echo "El nombre de Usuario ya existe"
	fi
done
#mientras el valor introducido no sea numerico se repite el proceso
while [ $cont -ne 0 ]
do
	echo "Introduce el telefono"
	read tlf
	#con esto sabemos si el valor introducido es numerico
	expr $tlf + 1 > /dev/null 2> /dev/null
	cont=$?;
	if [ $cont -ne 0 ]
		then
    		echo  "el telefono tiene que se un dato numerico.."
	fi
done
#mientras lel dia no sea un valor numerico entre 0 y 31
echo "Fecha de nacimiento: "
while [ $cont -eq 0 ]
do
	echo "Introduce Dia"
	read dia
	expr $dia + 1 > /dev/null 2> /dev/null
	if [ $? -eq 0 -a $dia -gt 0 -a $dia -lt 32 ]> /dev/null 2> /dev/null
	then
    		cont=1;
	else
		echo "el dia debe ser un numero valido del 1 al 31.."
	fi
done
#actualizamos contador
cont=0;
#mientras el mes no sea un valor numerico entre 0 y 12
while [ $cont -eq 0 ]
do
	echo "Introduce Mes"
	read mes
	expr $mes + 1 > /dev/null 2> /dev/null
	if [ $? -eq 0 -a $mes -gt 0 -a $mes -lt 12 ]> /dev/null 2> /dev/null
	then
    		cont=1;
	else
		echo "el mes debe ser un numero valido entre 1 y 12.."
	fi
done
#actualizamos contador
cont=0;
#mientras el año no sea un valor numerico entre 1900 y 2020
while [ $cont -eq 0 ]
do
	echo "Introduce año"
	read ano
	expr $ano + 1 > /dev/null 2> /dev/null
	if [ $? -eq 0 -a $ano -gt 1900 -a $ano -lt 2020 ]> /dev/null 2> /dev/null
	then
    		cont=1;
	else
		echo "el año debe ser un numero valido entre 1900 y 2020.."
	fi
done
#si ha cumplido los requisitos creara el usuario y lo añadira a contactos.txt
echo $nombre":"$tlf":"$dia":"$mes":"$ano >> contactos.txt
echo "...Contacto añadido con exito..!!!!"
echo "Pulsa intro para seguir"
read pausa
./inicio.sh

