#!/bin/bash

sudo pacman -S swaybg mako-notifier pulseaudio pavucontrol waybar fonts-font-awesome kitty tmux

sudo pacman -S build-essential
sudo pacman -S git
sudo pacman -S python3-pip
sudo pacman -S gcc clang ninja-build

pip3 install --user meson==0.55.3pip3 install --user meson==0.55.3

export PATH=$HOME/.local/bin:$PATH

sudo pacman -S wayland-protocols \
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

sudo pacman -S libxcb-composite0-dev \
        libxcb-icccm4-dev \
        libxcb-image0-dev \
        libxcb-render0-dev \
        libxcb-xfixes0-dev \
        libxkbcommon-dev \
        libxcb-xinput-dev \
        libx11-xcb-dev

sudo pacman -S libjson-c-dev \
libpango1.0-dev \
libcairo2-dev \
libgdk-pixbuf2.0-dev \
scdoc

sudo pacman -S wl-clipboard
sudo pacman -S grim
sudo pacman -S slurp
sudo pacman -S jq
sudo pacman -S grimshot
 
sudo pacman -S brightnessctl


