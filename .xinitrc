#!/bin/sh

# merge in defaults and keymaps
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

themeresources=$HOME/.config/xresources/themes/catppuccin/mocha.Xresources
dwmresources=$HOME/.config/dwm/dwm.Xresources
dmenuresources=$HOME/.config/dmenu/dmenu.Xresources
stresources=$HOME/.config/st/st.Xresources
if [ -f $themeresources ]; then
    xrdb -merge $themeresources
fi

if [ -f $dwmresources ]; then
    xrdb -merge $dwmresources
fi

if [ -f $dmenuresources ]; then
    xrdb -merge $dmenuresources
fi

if [ -f $stresources ]; then
    xrdb -merge $stresources
fi

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Set keyboard rate
xset r rate 250 75

export AWT_TOOLKIT=MToolkit
wmname compiz

# see https://unix.stackexchange.com/a/295652/332452
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

# see https://wiki.archlinux.org/title/GNOME/Keyring#xinitrc
export SSH_AUTH_SOCK

# see https://github.com/NixOS/nixpkgs/issues/14966#issuecomment-520083836
mkdir -p "$HOME"/.local/share/keyrings

# see https://wiki.archlinux.org/title/Dunst#Dunst_fails_to_start_via_systemd
systemctl --user import-environment DISPLAY

source "$HOME/.profile"
