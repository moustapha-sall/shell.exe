#!/bin/bash

# Vérifier s'il y a exactement un argument passé
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <argument>"
    exit 1
fi

# Récupérer l'argument passé
argument="$1"

# Vérifier la valeur de l'argument et afficher le message approprié
if [ "$argument" = "Hello" ]; then
    echo "Bonjour, je suis un script !"
elif [ "$argument" = "Bye" ]; then
    echo "Au revoir et bonne journée !"
else
    echo "Argument invalide. Utilisez 'Hello' ou 'Bye'."
    exit 1
fi

