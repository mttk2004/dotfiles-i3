# My Dotfiles - i3wm

This repository contains my personal dotfiles configuration for Arch Linux using i3wm.

## Key Software and Tools

The installation script will automatically download the following packages:
- **Terminal Emulator:** [Alacritty](https://github.com/alacritty/alacritty)
- **Shell & Terminal Prompt:** [Zsh](https://www.zsh.org/), [Oh My Zsh](https://ohmyz.sh/), and the [Powerlevel10k](https://github.com/romkatv/powerlevel10k) theme
- **Window Manager Utilities:** Rofi, Polybar, Picom, Dunst, Feh, Xorg tools
- **Other Utilities:** Wireplumber, Network Manager Applet, Spice vdagent, Brightnessctl
- **Fonts:** JetBrains Mono Nerd Font, FiraCode Nerd Font
- **Web Browser:** Firefox

## Installation

1. Clone this repository to your machine:
   ```bash
   git clone https://github.com/mttk2004/dotfiles-i3.git ~/dotfiles
   cd ~/dotfiles
   ```

2. Run the absolute installation script to configure packages and the environment:
   ```bash
   chmod +x start.sh
   ./start.sh
   ```

The `start.sh` script will automatically:
- Install essential software packages via `pacman` (for Arch Linux/Arch-based systems).
- Change the default shell to `zsh`.
- Download the Powerlevel10k theme for Oh My Zsh.
- Update the system font cache (`fc-cache`).

## Directory Structure

```text
.
├── .config/              # Centralized directory for configuration files
├── alacritty/            # Alacritty terminal configuration
│   └── alacritty.toml    # Main Alacritty settings file
├── .p10k.zsh             # Powerlevel10k theme configuration
├── .zshrc                # Zsh shell configuration
├── start.sh              # Setup script to install packages and configure the environment
└── README.md             # Project documentation
```
