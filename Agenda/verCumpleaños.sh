#!/bin/bash
#primero damos valor a las variables con la fecha actual
dia=$( date +%d )
mes=$( date +%m )
#Despues buscamos en contactos filtrando por el mismo dia mes y año y lo volcamos al archivo cumpleaños.txt para luego acceder a el y darle formato al mostrarlo
cat contactos.txt |grep ":"$dia":"$mes":"$ano > cumpleanos.txt
cont=$?
#El $? se utiliza para ver si la ultima operacion realizada a terminado bien 0=bien 1=mal
#si la fecha de hoy no coincide con ninguna de la lista contactos.txt lo indicamos
if [ $cont -ne 0 ]
then
echo "No hay ningun cumpleaños hoy..!!!"
fi
#si la fecha coincide mostramos los datos del usuario almacenados en cumpleaños.txt con el formato de verContacto
if [ $cont -eq 0 ]
then
echo "Es el cumpleaños de ..."
cat cumpleanos.txt | cut -d: -f1,2,3,4,5 | sed "s/\:/ /" | sed "s/\:/ /" | sed "s/\:/-/" | sed "s/\:/-/"
fi
echo "pulsa intro para continuar"
read pausa
./inicio.sh
