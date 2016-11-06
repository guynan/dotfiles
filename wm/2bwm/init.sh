#!/bin/bash

# Only for fedora...

dnf install libXrandr-devel xcb-util-keysyms-devel xcb-util-wm-devel
cp config.h /usr/local/src/2bwm/
cp 2bwm.desktop /usr/share/xsessions/
