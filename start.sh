#!/bin/bash

sudo pacman -Sy --needed --noconfirm \
    alacritty rofi polybar picom dunst feh network-manager-applet spice-vdagent \
    xorg-xrandr xorg-xrdb xorg-server xorg-xinit xdotool i3-wm \
    wireplumber pipewire pipewire-pulse pipewire-alsa pavucontrol \
    firefox git base-devel zsh zsh-completions curl brightnessctl rtkit \
    ttf-jetbrains-mono-nerd ttf-firacode-nerd xorg-fonts-misc \
    android-file-transfer anki bleachbit fastfetch \
    7zip unzip mpv cmus maim xclip clipmenu polkit-gnome \
    thunar thunar-archive-plugin thunar-volman gvfs

# Change default shell to zsh
chsh -s /usr/bin/zsh

# Install Oh My Zsh
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

# Run fc-cache to update font cache
fc-cache -fv
