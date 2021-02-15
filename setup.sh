#!/usr/bin/env bash
#
# ScriptName        : setup.sh
# Description       :
# Args              :
# Author            : LuizQuirino
# Email             : luizfpq@gmail.com
# Since             : 0.0.1 2020-01-15
# Version           : 0.0.1 2020-01-15

# Criando links simbólicos para os arquivos de configuração
# permitindo que os arquivos fiquem confinados todos dentro de ~/.Qi3DC

source ./resources/shell/link_config_files.sh
#source ./resources/shell/powerline.sh
source ./resources/shell/i3-gapps.sh
source ./resources/shell/systemTools.sh

read -p "Deseja (re)instalar as dependencias do sistema? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[YySs]$ ]]
then
    systemTools
fi

read -p "Deseja instalar o i3-gapps? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[YySs]$ ]]
then
    i3-gapps
fi

read -p "Deseja instalar o powerline? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[YySs]$ ]]
then
    installPowerline
fi

read -p "Deseja carregar as configurações de usuário? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[YySs]$ ]]
then
    link_config_files
fi
