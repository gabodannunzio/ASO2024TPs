#!/bin/bash

echo "Ingrese un nombre para ver su genero"
read nombre
genero=$(curl -s https://api.genderize.io/?name=$nombre | jq -r ".gender")
if [[ $genero == "male" ]];
 then
    echo "Hombre" 
  else  
    echo "Mujer"
fi
