#! /bin/bash

# <!--- FUNCTIONS --->
countWithoutSpaces () {
    echo -n "Introduzca una palabra: "
    read expresion
    wordsNumber=$(echo -n $expresion | wc -w)
    echo -n "Caracteres: " `expr ${#expresion} - $wordsNumber + 1`
    read pause
}

countWithSpaces () {
    echo -n "Introduzca una palabra: "
    read expresion
    echo -n "Caracteres: " ${#expresion}
    read pause
}

# <!---   MAIN    --->
option=0
while [ $option != 7 ]; do
    echo "[1] Imprime la longitud de una expresion sin espacios."
    echo "[2] Imprime la longitud de una expresion con espacios."
    echo "[3] Imprime cuantas vocales hay en una expresion."
    echo "[4] Convertir Mayúsculas a Minúsculas."
    echo "[5] Convertir Minúsculas a Mayúsculas."
    echo "[6] Cambiar los espacios de una expresion por '_'"
    echo "[7] Salir"
    echo -n "Opcion: "
    read option

    clear
    case $option in 
        1) countWithoutSpaces;;
        2) countWithSpaces;;
        3) ;;
        4) ;;
        5) ;;
        6) ;;
        7) break;;
        *) echo "Option No valited" ;;
    esac
    clear 
done