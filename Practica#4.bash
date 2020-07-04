#! /bin/bash

# <---  FUNCTIONS  --->
createUser() {
    echo "  ALTA DE USUARIOS"
    echo -n "Introduzca nombre: "
    read name
    echo -n "Introduzca contraseña: "
    read pass

    useradd $name
    passwd $pass

    read pause
}
# <---    MAIN     --->
option=0
while [ $option != 6 ]; do 
    echo "[1] Alta Usuario con contraseña"
    echo "[2] Baja Usuario"
    echo "[3] Alta de Grupo"
    echo "[4] Baja de Grupo"
    echo "[5] Modificación Usuario"
    echo "[6] Salir"
    echo -n "Opción: "
    read option

    clear
    case $option in
        1) createUser;;
        2) ;;
        3) ;;
        4) ;;
        5) ;;
        6) ;;
        *) echo 'Opción invalida';;
    esac
    clear
    
done