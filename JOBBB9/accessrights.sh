#!/bin/bash

# Nom du fichier CSV contenant les informations des utilisateurs
CSV_FILE="moustapha.csv"

# Vérifier si le fichier CSV existe
if [ -f "$CSV_FILE" ]; then
  # Lire le fichier CSV ligne par ligne
  while IFS=',' read -r sall moustapha admin; do
    # Vérifier si l'utilisateur existe déjà
    if id "$sall" &>/dev/null; then
      echo "L'utilisateur $sall existe déjà."
    else
      # Créer l'utilisateur avec le nom, le prénom et les autorisations spécifiées
      useradd -m -c "$prenom $sall" "$sall"
      echo "L'utilisateur $sall a été créé."
    fi
  done < "$CSV_FILE"
else
  echo "Le fichier CSV $CSV_FILE n'existe pas."
fi

