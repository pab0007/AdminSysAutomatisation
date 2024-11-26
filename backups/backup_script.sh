#!/bin/bash

# Variables
SOURCE_DIR="/path/to/source"   # Répertoire à sauvegarder
BACKUP_DIR="/path/to/backup"   # Répertoire de destination
DATE=$(date +"%Y-%m-%d")       # Date actuelle
LOG_FILE="/path/to/logs/backup_$DATE.log"

# Création du dossier de sauvegarde
mkdir -p $BACKUP_DIR

# Sauvegarde avec tar
tar -czf $BACKUP_DIR/backup_$DATE.tar.gz $SOURCE_DIR 2> $LOG_FILE

# Vérification
if [ $? -eq 0 ]; then
    echo "Sauvegarde réussie le $DATE" | tee -a $LOG_FILE
else
    echo "Erreur lors de la sauvegarde le $DATE" | tee -a $LOG_FILE
fi
