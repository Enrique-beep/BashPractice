#! /bin/bash

# <!--- FUNCTIONS --->

# <!---   MAIN    --->
option=0
while [ $option != 7 ]; do
    echo "[1] Numero de caracteres de una palabra."
    echo "[2] Imprime la longitud de una palabra."
    echo "[3] Imprime cuantas vocales hay en una palabra."
    echo "[4] Convertir Mayúsculas a Minúsculas."
    echo "[5] Convertir Minúsculas a Mayúsculas."
    echo "[6] Cambiar los espacios de una oración por '_'"
    echo "[7] Salir"
    read option

    clear
    case $option in 
        1) ;;
        2) ;;
        3) ;;
        4) ;;
        5) ;;
        6) ;;
        7) break;;
        *) echo "Option No valited" ;;
    esac
    clear 
done