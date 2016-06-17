#!/bin/bash 
VIM_ROOT=$HOME/.vim
RANDOM_NR=`shuf -i 1000-90000 -n 1`
INSTALL_ROOT=`pwd`

#Move old vim configuration
if [ -d $VIM_ROOT -o -L $VIM_ROOT ]; then 
    mv $VIM_ROOT $HOME/.vim_$RANDOM_NR
fi 

if [ -f $HOME/.vimrc -o -L $HOME/.vimrc ]; then 
    mv $HOME/.vimrc $HOME/.vimrc_$RANDOM_NR
fi

#easy edit
ln -s $INSTALL_ROOT $VIM_ROOT
ln -s $VIM_ROOT/_vimrc $HOME/.vimrc

echo -e "Installing vim (Vi Improved) package from repository"
#installinv vim-gnome allows copy/pasting beween vim and system clipboard
sudo apt-get --yes install vim vim-gnome

echo -e "Installing ctags"
sudo apt-get --yes install ctags

echo -e "Installing ctags"
sudo apt-get --yes install cscope

cd $VIM_ROOT 

git submodule init 
git submodule update 
git submodule foreach git checkout master
git submodule foreach git pull origin master

# echo -e "Install neovim"

# sudo apt-get install --yes software-properties-common
# sudo apt-get install --yes python-software-properties
# sudo add-apt-repository --yes ppa:neovim-ppa/unstable
# sudo apt-get update --yes
# sudo apt-get install --yes neovim
# sudo apt-get install --yes python-dev python-pip python3-dev python3-pip



