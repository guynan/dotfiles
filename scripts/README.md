# Scripts

These scripts are designed to be able to return the most frequently used config files and directories to how they are supposed to be. The recommended way for using them is to:
```
cd /usr/local/src/ # This is where I like my source code files
git clone https://www.github.com/guynan/dotfiles.git
cd dotfiles/scripts
./home-setup 
./restore
```
	
The `home-setup` script simply creates a `src` symlink to `/usr/local/src` and does the same for the dotfiles directory.

The `restore` script symlinks all the config files/directories to their respective locations. I find this works best for me. The script shouldn't be destructive in any capacity unless you have config files that aren't the same as the ones in this folder, as it will delete them.
