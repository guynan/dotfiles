# Dotfiles

This is an aggregate for all the files that pertain to my current/past setup(s) on Unix-like operating systems.

My current means for keeping this updated with my latest copies of my files is by cloning this into a directory and symbolically linking the files from that directory to their respective locations.

My current update script works just swimmingly for all the things I really want it to work for immeadiately. Said scripts can be run on both Linux and BSD. While it has been predominantly tested on Fedora and FreeBSD, there are hooks for it to work on other \*nix variants and other BSDs. 

The setup scripts are in the `scripts` directory (doesn't that make sense?) and these handle all of the setup. They don't however handle all the symlinks as some of them are dependent on what you want, so it provides a base setup (vim, tcsh, git, bspwm, etc.)

It is pretty sloppy and the commits are all over the place because my mood is always changing but clone it anyway to make me feel good. 

## Current Usage

**Operating system(s)**: FreeBSD/Fedora

**Terminal**: Xterm

**Terminal Multiplexer**: Screen

**Shell**: tcsh

**Wm**: 2bwm

**Editor**: Vim/Vi

**Vim Theme**: Solarized Dark

**Broswer**: Chromium

**Compositor** Compton
