#!/usr/bin/env bash
#
# ScriptName        : link_config_files.sh
# Description       :
# Args              :
# Author            : LuizQuirino
# Email             : luizfpq@gmail.com
# Since             : 0.0.1 2020-01-15
# Version           : 0.0.1 2020-01-15
link_config_files() {

    #i3 base folder
    rm -rf ~/.config/i3/
    ln -s ~/.Qi3DC/resources/i3/ ~/.config/i3

    #neofetch
    rm -rf ~/.config/neofetch/
    ln -s ~/.Qi3DC/resources/neofetch/ ~/.config/neofetch

    #compton
    #ln -s ~/.Qi3DC/compton.conf ~/.config/compton.conf

}
