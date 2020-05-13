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
  pip install setuptools
  rm -rf i3-gapps
  git clone https://www.github.com/Airblader/i3 i3-gaps
  cd i3-gaps
  git checkout gaps && git pull
  autoreconf --force --install
  rm -rf build
  mkdir build
  cd build 
  ../configure --prefix=/usr --sysconfdir=/etc
  make
  sudo make install
  cd .. && rm -rf i3-gapps
}
