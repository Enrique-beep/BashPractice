#! /bin/bash

# <!--- FUNCTIONS --->
binaryToDecimal () {
    echo "  BINARIO -> DECIMAL"
    echo -n "Introduzca binario: "
    read bin
    while [ $bin != 0 ]; do
        num=$bin
        dec=0
        pow=1
        while [ $bin != 0 ]; do
            aux=$(expr $bin % 10)
            dec=$((dec + (aux*pow)))
            pow=$((pow*2))
            bin=$(expr $bin / 10)
        done
        echo "Decimal: " $dec
    done
    read pause 
}
# <!---   MAIN    --->
option=0
while [ $option != 9 ]; do
    echo "[1] Convertir un numero Binario a Decimal"
    echo "[2] Convertir un numero Octal a Decimal"
    echo "[3] Convertir un numero Hexadecimal a Decimal"
    echo "[4] Convertir un numero Decimal a Binario"
    echo "[5] Convertir un numero Decimal a Octal"
    echo "[6] Convertir un numero Decimal a Hexadecimal"
    echo "[7] Convertir un numero Binario a Hexadecimal"
    echo "[8] Convertir un numero Hexadecimal a Binario"
    echo "[9] Salir"
    echo -n "Opcion: "
    read option

    clear
    case $option in
        1) binaryToDecimal;;
        2) ;;
        3) ;;
        4) ;;
        5) ;;
        6) ;;
        7) ;;
        8) ;;
        9) ;;
        *) echo "Opcion no valida"
    esac
    clear
done