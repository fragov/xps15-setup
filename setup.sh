#!/bin/bash
set -x

# Remove vim
sudo apt remove vim -yy

sudo apt update -qq

# Install software
## Tools & General
sudo apt install htop neovim curl ubuntu-restricted-extras virtualbox flatpak universal-ctags ranger gnome-disk-utility  -y
sudo apt -o Dpkg::Options::="--force-overwrite" install bat ripgrep -y

ln -s /usr/bin/batcat /usr/local/bin/bat

## Version-control system
sudo apt install git stow tig -y

## Development
sudo apt install nodejs npm php mariadb-server -y

## Graphics
sudo apt install simplescreenrecorder vlc gimp -y

## Office
sudo apt install libreoffice-writer libreoffice-calc -y 

# Add Flatpak support
sudo apt install gnome-software-plugin-flatpak -yy

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Before reboot
sudo apt update -qq && sudo apt upgrade -y
