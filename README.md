# Neovim
### Install **nvim**
**`https://github.com/neovim/neovim/wiki/Installing-Neovim/921fe8c40c34dd1f3fb35d5b48c484db1b8ae94b`**

### Install **plugins**
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Configure
1. Download config
```bash
curl -fLo "$HOME/.config/nvim/init.vim" --create-dirs \
https://raw.githubusercontent.com/storm-sergey/dotfiles/master/.config/nvim/init.lua
```
2. make **`Vim-Plug install`**



# Vim
### .vimrc download
```vim
curl -LJO https://raw.githubusercontent.com/storm-sergey/dotfiles/master/.vimrc
```
---
### Configure
```vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
    

