#!/bin/bash
FILE=$1
if [ -f $FILE ]; then
   if [ -x $FILE ]; then
      echo el archivo $FILE existe y se puede ejecutar
      ls $FILE -la
   else
      echo el archivo $FILE existe, pero no se puede ejecutar
      ls $FILE -la
      echo aplicando permisos
      chmod u+x,g+x $FILE
      echo el archivo $FILE ya es ejecutable.
      ls $FILE -la
   fi   
else
   echo archivo no encontrado
fi
