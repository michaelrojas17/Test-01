#! /bin/bash

#
# Sube un fichero a git, cuyo nombre es pasado por parametro. tambien solicita el comentario para el 'commit'

# Comprobamos que el parametro pasado ews un fichero
if [ -f $1 ];
then

#Añadimos el archivo
git add $1

echo "Comentario: "
read comentario


# Creamos el commit de los cambios
git commit -m "$comentario"


#Guardamos en el repositorio remoto
git push origin PruebaScript


else
echo "Este fichero no existe..."
fi


