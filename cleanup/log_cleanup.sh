#!/bin/bash

# Répertoire des logs
LOG_DIR="/var/log"

# Supprimer les fichiers de logs vieux de 7 jours
find $LOG_DIR -type f -name "*.log" -mtime +7 -exec rm -f {} \;

# Message de confirmation
echo "Nettoyage terminé : logs de plus de 7 jours supprimés."
