#!/bin/bash

usuarios=$(cat usuarios.csv | sed 1d)

while read linea; do
        login=$(echo $linea | cut -d ',' -f1)
        grupo_departamento=$(echo $linea | cut -d ',' -f5)
        grupo_cuenta=$(echo $linea | cut -d ',' -f6)
        sudo userdel "$login"
        sudo groupdel "$grupo_departamento"
done <<< "$usuarios"
