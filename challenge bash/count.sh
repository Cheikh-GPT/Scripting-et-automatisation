#!/bin/bash
if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <nombre>"
    exit 1
fi

n=$1

if ! [[ "$n" =~ ^[0-9]+$ ]]; then
    echo "Erreur: '$n' n'est pas un nombre entier."
    exit 1
fi

for (( i=1; i<=$n; i++ ))
do
    echo $i
done