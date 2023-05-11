#!/bin/bash

# Génère un nombre aléatoire entre 1 et 1000
random_number=$(( RANDOM % 1000 + 1 ))

# Initialise le nombre d'essais
attempts=10

while [ $attempts -gt 0 ]
do
  # Demande à l'utilisateur d'entrer un nombre
  echo "Entrez un nombre entre 1 et 1000 : "
  read guess

  # Vérifie si le nombre est correct
  if [ $guess -eq $random_number ]
  then
    echo "Vous avez gagné"
    exit 0
  elif [ $guess -lt $random_number ]
  then
    attempts=$(( $attempts - 1 ))
    echo "Le nombre est plus grand. Il vous reste $attempts essais."
  else
    attempts=$(( $attempts - 1 ))
    echo "Le nombre est plus petit. Il vous reste $attempts essais."
  fi
done

echo "Désolé, vous n'avez pas trouvé le nombre. Le nombre était : $random_number"