#! /bin/bash

# <!--- FUNCTIONS --->
countWithoutSpaces () {
    echo "  CONTAR SIN ESPACIOS"
    echo -n "Introduzca una expresion: "
    read expresion
    wordsNumber=$(echo -n $expresion | wc -w)
    echo -n "Caracteres: " `expr ${#expresion} - $wordsNumber + 1`
    read pause
}

countVowels () {
    echo "  CONTAR VOCALES"
    echo -n "Introduzca una expresion: "
    read expresion
    vowels=$(echo $expresion | sed "s/[^aeiou]//g")
    echo "Numero de vocales: " ${#vowels}
    read pause
}

toLower () {
    echo "  CONVERTIR A MINUSCULAS"
    echo -n "Introduzca una expresion: "
    read expresion
    echo -n "Conversion: " $expresion | tr '[:upper:]' '[:lower:]'
    read pause
}

toUpper () {
    echo "  CONVERTIR A MAYUSCULAS"
    echo -n "Introduzca una expresion: "
    read expresion
    echo -n "Conversion: " $expresion | tr '[:lower:]' '[:upper:]'
    read pause
}

countWithSpaces () {
    echo "  CONTAR CON ESPACIOS"
    echo -n "Introduzca una expresion: "
    read expresion
    echo -n "Caracteres: " ${#expresion}
    read pause
}

replaceSpaces () {
    echo "  REMPLAZAR ESPACIOS"
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
        4) toLower;;
        5) toUpper;;
        6) replaceSpaces;;
        7) break;;
        *) echo "Opcion no valida" ;;
    esac
    clear 
done