# Kích hoạt Instant Prompt của Powerlevel10k để khởi động shell nhanh hơn
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 1. Định nghĩa đường dẫn Oh My Zsh (BẮT BUỘC để sửa lỗi bạn gặp)
export ZSH="$HOME/.oh-my-zsh"

# 2. Cấu hình Theme (Chỉ giữ lại Powerlevel10k)
ZSH_THEME="powerlevel10k/powerlevel10k"

# 3. Danh sách Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# 4. Nạp Oh My Zsh
source $ZSH/oh-my-zsh.sh

# 5. Nạp cấu hình Powerlevel10k (File .p10k.zsh bạn đã có)
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# User configuration (Aliases, Paths...)
alias zshconfig="nano ~/.zshrc"
alias p10kconfig="nano ~/.p10k.zsh"

# === CUSTOM ALIASES ===
# Tăng/giảm độ sáng (sử dụng brightnessctl, yêu cầu cài đặt lệnh này)
alias brightup="brightnessctl set +10%"
alias brightdown="brightnessctl set 10%-"

# Tăng/giảm/tắt/bật âm lượng (sử dụng pactl - mặc định trên đa số Linux Distro có PulseAudio/PipeWire)
alias volup="pactl set-sink-volume @DEFAULT_SINK@ +5%"
alias voldown="pactl set-sink-volume @DEFAULT_SINK@ -5%"
alias volmute="pactl set-sink-mute @DEFAULT_SINK@ toggle"
alias volmax="pactl set-sink-volume @DEFAULT_SINK@ 100%"
alias volsixty="pactl set-sink-volume @DEFAULT_SINK@ 60%"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
