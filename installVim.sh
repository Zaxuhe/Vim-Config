mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
git clone https://github.com/haya14busa/incsearch.vim ~/.vim/bundle/incsearch.vim
git clone https://github.com/tpope/vim-surround ~/.vim/bundle/vim-surround
git clone https://tpope.io/vim/repeat.git ~/.vim/bundle/repeat
git clone https://github.com/tpope/vim-commentary ~/.vim/bundle/vim-commentary
git clone https://github.com/kshenoy/vim-signature.git ~/.vim/bundle/vim-signature
git clone https://github.com/Yggdroot/indentLine.git ~/.vim/bundle/indentLine
git clone https://github.com/easymotion/vim-easymotion.git ~/.vim/bundle/vim-easymotion

git clone https://github.com/jistr/vim-nerdtree-tabs.git ~/.vim/bundle/nerdtree-tabs
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp

cp _vimrc ~/.vimrc
