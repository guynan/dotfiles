# Scripts

These scripts are designed to be able to return the most frequently used config files and directories to how they are supposed to be. The recommended way for using them is to:
```
 # This is where I like my source code files
cd /usr/local/src/

git clone https://www.github.com/guynan/dotfiles.git

cd dotfiles/scripts
sh restore
```
	
The `home-setup` script simply creates a `src` symlink to `/usr/local/src` and does the same for the dotfiles directory.

The `restore` script symlinks all the config files/directories to their respective locations. I find this works best for me. The script shouldn't be destructive in any capacity unless you have config files that aren't the same as the ones in this folder, as it will delete them. This is a sh script such that it could be run irrespective of operating system.

Again, the `root-restore` script is designed to be run as root user from the current directory. This script has a cute little trick that symbolically links a file called `.tcsh_root_profile` into the root directory. This means that both the user and root share a tcshrc, but can have different prompts as the .tcshrc sources this file.
