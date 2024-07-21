#!/bin/bash
sudo apt install git sway swaybg mako-notifier fzf pulseaudio wl-clipboard grim grimshot slurp jq pavucontrol waybar fonts-font-awesome kitty tmux 

sudo apt install build-essential
sudo apt install git
sudo apt install python3-pip
sudo apt install gcc clang ninja-build

pip3 install --user meson==0.55.3
export PATH=$HOME/.local/bin:$PATH

sudo apt install wayland-protocols \
libwayland-dev \
libegl1-mesa-dev \
libgles2-mesa-dev \
libdrm-dev \
libgbm-dev \
libinput-dev \
libxkbcommon-dev \
libgudev-1.0-dev \
libpixman-1-dev \
libsystemd-dev \
cmake \
libpng-dev \
libavutil-dev \
libavcodec-dev \
libavformat-dev \
ninja-build \
meson

sudo apt install libxcb-composite0-dev \
        libxcb-icccm4-dev \
        libxcb-image0-dev \
        libxcb-render0-dev \
        libxcb-xfixes0-dev \
        libxkbcommon-dev \
        libxcb-xinput-dev \
        libx11-xcb-dev

sudo apt install libjson-c-dev \
libpango1.0-dev \
libcairo2-dev \
libgdk-pixbuf2.0-dev \
scdoc

cd
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

export PATH="$PATH:/opt/nvim-linux64/bin"

sudo apt install curl

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm install node

echo cloning my dotfiles to respective folders.

cd
mv -r ~/dotfiles/Desktop/config ~/dotfiles/Desktop/.config 
cp -r ~/dotfiles/Desktop/.config ~/

mv ~/dotfiles/Desktop/tmux.conf ~/dotfiles/Desktop/.tmux.conf 
cd && cp ~/dotfiles/Desktop/.tmux.conf ~/
mv ~/dotfiles/Desktop/zshrc ~/dotfiles/Desktop/.zshrc 
cd && cp ~/dotfiles/Desktop/.zshrc ~/
mv ~/dotfiles/Desktop/fonts ~/dotfiles/Desktop/.fonts
cd && cp ~/dotfiles/Desktop/.fonts ~/

sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
sudo apt update

sudo apt install fastfetch
