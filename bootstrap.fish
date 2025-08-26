#!/usr/bin/env fish

# variables
set -l DOTFILES_DIR "$HOME/.dotfiles"
set -l CONFIG_DIR "$HOME/.config"
set -l FISH_CONFIG_DIR "$CONFIG_DIR/fish"
set -l FF_CONFIG_DIR "$CONFIG_DIR/fastfetch"
set -l ALACRITTY_CONFIG_DIR "$CONFIG_DIR/alacritty"
set -l PACKAGES "fastfetch alacritty flatpak zoxide neovim discord python-pip"
set -l INSTALL_COMMAND (cat $HOME/.dotfiles/pm.tmp)

echo "Dusk's Bootstrap Script"
cd ~
echo "Install software"
eval $INSTALL_COMMAND $PACKAGES

echo "Symlink configs"
ln -sfn $DOTFILES_DIR/config/fish $FISH_CONFIG_DIR
ln -sfn $DOTFILES_DIR/config/fastfetch $FF_CONFIG_DIR
ln -sfn $DOTFILES_DIR/config/alacritty $ALACRITTY_CONFIG_DIR

echo "Install Brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# cleanup
echo "Cleaning up"
rm $HOME/.dotfiles/pm.tmp
rm $HOME/.dotfiles/dist.tmp
