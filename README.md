### .vimrc download
curl -LJO https://raw.githubusercontent.com/storm-sergey/dotfiles/master/.vimrc

---
### Vim-Plug install
##### Vim:
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
##### Neovim:
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
