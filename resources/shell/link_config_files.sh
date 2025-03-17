#!/usr/bin/env bash
#
# ScriptName        : link_config_files.sh
# Description       :
# Args              :
# Author            : LuizQuirino
# Email             : luizfpq@gmail.com
# Since             : 0.0.1 2020-01-15
# Version           : 0.0.1 2020-01-15
u="$USER"

link_config_files() {

    # Verificar se a pasta de recursos existe
    if [ ! -d "$PWD/resources" ]; then
        echo "Erro: A pasta '$PWD/resources' não existe."
        exit 1
    fi

    # Verificar se a pasta de configuração base existe
    if [ ! -d "$PWD/resources/.config" ]; then
        echo "Erro: A pasta '$PWD/resources/.config' não existe."
        exit 1
    fi

    # Verificar se a pasta de imagens existe
    if [ ! -d "$PWD/resources/img" ]; then
        echo "Erro: A pasta '$PWD/resources/img' não existe."
        exit 1
    fi

    # Verificar se o diretório de destino (Imagens) existe
    if [ ! -d ~/Imagens ]; then
        echo "Erro: A pasta '~/Imagens' não existe. Criando a pasta..."
        mkdir -p ~/Imagens
    fi

    # Verificar se o diretório de destino (config) existe
    if [ ! -d ~/".config" ]; then
        echo "Erro: A pasta '~/'.config não existe. Criando a pasta..."
        mkdir -p ~/.config
    fi

    # Verificar se o arquivo de destino .bashrc existe
    if [ ! -f ~/".bashrc" ]; then
        echo "Erro: O arquivo '~/".bashrc' não existe."
        exit 1
    fi

    # Verificar se o arquivo de destino .fehbg existe
    if [ ! -f ~/".fehbg" ]; then
        echo "Erro: O arquivo '~/".fehbg' não existe."
        exit 1
    fi

    # Copiar os arquivos se as verificações passarem
    echo "Copiando arquivos de configuração..."
    cp -Rfv $PWD/resources/.config ~/
    cp -Rfv $PWD/resources/.bashrc ~/
    cp -Rfv $PWD/resources/.fehbg ~/
    cp -Rfv $PWD/resources/img/* ~/Imagens

    echo "Arquivos copiados com sucesso!"
}

# Chamada da função
#link_config_files

