set -e

sudo pacman -S --needed --noconfirm \
  yazi \
  wezterm \
  zsh \
  fzf \
  neovim \
  tmux \
  lazygit \
  ibus-rime librime rime-essay \
  noto-fonts-cjk \
  ttf-meslo-nerd \
  git \
  base-devel \

#install rime-ice
cd ~/Downloads
if [ ! -d "plum" ]; then
  git clone --depth 1 https://github.com/rime/plum
  cd plum/
  bash rime-install iDvel/rime-ice:others/recipes/full
  cd ..
  rm -rf plum
fi
cd ~

# intall yay
cd ~/Downloads
if [ ! -d "yay" ]; then
  git clone https://aur.archlinux.org/yay.git
fi
cd yay
makepkg -si --noconfirm
cd ~
rm -rf ~/Downloads/yay

# instsall yay packages
yay -S --needed --noconfirm \
  visual-studio-code-bin \
  google-chrome \


curl -fsSL https://pixi.sh/install.sh | sh

# 可选：让当前 shell 立刻可用 pixi
export PATH="$HOME/.pixi/bin:$PATH"

	

