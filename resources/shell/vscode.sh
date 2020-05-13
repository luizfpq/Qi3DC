#!/usr/bin/env bash
#
# ScriptName        : vscode.sh
# Description       :
# Args              :
# Author            : LuizQuirino
# Email             : luizfpq@gmail.com
# Since             : 0.0.1 2020-01-15
# Version           : 0.0.1 2020-01-15

rm -rf code*.deb
axel -n 5 https://az764295.vo.msecnd.net/stable/d69a79b73808559a91206d73d7717ff5f798f23c/code_1.45.0-1588868285_amd64.deb
apt install ./code_1.45.0-1588868285_amd64.deb