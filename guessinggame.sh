#!/bin/bash

function guess_files {

    local num_files=$(ls -1 | wc -l)
    local guess=-1
    echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
    
    while [[ $guess -ne $num_files ]]; do
        read guess
        if [[ $guess -lt $num_files ]]; then
            echo "Trop bas, essayez encore."
        elif [[ $guess -gt $num_files ]]; then
            echo "Trop haut, essayez encore."
        else
            echo "Félicitations, vous avez trouvé le bon nombre de fichiers !"
        fi
    done

}

guess_files
