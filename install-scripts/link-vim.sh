# Note that this script only aliases configurations.
# It does not install neovim or vim itself.
SRC=~/simendsjo-config/.config/nvim
ln -s $SRC ~/.config/nvim
# Use same config files for regular vim
ln -s $SRC ~/.vim
ln -s $SRC/init.vim ~/.vimrc
