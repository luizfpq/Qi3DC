#!/usr/bin/env bash

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