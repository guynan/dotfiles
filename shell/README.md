## Shell stuff

Herein lies the stuff for shells. Most importantly stuff for tcsh. 

The `root-restore` script has a cute little trick that symbolically links a file called `.tcsh_root_profile` into the root directory. This means that both the user and root share a tcshrc, but can have different prompts as the .tcshrc sources this file. This only impacts the root user as there is a check for the file in the tcsh but it only exists in the root directory. 

