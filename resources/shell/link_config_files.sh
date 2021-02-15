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

    #config base folder
    cp -Rfv $PWD/resources/.config ~/
    cp -Rfv $PWD/resources/.bashrc
    cp -Rfv $PWD/resources/.fehbg
    cp -Rfv $PWD/resources/img/* ~/Imagens
    

}
