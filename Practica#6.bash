#! /bin/bash

# <!--- FUNCTIONS --->
binaryToDecimal () {
    echo "  BINARIO -> DECIMAL"
    echo -n "Introduzca binario: "
    read bin

    dec=0
    pow=1
    while [ $bin != 0 ]; do
        aux=$(expr $bin % 10)
        dec=$((dec + (aux*pow)))
        pow=$((pow*2))
        bin=$(expr $bin / 10)
    done
    echo "Decimal: " $dec
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
    read hex

	#Begin
	len=$(echo -n $hex | wc -m)
	len=$((len-1))
	i=0
	power=$len
	while [ $i -le $len ];
	do
		if [ ${hex:i:1}=A ] || [ ${hex:i:1}=B ] || [ ${hex:i:1}=C ] || [ ${hex:i:1}=D ] | [ ${hex:i:1}=E ] || [ ${hex:i:1}=F ]; #Validating chars
		then
			case ${hex:i:1} in
					A) decimal=$((decimal+(10*(16**power))));;
					B) decimal=$((decimal+(11*(16**power))));;
					C) decimal=$((decimal+(12*(16**power))));;
					D) decimal=$((decimal+(13*(16**power))));;
					E) decimal=$((decimal+(14*(16**power))));;
					F) decimal=$((decimal+(15*(16**power))));;
			esac
			power=$((power-1))
			i=$((i+1))
			continue
		fi
		
		if [ ${hex:i:1} -gt 0 ] && [ ${hex:i:1} -lt 10 ];
		then
			num=${hex:i:1}
			decimal=$((decimal+(num*(16**power))))
		fi
		power=$((power-1))
		i=$((i+1))
	done
	echo $decimal
	decimal=0
	read pausa
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

decimalToOctal() {
    echo "  DECIMAL -> OCTAL"
    echo -n "Introduzca decimal: "
    read dec

    octal=""
    while [ $dec -ge 8 ]; do
        sobra=$(($dec % 8))
        octal=$sobra$octal
        dec=$(($dec / 8))
    done 
    octal=$dec$octal
    echo 'Octal: ' $octal
    read pause
}

decimalToHexa() {
    echo "  DECIMAL -> HEXADECIMAL"
    echo -n "Introduzca decimal: "
    read dec

    hex=""
    while [ $dec -ge 16 ]; do
        sobra=$(($dec % 16))

        if [ $sobra = 10 ]; then
            hex=A$hex
        elif [ $sobra = 11 ]; then
            hex=B$hex
        elif [ $sobra = 12 ]; then
            hex=C$hex
        elif [ $sobra = 13 ]; then
            hex=D$hex
        elif [ $sobra = 14 ]; then
            hex=E$hex
        elif [ $sobra = 15 ]; then
            hex=F$hex
        else
            hex=$sobra$hex
        fi

        dec=$(($dec / 16))
    done

    if [ $dec -gt 9 ]; then
		if [ $dec = 10 ]; then
			hex=A$hex
		elif [ $dec = 11 ]; then
			hex=B$hex
		elif [ $dec = 12 ]; then
			hex=C$hex
		elif [ $dec = 13 ]; then
			hex=D$hex
		elif [ $dec = 14 ]; then
		 	hex=E$hex
		elif [ $dec = 15 ]; then
			hex=F$hex
		fi
    else
        hex=$dec$hex
    fi
    echo 'Hexadecimal: ' $hex
    read pause
}

binaryToHexa() {
    echo "  BINARIO -> HEXADECIMAL"
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
    done

    hex=""
    while [ $dec -ge 16 ]; do
        sobra=$(($dec % 16))

        if [ $sobra = 10 ]; then
            hex=A$hex
        elif [ $sobra = 11 ]; then
            hex=B$hex
        elif [ $sobra = 12 ]; then
            hex=C$hex
        elif [ $sobra = 13 ]; then
            hex=D$hex
        elif [ $sobra = 14 ]; then
            hex=E$hex
        elif [ $sobra = 15 ]; then
            hex=F$hex
        else
            hex=$sobra$hex
        fi

        dec=$(($dec / 16))
    done

    if [ $dec -gt 9 ]; then
		if [ $dec = 10 ]; then
			hex=A$hex
		elif [ $dec = 11 ]; then
			hex=B$hex
		elif [ $dec = 12 ]; then
			hex=C$hex
		elif [ $dec = 13 ]; then
			hex=D$hex
		elif [ $dec = 14 ]; then
		 	hex=E$hex
		elif [ $dec = 15 ]; then
			hex=F$hex
		fi
    else
        hex=$dec$hex
    fi
    echo 'Hexadecimal: ' $hex
    read pause
}

hexaToBinary() {
    echo "  HEXADECIMAL --> BINARIO"
    echo -n "Introduzca hexadecimal: "
    read hex

    len=$(echo -n $hex | wc -m)
	len=$((len-1))
	i=0
	power=$len

    while [ $i -le $len ]; do
        if [ ${hex:i:1} = A ] || [ ${hex:i:1} = B ] || [ ${hex:i:1} = C ] || [ ${hex:i:1} = D ] | [ ${hex:i:1} = E ] || [ ${hex:i:1} = F ]; then

            case ${hex:i:1} in
				A) decimal=$((decimal+(10*(16**power))));;
				B) decimal=$((decimal+(11*(16**power))));;
				C) decimal=$((decimal+(12*(16**power))));;
				D) decimal=$((decimal+(13*(16**power))));;
				E) decimal=$((decimal+(14*(16**power))));;
				F) decimal=$((decimal+(15*(16**power))));;
            esac
            power=$((power-1))
			i=$((i+1))
			continue
        fi

        if [ ${hex:i:1} -gt 0 ] && [ ${hex:i:1} -lt 10 ];
		then
			num=${hex:i:1}
			decimal=$((decimal+(num*(16**power))))
		fi
		power=$((power-1))
		i=$((i+1))
    done

    binary=0
	pow=1
	while [ $decimal -ne 0 ]
	do
		ex=$(expr $decimal % 2)
		binary=$((binary+(ex*pow)))
		decimal=$(expr $decimal / 2)
		pow=$((pow*10))
	done
	echo $binary	
    read pause
}

# <!---   MAIN    --->
option=0
while [ $option != 9 ]; do
    echo "[1] Convertir un numero Binario a Decimal"      # LISTO
    echo "[2] Convertir un numero Octal a Decimal"        # LISTO
    echo "[3] Convertir un numero Hexadecimal a Decimal"  # PENDIENTE
    echo "[4] Convertir un numero Decimal a Binario"      # LISTO
    echo "[5] Convertir un numero Decimal a Octal"        # LISTO  
    echo "[6] Convertir un numero Decimal a Hexadecimal"  # LISTO
    echo "[7] Convertir un numero Binario a Hexadecimal"  # LISTO
    echo "[8] Convertir un numero Hexadecimal a Binario"  # PENDIENTE
    echo "[9] Salir"
    echo -n "Opcion: "
    read option

    clear
    case $option in
        1) binaryToDecimal;;
        2) octaltoDecimal;;
        3) hexaToDecimal;;
        4) decimalToBinary;;
        5) decimalToOctal;;
        6) decimalToHexa;;
        7) binaryToHexa;;
        8) hexaToBinary;;
        9) break;;
        *) echo "Opcion no valida"
    esac
    clear
done