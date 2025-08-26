#
# ~/.bashrc
#

PS1='[ \w ] '
# [ ~ ]

alias cls="clear"
alias lg="lazygit"
alias ls="ls --color=auto -hsa"
alias grep="grep --color=auto"
alias vim="nvim" # I like nvim a lot.
alias fp="flatpak"
alias sudo="doas"

eval "$(zoxide init bash)" # For Zoxide. <https://github.com/ajeetdsouza/zoxide>
eval "$(thefuck --alias)" # https://archlinux.org/packages/extra/any/thefuck/

# BELOW THIS LINE IS FOR ADDITIONS MADE BY PROGRAMS (i.e. Brew, also primarily will add paths) THAT I DONT FEEL LIKE MAINTAINING MYSELF BECAUSE IM LAZY
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export PATH=$PATH:/home/dusk/.spicetify
