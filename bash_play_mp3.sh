#!/bin/bash

# Verificar se foi passado o nome de um arquivo como argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <caminho_do_arquivo_mp3>"
    exit 1
fi

# Atribuir o parâmetro à variável
arquivo_mp3=$1

# Verificar se o arquivo existe
if [ ! -f "$arquivo_mp3" ]; then
    echo "Erro: Arquivo $arquivo_mp3 não encontrado."
    exit 1
fi

# Tocar o arquivo MP3 usando mpg123
#cvlc "$arquivo_mp3"
vlc --intf dummy --play-and-exit "$arquivo_mp3"

