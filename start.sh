#!/bin/bash

sudo pacman -S alacritty rofi polybar picom dunst feh network-manager-applet spice-vdagent xorg-xrandr xorg-xrdb wireplumber firefox git base-devel zsh zsh-completions curl brightnessctl ttf-jetbrains-mono-nerd ttf-firacode-nerd xorg-fonts-misc

# Change default shell to zsh
chsh -s /usr/bin/zsh

# Install Oh My Zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

# Run fc-cache to update font cache
fc-cache -fv
