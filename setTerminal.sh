#!/bin/bash

cat <<BASHRC >>.bashrc
export TERM=xterm-256colori
export PS1="[\e[36m\w\e[0m]\$ "
export PS2="[\e[36m\w\e[0m]> "
alias ll="ls -alh"
BASHRC

sudo apt-get install git-core
/usr/bin/env git clone https://github.com/seebi/dircolors-solarized.git
/usr/bin/env git clone https://github.com/coolwanglu/gnome-terminal-colors-solarized.git

cp dircolors-solarized/dircolors.256dark ~/.dircolors
cd ~
eval `dircolors .dircolors`

cd gnome-terminal-colors-solarized 
. ./set_dark.sh

sudo apt-get install curl
curl https://j.mp/spf13-vim3 -L -o - | sh
