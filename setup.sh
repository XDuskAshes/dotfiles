#!/bin/bash

# for setting up to run bootstrap.fish
# keep in mind this is 90% personal use, and i mainly
# use either arch or nobara recently, so that's
# the only supported ones officially.

echo "Setting up to run bootstrap.fish"

# get our package manager of choice. we're only doing common ones (not brew, for example) simply
# because i don't wanna deal with all that!
if command -v pacman &>/dev/null; then
    PM="pacman"
elif command -v dnf &>/dev/null; then
    PM="dnf"
else
    echo "Unsupported package manager. Please install Fish manually."
    exit 1
fi

echo "Install fish and other needed software"
case $PM in
    pacman)
        sudo pacman -Syu --noconfirm fish git alacritty
        ;;
    dnf)
        sudo dnf install -y fish git alacritty
        ;;
    *)
        echo "Unsupported package manager. Please install Fish manually. And how did you get to this point anyway?"
        exit 1
        ;;

chsh -s /usr/bin/fish
git clone https://github.com/XDuskAshes/dotfiles.git ~/.dotfiles
fish -c echo "Entered fish. Running bootstrap." && cd ~/.dotfiles && ./bootstrap.fish
