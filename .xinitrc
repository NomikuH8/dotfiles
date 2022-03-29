#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
# Made for dwm

exec dwm &
xrdb ~/.Xresources &
exec slstatus
