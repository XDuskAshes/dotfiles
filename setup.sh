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
    DIST="arch"
    PM_INSTALL_COMMAND="sudo pacman -S"
    echo "Arch"
elif command -v dnf &>/dev/null; then
    echo "Fedora"
    PM="dnf"
    DIST="fedora"
    PM_INSTALL_COMMAND="sudo dnf install --skip-unavailable"
else
    echo "Unsupported package manager. Please install Fish manually."
    exit 1
fi

case $PM in
    pacman)
        echo "Install fish and other needed software"
        sudo pacman -Syu --noconfirm fish git
        ;;
    dnf)
        echo "Install fish and other needed software"
        sudo dnf install -y fish git
        ;;
    *)
        echo "Unsupported package manager. Please install Fish manually. And how did you get to this point anyway?"
        exit 1
        ;;
esac

chsh -s /usr/bin/fish
git clone https://github.com/XDuskAshes/dotfiles.git ~/.dotfiles
touch $HOME/.dotfiles/pm.tmp && echo "$PM_INSTALL_COMMAND" > $HOME/.dotfiles/pm.tmp
touch $HOME/.dotfiles/dist.tmp && echo "$DIST" > $HOME/.dotfiles/dist.tmp
sudo chmod +x $HOME/.dotfiles/bootstrap.fish && fish -c $HOME/.dotfiles/bootstrap.fish
