#!/bin/bash

usuarios=$(cat usuarios.csv | sed 1d)

while read linea; do
        login=$(echo $linea | cut -d ',' -f1)
        sudo chage -d 0 "$login"
done <<< "$usuarios"
