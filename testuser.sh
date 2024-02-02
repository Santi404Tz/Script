#!/bin/bash

# Exemplo de estrutura de loop for

# Loop for para percorrer uma lista de elementos
	for linha in $(cat /etc/passwd | cut -d ":" -f 1); do
    
# Verifica se um diretório existe

        if [ -d "/home/$linha" ]; then
                echo "Pasta do usuário $linha encontrada"
               
	fi

	done
