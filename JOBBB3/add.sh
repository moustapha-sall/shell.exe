#!/bin/bash

# Vérifier s'il y a exactement deux arguments passés
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <nombre1> <nombre2>"
    exit 1
fi

# Stocker les deux nombres dans des variables
nombre1="$1"
nombre2="$2"

# Vérifier si les arguments sont des nombres
if ! [[ "$nombre1" =~ ^[0-9]+$ ]] || ! [[ "$nombre2" =~ ^[0-9]+$ ]]; then
    echo "Les deux arguments doivent être des nombres entiers."
    exit 1
fi

# Effectuer l'addition
resultat=$((nombre1 + nombre2))

# Afficher le résultat
echo "Le résultat de l'addition de $nombre1 et $nombre2 est : $resultat"

