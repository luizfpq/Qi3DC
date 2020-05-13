#!/bin/bash
#
# Instalando suporte a sistemas de arquivos diversos
# inclusive para reconhecer celulares android mais novos
# dar acesso aos sistemas sftp e smb através do thunar
# smb:// sftp://
#adicionando ao fim da linha, seu pacote será instalado
FSTOOLS="curl fonts-lyx galculator keepassxc
libmtp-dev gvfs-backends apt-transport-https htop gnome-disk-utility apparmor asciinema axel
libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev
libxcb-xrm0 libxcb-xrm-dev libxcb-shape0-dev build-essential python python-pip compton feh i3status i3lock
libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev
locate neofetch net-tools python-pip qt4-qtconfig software-properties-common amtp-tools gvfs gvfs-bin 
gvfs-common gvfs-daemons gvfs-libs suckless-tools neofetch xinit transmission-gtk unrar unzip xfce4-goodies
fonts-powerline autoconf libxcb-keysyms1-dev libpango1.0-dev"
  

systemTools() {
  clear
  sudo apt-get update > /dev/null
  for application in ${FSTOOLS[@]}
    do
      echo "Instalando $application..."
      sudo apt-get install -qq -o=Dpkg::Use-Pty=0 $application -y &>> /tmp/QXDCinstall.log
    done
}
