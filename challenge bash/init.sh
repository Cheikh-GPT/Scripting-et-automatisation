#!/bin/bash

# Vérifiez si un argument a été fourni
if [ $# -eq 0 ]
  then
    echo "Vous devez fournir un nom de répertoire en argument."
    exit 1
fi

# Créez le répertoire avec le nom donné comme argument
mkdir $1

# Changez dans le nouveau répertoire
cd $1

# Créez les fichiers README.md et change.log
touch README.md
touch change.log

# Affichez le contenu du répertoire
echo "Dossier créé = $1"
ls -l