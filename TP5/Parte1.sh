#!/bin/bash

# Generar un número aleatorio entre 1 y 100
num_aleatorio=$(( RANDOM % 100 + 1 ))

echo "Intenta adivinar un numero aleatorio entre el 1 y el 100"

while true; do
  read -p "Ingresa tu número: " num_usuario
 
  if (( num_usuario == num_aleatorio )); then
    echo "¡Felicidades! adivinaste el numero."
    break
  elif (( num_usuario > num_aleatorio )); then
    echo "Intenta con un numero mas bajo."
  else
    echo "Intenta con un numero mas alto."
  fi
done
