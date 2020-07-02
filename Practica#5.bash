#! /bin/bash

# <!--- FUNCTIONS --->
countWithoutSpaces () {
    echo -n "Introduzca una expresion: "
    read expresion
    wordsNumber=$(echo -n $expresion | wc -w)
    echo -n "Caracteres: " `expr ${#expresion} - $wordsNumber + 1`
    read pause
}

countVowels () {
    echo -n "Introduzca una expresion: "
    read expresion
    vowels=$(echo $expresion | sed "s/[^aeiou]//g")
    echo "Numero de vocales: " ${#vowels}
    read pause
}

countWithSpaces () {
    echo -n "Introduzca una expresion: "
    read expresion
    echo -n "Caracteres: " ${#expresion}
    read pause
}

replaceSpaces () {
    echo -n "Introduzca una expresion: "
    read expresion
    echo -n "Salida: "
    echo $expresion | sed -e 's/ /_/g'
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
        3) countVowels;;
        4) ;;
        5) ;;
        6) replaceSpaces;;
        7) break;;
        *) echo "Option No valited" ;;
    esac
    clear 
done