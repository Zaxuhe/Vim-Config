syntax on
set modeline
set expandtab
set tabstop=2
set shiftwidth=2
set exrc " .vimrc in local project dir
set secure
autocmd BufRead,BufNewFile * set signcolumn=yes
autocmd FileType tagbar,nerdtree set signcolumn=no
set foldmethod=indent
set nofoldenable
set number relativenumber
set diffopt+=vertical
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
:augroup END

"-- PATHOGEN --
execute pathogen#infect()
filetype plugin indent on

"-- TRUE COLOR --
" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

"-- NERDTree --
let NERDTreeShowHidden=1
map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_meaningful_tab_names = 1

"-- Whitespace highlight --
"match ExtraWhitespace /\s\+$/
"autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
"autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"autocmd InsertLeave * match ExtraWhitespace /\s\+$/
"autocmd BufWinLeave * call clearmatches()
:set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
:set list
"not visible characters :set nolist



"-- Airline --

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1


let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'

"-- incsearch --

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

"-- identLine--

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"Easy change between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"No noobs
"noremap <up> :echoerr 'USE K TO GO UP'<CR>
"noremap <down> :echoerr 'USE J TO GO UP'<CR>
"noremap <right> :echoerr 'USE L TO GO UP'<CR>
"noremap <left> :echoerr 'USE H TO GO UP'<CR>

"inoremap <up> <ESC>:echoerr 'USE K TO GO UP'<CR>
"inoremap <down> <ESC>:echoerr 'USE J TO GO UP'<CR>
"inoremap <right> <ESC>:echoerr 'USE L TO GO UP'<CR>
"inoremap <left> <ESC>:echoerr 'USE H TO GO UP'<CR>

"==========================================================================="
" Map copy delete and paste to system clipboard
"
vmap <Leader>y "+y
vmap <Leader>d "+d

nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p

"easymotion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

