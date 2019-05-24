# Description
Shell configuration files and some useful scripts.

# Installation

Clone this repository somewhere and then create symlinks to your home directory for each configuration file you would like to use.

For example, if you would like to use `.vimrc` and `.zshrc` configuration files:

```zsh
cd ~
git clone https://github.com/guvkon/configs.git
ln -s ~/configs/.vimrc ~/.vimrc
ln -s ~/configs/.zshrc ~/.zshrc
```

Also symlink scripts directory to your home directory if you're going to use `.zshrc` configuration file provided here. Otherwise, add location of the directory to PATH variable if you want to use them.

Continuing example above, we now want to use scripts:
```zsh
ln -s ~/configs/scripts ~/scripts
```

If you use zsh and want to use `.zshrc` configuration file the following is required:
* [Oh My Zsh](https://ohmyz.sh) framework for managing zsh configuration
* One of the [patched fonts from Vim-Powerline](https://github.com/powerline/fonts)

# Screenshots

![Belafonte Night + Fira Mono](/screenshot.png)

"Fira Mono for Powerline" font (14 pt) with [Belafonte Night](https://iterm2colorschemes.com) colour scheme.

