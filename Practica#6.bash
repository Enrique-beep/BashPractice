#! /bin/bash

# <!--- FUNCTIONS --->
binaryToDecimal () {
    echo "  BINARIO -> DECIMAL"
    echo -n "Introduzca binario: "
    read bin
    while [ $bin != 0 ]; do
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

octaltoDecimal () {
    echo "  OCTAL -> DECIMAL"
    echo -n "Introduzca octal: "
    read octal
    dec=0
    base=1
    temp=$octal
    while [ $temp != 0 ]; do
        laux=$(expr $temp % 10)
        temp=$(expr $temp / 10)
        dec=$((dec + (laux*base)))
        base=$((base*8))
    done
    echo "Decimal: " $dec
    read pause 
}

hexaToDecimal() {
    echo "  HEXADECIMAL -> DECIMAL"
    echo -n "Introduzca hexadecimal: "
    read hexa

    read pause
}

decimalToBinary() {
    echo "  DECIMAL -> BINARIO"
    echo -n "Introduzca decimal: "
    read dec

    i=1
    bin=""
    while [ $dec -ge 2 ]; do
        sobra=$(($dec % 2))
        bin=$sobra$bin
        dec=`expr $dec / 2` 
    done
    bin=$dec$bin
    echo 'Binario: ' "$bin"
    read pause
}

# <!---   MAIN    --->
option=0
while [ $option != 9 ]; do
    echo "[1] Convertir un numero Binario a Decimal"
    echo "[2] Convertir un numero Octal a Decimal"
    echo "[3] Convertir un numero Hexadecimal a Decimal"  # PENDIENTE
    echo "[4] Convertir un numero Decimal a Binario"      # PENDIENTE
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
        2) octaltoDecimal;;
        3) hexaToDecimal;;
        4) decimalToBinary;;
        5) ;;
        6) ;;
        7) ;;
        8) ;;
        9) ;;
        *) echo "Opcion no valida"
    esac
    clear
done