#!/bin/sh

sudo pacman -Sy --needed \
  base-devel -R automake

sudo pacman -Sy --needed \
  git \
  openssl \

# shells {{{1

sudo pacman -Sy \
  bash \
  zsh \

# terminals {{{1

sudo pacman -Sy \
  zfce4-terminal \
  alacritty \

# web browsers {{{1

sudo pacman -Sy \
  firefox \

# window managers {{{1

sudo pacman -Sy \
  i3-gaps \
  i3blocks \
  i3lock \
  i3status \
  xfce4-appfinder \
  xfce4-clipman-plugin \
  xfce4-panel \
  xfce4-power-manager \
  xfce4-pulseaudio-plugin \
  xfce4-screenshooter \
  xfce4-session \
  xfce4-settings \

# sysadmin tools {{{1

sudo pacman -Sy \
  htop \
  rsync \
  bzip2 \
  inetutils \
  iputils \
  rsync \

# others {{{1

sudo pacman -Sy \
  bc \
  broot  \
  cifs-utils \
  darktable \
  ffmpeg \
  inkscape \
  irssi \
  jq \
  neovim \
  restic \
  ripgrep \
  rofi \
  thunar \
  thunar-archive-plugin \
  thunar-volman \
  tmux \
  tree \
  wget \
  zola \

# yay {{{1

# TODO: build yay from git repository and install:
#   google-chrome
#   joplin
