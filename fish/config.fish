# my fish config

# TODO: might use later
# if status is-interactive
    # Commands to run in interactive sessions can go here
# end

# look and feel

# literally just a test line
# the above line was made to test my GPG signing key. it works! hooray!
# commit: eaac380f77

# functions, abbreivations, etc etc
command zoxide init fish | source
set -gx BROWSER librewolf
set fish_prompt_pwd_dir_length 4

# stuff that i dont wanna write functions for
abbr nv nvim
abbr vim nvim
abbr v nvim
abbr cd z
abbr sudo doas
abbr lg lazygit
abbr cls clear

# basically just aliases kind of but more
function ls -d "ls wrapper" ; command ls --color=auto -hsa $argv ;end
function grep -d "grep wrapper" ; command grep --color=auto $argv ; end
function ff -d "fastfetch wrapper" ; command fastfetch $argv ; end
function nt -d "New terminal" ; command alacritty $argv ; end

# config reload
function reload -d "Reload the config"
    source ~/.config/fish/config.fish
    for file in ~/.config/fish/functions/*.fish
        source $file
    end
    echo Reloaded!
end

# down down down..
function .. -d "Down 1 directory" ; cd .. ; end
function .... -d "Down 2 directories" ; cd ../.. ; end
function ...... -d "Down 3 directories" ; cd ../../.. ; end

# making sure our functions get loaded on run
for file in ~/.config/fish/functions/*.fish
    source $file
end
