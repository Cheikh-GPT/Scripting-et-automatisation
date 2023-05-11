#!/bin/bash
echo "nom: $0"
echo "chemin: $(dirname "$(realpath "$0")")"
echo "arguments :"
for arg in "$@"
do
    echo "$arg"
done