#!/bin/bash
#variaveis:
#
	user=$(whoami)
#command:
#
echo "Inicializando script de limpeza do usuário"
echo "  "
echo "Quem é você? $user"
echo "  "
echo "iniciando limpeza..."
#
# Teste lógico:
#
if [ "$user" == "root" ]; then
    rm -ri /root/*
else
    rm -ri /home/"$user"/*
fi
# Verifica o status de saída do último comando
#
if [ $? -eq 0 ]; then
    echo "A limpeza foi executada com sucesso."
else
    echo "A limpeza falhou. Pode não ter permissões para executar, contact system administrator"
fi
