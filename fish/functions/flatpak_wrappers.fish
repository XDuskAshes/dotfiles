# flatpak wrappers
function fp -d "flatpak wrapper" ; flatpak $argv ; end
function fpu -d "flatpak update wrapper" ; flatpak update $argv ; end
function fpi -d "flatpak install wrapper" ; flatpak install $argv ; end
function fpd -d "flatpak remove wrapper (which i sometimes mistype as flatpak delete)" ; flatpak remove $argv ; end
function fpr -d "flatpak run wrapper" ; flatpak run $argv ; end
