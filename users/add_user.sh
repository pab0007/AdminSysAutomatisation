#!/bin/bash

read -p "Nom de l'utilisateur à ajouter : " USERNAME

# Ajouter l'utilisateur
sudo useradd -m -s /bin/bash $USERNAME

if [ $? -eq 0 ]; then
    echo "Utilisateur $USERNAME ajouté avec succès."
else
    echo "Erreur lors de l'ajout de l'utilisateur."
fi
