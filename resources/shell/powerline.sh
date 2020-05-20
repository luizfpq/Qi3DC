#!/usr/bin/env bash
#
# ScriptName        : powerline.sh
# Description       :
# Args              :
# Author            : LuizQuirino
# Email             : luizfpq@gmail.com
# Since             : 0.0.1 2020-01-15
# Version           : 0.0.1 2020-01-15

installPowerline() {
  cd /tmp &&
  sudo rm -rf powerline-shell &&
  sudo git clone https://github.com/b-ryan/powerline-shell &&
  sudo cd powerline-shell &&
  sudo python setup.py install
  sudo apt-get install -qq -o=Dpkg::Use-Pty=0 fonts-powerline powerline-gitstatus -y &>> /tmp/QXDCinstall.log
}
