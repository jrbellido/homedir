#!/bin/sh

sudo pacman -Sy --needed \
  base-devel -R automake

sudo pacman -Sy --needed \
  git

sudo pacman -Sy \
  alacritty \
  bash \
  bc \
  broot  \
  bzip2 \
  cifs-utils \
  darktable \
  ffmpeg \
  firefox \
  htop \
  i3-gaps \
  i3blocks \
  i3lock \
  i3status \
  inetutils \
  inkscape \
  iputils \
  irssi \
  jq \
  neovim \
  restic \
  ripgrep \
  rofi \
  rsync \
  thunar \
  thunar-archive-plugin \
  thunar-volman \
  tmux \
  tree \
  wget \
  xfce4-appfinder \
  xfce4-clipman-plugin \
  xfce4-panel \
  xfce4-power-manager \
  xfce4-pulseaudio-plugin \
  xfce4-screenshooter \
  xfce4-session \
  xfce4-settings \
  xfce4-terminal \
  zola \
  zsh \

# TODO: build yay from git repository and install:
#   google-chrome
#   joplin
