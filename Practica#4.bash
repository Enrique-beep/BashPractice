#! /bin/bash

# <---  FUNCTIONS  --->
createUser() {
    echo "  ALTA DE USUARIO"
    echo -n "Introduzca nombre: "
    read name
   
    useradd $name
		passwd $name
}

deleteUser() {
		echo "  BAJA DE USUARIO"
		echo -n "Usuario a eliminar: "
		read name
		
		userdel $name
		cd '/home'
		rm -r $name
		
}

createGroup() {
		echo "  ALTA DE GRUPO"
    echo -n "Introduzca nombre de grupo: "
    read groupName
    
   	groupadd $groupName
}

deleteGroup() {
		echo "  BAJA DE GRUPO"
    echo -n "Introduzca nombre de grupo: "
    read groupName
    
    groupdel $groupName
}

updateUserName() {
		echo "	MODIFICAR NOMBRE DE USUARIO"
		echo -n 'Introduzca nombre de usuario: '
		read name
		echo -n 'Introduzca nuevo nombre de usuario: '
		read newName
		
		usermod --login "$newName" "$name"
}

updateUserPass() {
		echo "	MODIFICAR PASSWORD DE USUARIO"
		echo -n 'Introduzca nombre de usuario: '
		read $name
		passwd $name
}

addUserToGroup() {
		echo "	AGREGAR USUARIO A GRUPO"
		echo -n 'Introduzca nombre de usuario: '
		read name
		echo -n 'Introduzca Grupo: '
		read group
		
		usermod -G $group $name
}

subMenuModify() {
		option2=0
		while [ $option2 != 4 ]; do
				echo '[1] Modificar el nombre de un usuario'
				echo '[2] Modificar el password de un usuario'
				echo '[3] Meter en un grupo a un usuario'
				echo '[4] Salir'
				echo -n 'Opcion: '
				read option2
				clear
				case $option2 in
						1) updateUserName;;
						2) updateUserPass;;
						3) addUserToGroup;;
						4) break;;
						*) echo 'Opcion invalida';;
				esac
				clear
		done
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
        2) deleteUser;;
        3) createGroup;;
        4) deleteGroup;;
        5) subMenuModify;;
        6) break;;
        *) echo 'Opción invalida';;
    esac
    clear
    
done
