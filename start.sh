#!/bin/bash

# Script này sẽ cài đặt các package cần thiết, Oh My Zsh, Powerlevel10k và một số plugin hữu ích.
cp .zshrc .p10k.zsh ~/

# 1. Cài đặt các package cần thiết
sudo pacman -Sy --needed --noconfirm \
    alacritty rofi polybar picom dunst feh network-manager-applet spice-vdagent \
    xorg-xrandr xorg-xrdb xorg-server xorg-xinit xdotool i3-wm \
    wireplumber pipewire pipewire-pulse pipewire-alsa pavucontrol \
    xdg-desktop-portal xdg-desktop-portal-gtk \
    firefox git base-devel zsh zsh-completions curl brightnessctl rtkit \
    ttf-jetbrains-mono-nerd ttf-firacode-nerd xorg-fonts-misc \
    android-file-transfer anki bleachbit fastfetch \
    7zip unzip mpv cmus maim xclip clipmenu polkit-gnome \
    thunar thunar-archive-plugin thunar-volman gvfs

# 2. Cài đặt Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Đang cài đặt Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc
fi

# 3. Cài đặt Theme & Plugins bổ sung
echo "Đang cài đặt Powerlevel10k và Plugins..."
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Powerlevel10k
rm -rf "$ZSH_CUSTOM/themes/powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"

# Plugins (Nên có để dùng sướng hơn)
rm -rf "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"

rm -rf "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"

# 4. Đổi shell mặc định
if [ "$SHELL" != "/usr/bin/zsh" ]; then
    sudo chsh -s /usr/bin/zsh $USER
fi

# 5. Cập nhật Font cache
fc-cache -fv

echo "Xong! Hãy copy file .zshrc và .p10k.zsh của bạn vào thư mục HOME nếu chưa làm."
