# pacman wrappers
function pm -d "pacman wrapper" ; sudo pacman $argv ; end
function pmi -d "pacman -S wrapper" ; sudo pacman -S $argv ; end
function pmr -d "pacman -R wrapper" ; sudo pacman -R $argv ; end
function syu -d "pacman -Syu wrapper" ; sudo pacman -Syu ; end
