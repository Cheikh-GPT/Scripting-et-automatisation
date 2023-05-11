#!/bin/bash
if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <nombre1> <nombre2>"
    exit 1
fi

if ! [[ "$1" =~ ^[0-9]+$ ]] || ! [[ "$2" =~ ^[0-9]+$ ]]; then
    echo "Erreur: les arguments doivent être des nombres entiers."
    exit 1
fi

if (( $1 > $2 )); then
    echo "$1 est plus grand que $2."
else
    echo "$2 est plus grand que $1."
fi