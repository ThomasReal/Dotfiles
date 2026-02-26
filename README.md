# My dotfiles

## Overview
This repo contains my config files managed by [GNU stow](https://github.com/aspiers/stow/), a wonderful tool that symlinks files in a directory to the same locations in your home folder, so you can version control them.

**IMPORTANT: Note that this is only frequently tested on MacOS, and may not work on Linux or Windows without some tweaking**

## Features
- Saved tmux sessions across reboots with tmux-continuum and tmux-ressurrect
- zsh with syntax highlighting, autosuggestions and autocomplete

## Screenshots

![The zsh prompt](screenshots/zsh.png)

![Two tmux panes](screenshots/tmux.png)

## Requirements:
- git (comes bundled with MacOS) 
- stow
## Optional requirements
- zsh
- zsh-autocomplete, zsh-autosuggestions
- zsh-fast-syntax-highlighting (if not using brew, use zsh-syntax-highlighting or clone the [repo](https://github.com/zdharma-continuum/fast-syntax-highlighting) manually)
- lsd
- trash-cli (install with npm) (a similar tool comes bundled with MacOS)
- fastfetch
- tmux
- the tmux plugin manager

## Installation

Backup your old config files:
```sh
mv ~/.zshrc     ~/backup_config/.zshrc
mv ~/.tmux.conf ~/backup_config/.tmux.conf
```

Then run
```sh
git clone https://github.com/ThomasReal/dotfiles
cd dotfiles
stow .
```

## Post installation

- Remove the config files you don't want. Be aware that after running stow, even if you remove files in the directory in which you cloned this repository, the symbolic links in your home folder will still exits, so you will have to remove those as well.

- Review .zshrc. Some files paths may be wrong and you may not want certain aliases or keybinds.

- If you use tmux but don't have the tpm (the Tmux Plugin Manager), run 
```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

- Then run
```sh
tmux source ~/.tmux.conf
```

If tmux is running to refresh it.
Finally, press prefix I (capital i) to reload tmux plugins and you should now have tmux-ressurrect and tmux-continuum. Press prefix ctl-s to save your tmux environement and prefix ctl-r to restore it after reboots.

## Uninstall
```sh 
stow -D path/to/dotfiles
```
