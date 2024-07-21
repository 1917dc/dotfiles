#!/bin/bash
echo ** SCRIPT FOR MY DESKTOP DOTFILES ** 
echo Installing dependencies.

sudo apt install git sway swaybg mako-notifier fzf pulseaudio wl-clipboard grim grimshot slurp jq pavucontrol waybar fonts-font-awesome kitty tmux 

echo Dependencies installed.

echo Now installing node, zsh, oh my zsh.

echo installing zsh
sudo apt install zsh
chsh -s $(which zsh)

echo now installing oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo installing neovim for nvchad

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

export PATH="$PATH:/opt/nvim-linux64/bin"

sudo apt install curl

\n
echo installing nvm for node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

\n
echo installing node recent version
nvm install node
\n

\n
echo cloning my dotfiles to respective folders.
\n

cd
cp -r ~/dotfiles/Desktop/.config ~/

cd && cp ~/dotfiles/Desktop/.tmux.conf ~/
cd && cp ~/dotfiles/Desktop/.zshrc ~/
cd && cp ~/dotfiles/Desktop/.fonts ~/

sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
sudo apt update

sudo apt install fastfetch

echo \n\n ** SCRIPT COMPLETED INSTALLATION * \n\n
