#!/bin/bash

departamentos=$(cat departamentos.csv | sed 1d)
usuarios=$(cat usuarios.csv | sed 1d)

while read linea; do
        nombre=$(echo $linea | cut -d ',' -f1)
        descripcion=$(echo $linea | cut -d ',' -f2)
        sudo groupadd "$nombre"
done <<< "$departamentos"

while read -r linea; do
        login=$(echo $linea | cut -d ',' -f1)
        password=$(echo $linea | cut -d ',' -f2)
        nombre=$(echo $linea | cut -d ',' -f3)
        grupo_departamento=$(echo $linea | cut -d ',' -f4)
        descripcion=$(echo $linea | cut -d ',' -f5)
        sudo useradd -m -l "$login" -p $(openssl passwd -1 "$password") -c "$no>
done <<< "$usuarios"
