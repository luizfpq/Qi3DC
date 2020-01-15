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
source ./resources/shell/powerline.sh

link_config_files

installPowerline
