#!/usr/bin/env bash
#
# ScriptName        : i3-gapps.sh
# Description       :
# Args              :
# Author            : LuizQuirino
# Email             : luizfpq@gmail.com
# Since             : 0.0.1 2020-03-06
# Version           : 0.0.1 2020-03-06
# References        : https://linuxdicasesuporte.blogspot.com/2018/12/i3-gaps-para-debian-ubuntu-e-derivados_6.html

i3-gapps() {

  sudo apt install libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev

  git clone https://www.github.com/Airblader/i3 i3-gaps
  cd i3-gaps
  git checkout gaps && git pull
  autoreconf --force --install
  rm -rf build
  mkdir build
  cd build ../configure --prefix=/usr --sysconfdir=/etc
  make
  sudo make install
  cd .. && rm -rf i3-gapps
}
