# Dotfiles

This is an aggregate for all the files that pertain to my current/past setup(s) on Unix-like operating systems.

All files in the directory are designed to be placed in $HOME/.config/ except those in 'bsd' and 'root' which follow a directory style placement. 

My current means for keeping this updated with my latest copies of my files is by cloning this into a directory and symbolically linking the files from that directory to their respective locations.

My current update script works just swimmingly for all the things I really want it to work for immeadiately. As of yet it only works on Linux due to some differences in config files etc. associated with BSD operating systems. 
It is pretty sloppy and the commits are all over the place because my mood is always changing but clone it anyway to make me feel good. 

The setup scripts are in the `scripts` directory (doesn't that make sense?) and these handle all of the setup. They don't however handle all the symlinks as some of them are dependent on what you want, so it provides a base setup (vim, tcsh, git, bspwm, etc.)
