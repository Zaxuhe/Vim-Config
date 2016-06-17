set nocompatible              " be iMproved, required
filetype off                  " required
set nocompatible
filetype plugin on
syntax on

filetype indent on
set filetype=html
set smartindent

colorscheme blues

set omnifunc=syntaxcomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType cpp set omnifunc=omni#cpp#complete#Main


:source $HOME/vimfiles/plugin/rng.vim

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$USERPROFILE/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Bundle 'exvim/ex-autocomplpop'

Plugin 'Rykka/clickable.vim'
Plugin 'EinfachToll/DidYouMean'
Bundle 'ompugao/ctrlp-locate'
Bundle 'dyng/ctrlsf.vim'
Bundle 'ctrlpvim/ctrlp.vim'
Plugin 'haya14busa/incsearch.vim'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-scripts/a.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'chaoren/vim-wordmotion'
Plugin 'yegappan/mru'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'vim-scripts/OmniCppComplete'
Plugin 'shawncplus/phpcomplete.vim'

"Snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional:
Plugin 'honza/vim-snippets'
"End Snipmate

Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/vim-easy-align'
Plugin 'kshenoy/vim-signature'
Plugin 'iago-lito/vim-visualMarks'
Plugin 'vimwiki/vimwiki'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'chemzqm/vim-run'
Plugin 'tpope/vim-fugitive.git'
Plugin 'Yggdroot/indentLine.git'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-dispatch'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" ========================================================================================
" Make vim incompatbile to vi.
set nocompatible
set modelines=0

" ========================================================================================
"TAB settings.
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set showtabline=2
set ruler

" ========================================================================================
" More Common Settings.
set encoding=utf-8
set scrolloff=3
""set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell

set history=1000
set undolevels=10000

set nobackup
set noswapfile

set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start

set pastetoggle=<F2>
"set relativenumber
set number
set norelativenumber

set undofile
"set undodir=/tmp

"set shell=/bin/zsh
set lazyredraw
set matchtime=3


" ========================================================================================
"Changing Leader Key
let mapleader = ","


" ========================================================================================
" Map : to ; also in command mode.
nnoremap ; :
vmap ; :
nmap <silent> <leader>/ :nohlsearch<CR>
" ========================================================================================

" Set title to window
set title

" Enable Mouse
set mouse=a

" ========================================================================================
"Settings for Searching and Moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<CR>
"nnoremap <tab> %
"vnoremap <tab> %

" ========================================================================================
" Make Vim to handle long lines nicely.
set wrap
"set textwidth=79
"set colorcolumn=+1
set formatoptions=qrn1
"set colorcolumn=79

" ========================================================================================
" To  show special characters in Vim
"set list
set listchars=tab:▸\ ,eol:¬

" ========================================================================================
" set unnamed clipboard
set clipboard=unnamedplus

"==========================================================================="
" Get Rid of stupid Goddamned help keys
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"==========================================================================="
" Redraw screen every time when focus gained
au FocusGained * :redraw!

"==========================================================================="
" Mapping to NERDTree
noremap <leader>m :NERDTreeToggle<cr>
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$']

" ================ ReplaceText function ============================

function! MySearchText()
    let text = input("Text to find: ")
    :call MySearchSelectedText(text)
endfunction

function! MySearchSelectedText(text)
    :execute "vimgrep /" . a:text . "/jg ".g:search_root."/**/".g:search_pattern
endfunction

"map <F3> :call MySearchText() <Bar> botright cw<cr>
"map <F3><F3> :execute "call MySearchSelectedText (\"".expand("<cword>") . "\")" <Bar> botright cw<cr>

"==========================================================================="
"Make window mosaic 
nmap <leader>mon :split<cr>:vsplit<cr><C-Down>:vsplit<cr><C-Up><leader>l
imap <leader>mon <ESC>:split<cr>:vsplit<cr><C-Down>:vsplit<cr><C-Up><leader>li

"==========================================================================="
" Make check spelling on or off 
nmap <leader>cson   :set spell<CR>
nmap <leader>csoff  :set nospell<CR>

"==========================================================================="
" Indentation (got to opening bracket and indent section) 

nmap <leader>ip [{=%

"==========================================================================="
"Highlight section between brackets (do to opening bracket and highlight)
nmap <leader>hp [{%v%<Home>
"
"==========================================================================="
" Map copy delete and paste to system clipboard
"
vmap <Leader>y "+y
vmap <Leader>d "+d

nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Double learder for selection whole line
nmap <Leader>v V

"==========================================================================="
" Mini Buffer some settigns."
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

"==========================================================================="
" TAB and Shift-TAB in normal mode cycle buffers
"
nmap <Tab> :bn<CR>
nmap <S-Tab> :bp<CR> 

"==========================================================================="
" highlight current line
set cursorline

"==========================================================================="
set laststatus=2
"set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
set statusline+=%{fugitive#statusline()}

set nowrap
set expandtab

"==========================================================================="
" Edit .vimrc file
nmap <silent> <leader>ov :e $MYVIMRC<CR>
nmap <silent> <leader>sv :w<CR> :so $MYVIMRC<CR>

"==========================================================================="
set autochdir
let NERDTreeChDirMode=2

autocmd VimEnter * NERDTree .
autocmd VimEnter * TagbarOpen
"autocmd VimEnter * helptags ~/.vim/doc
"autocmd VimEnter * exe 2 . "wincmd w"
"autocmd VimEnter * call CheckIfMain()
"autocmd VimEnter * call LoadCScopeDatabases()
"autocmd VimEnter * call DetectFileType()

"autocmd BufWritePost ~/.vimrc source ~/.vimrc
au BufNewFile,BufRead * :set relativenumber " relative line numbers

" =========== Leaving commands =========="

autocmd VimLeave * SessionSaveAs vim_auto_saved_session

" ========================================================================================
" REFRESH COMMANDS

" warning: to refresh NERDTree just type 'r' being in NERD window

nmap <F5> :e<cr>
imap <F5> <ESC>l:e<cr>i

" ========================================================================================
" " USING MARKERS
" Create marker: m<markerSign> ex. ma 
" Goto marker:   '<markerSign> ex. 'a 
"
" ========================================================================================
" " INSERT C++ GETTER NAD SETTER
"map <Leader>igs :InsertBothGetterSetter<CR>

" ========================================================================================
" " USING VIM AS HEX EDITOR
map <Leader>hon :%!xxd<CR>
map <Leader>hof :%!xxd -r<CR>

" ========================================================================================
" " Resize split window horizontally and vertically
" Shortcuts to Shift-Alt-Up - Alt is mapped as M in vim
nmap <S-M-Up> :2winc+<cr>
imap <S-M-Up> <Esc>:2winc+<cr>i
nmap <S-M-Down> :2winc-<cr>
imap <S-M-Down> <Esc>:2winc-<cr>i

nmap <S-M-Left> :2winc><cr>
imap <S-M-Left> <Esc>:2winc><cr>i
nmap <S-M-Right> :2winc<<cr>
imap <S-M-Right> <Esc>:2winc<<cr>i

" ========================================================================================
" " Set up scrolling winding one line up and down  
nnoremap <S-Up> <C-E>
nnoremap <S-Down> <C-Y> 

" ========================================================================================
" " Automatically go to the end of pasted text 
"vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" ========================================================================================
" " Quickly select text which I just pasted  
noremap gV `[v`]

" ========================================================================================
" VIM-airline  plugin 
" https://github.com/bling/vim-airline   
let g:airline#extensions#tabline#enabled = 1 
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|' 

function! AirlineInit()
  let g:airline_section_a = airline#section#create(['mode'])
  let g:airline_section_c = airline#section#create(['%F'])
endfunction
autocmd VimEnter * call AirlineInit() 

  let g:airline_theme_patch_func = 'AirlineThemePatch'
  function! AirlineThemePatch(palette)
    if g:airline_theme == 'badwolf'
      for colors in values(a:palette.inactive)
        let colors[3] = 245
      endfor
    endif
  endfunction

" ========================================================================================
" VIM-easy-align  plugin 
"
vmap <Enter> <Plug>(EasyAlign)
" Start interacptive EasyAlign for a motion/text object (e.g. <Leader>aip)
"nmap <Leader>b <Plug>(EasyAlign)

" ========================================================================================
" VIM-signature plugin 
" https://github.com/kshenoy/vim-signature 
nnoremap <leader>sm :SigntureToggleSigns<cr>

" ========================================================================================
" remap f{char} repetition keys shortcuts
noremap _ ,
noremap - ;

" =======================================================================================
" yankring
" 2nd and 3rd <cr> is needed only if you use DidYouMean plugin ()
noremap <leader>yr :YRShow <cr><cr><cr>
let g:yankring_replace_n_pkey = '<leader>yp'

" ========================================================================================
" CtrlSF shortcuts
nmap     <C-F>f :exe "CtrlSF" expand('<cword>') <CR>
vmap     <C-F>F <Plug>CtrlSFVwordExec <CR>
nmap     <C-F>n <Plug>CtrlSFCwordPath <CR>
nmap     <C-F>p <Plug>CtrlSFPwordPath <CR>
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

" ========================================================================================
" toggle normal line numbers and relative line numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc
nnoremap <leader>tn :call NumberToggle()<cr>

" " ========================================================================================
" vimwiki configuration
let g:vimwiki_list = [{'path': 'C:/vimwiki/vimsite', 'path_html': 'C:/vimwiki/vimhtml'}]
"<leader>ww - iopen wiki in current tab
"<leader>wt - iopen wiki in new tab

" " ========================================================================================
" vimwiki configuration
"<leader>rr - browse using ranger in current tab
"<leader>rt - browser using ranger in new tab
"<leader>rv - browser using ranger in tab splitted vertically
"<leader>rs - browser using ranger in tab splitted horizontally

" " ========================================================================================
" run command conriguration
":Run yourcommand - runs selected command 
" '<,'>RunVisual - run commands from selected lines 
""AutoRun - autorun commands from file on each save
" " ========================================================================================
" ctrlp configuration
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
" " ========================================================================================
" ctrlp configuration
nmap <leader><leader>l :CtrlPLocate<cr>
" " ========================================================================================
" visualmarks configuration
"vmap <unique> m <Plug>VisualMarksVisualMark
nmap <leader>< <Plug>VisualMarksGetVisualMark

" " ========================================================================================
" Make 0 go to the first character rather than the beginning
" of the line. When we're programming, we're almost always
" interested in working with text rather than empty space. If
" you want the traditional beginning of line, use ^
nnoremap 0 ^
nnoremap ^ 0

" " ========================================================================================
" ," Surround a word with "quotes"
map <leader>" ysiw"
vmap <leader>" c"<C-R>""<ESC>

" <leader>' Surround a word with 'single quotes'
map <leader>' ysiw'
vmap <leader>' c'<C-R>"'<ESC>
" <leader>) or ,( Surround a word with (parens)
" The difference is in whether a space is put in
map <leader>( ysiw(
map <leader>) ysiw)
vmap <leader>( c( <C-R>" )<ESC>
vmap <leader>) c(<C-R>")<ESC>

" <leader>[ Surround a word with [brackets]
map <leader>] ysiw]
map <leader>[ ysiw[
vmap <leader>[ c[ <C-R>" ]<ESC>
vmap <leader>] c[<C-R>"]<ESC>

" <leader>{ Surround a word with {braces}
map <leader>} ysiw}
map <leader>{ ysiw{
vmap <leader>} c{ <C-R>" }<ESC>
vmap <leader>{ c{<C-R>"}<ESC>

map <leader>` ysiw`

nnoremap <F9> :Dispatch emmake C:\\MinGW\\bin\\mingw32-make build_and_upload<CR>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

set virtualedit=onemore

noremap <up> :echoerr 'USE K TO GO UP'<CR>
noremap <down> :echoerr 'USE J TO GO UP'<CR>
noremap <right> :echoerr 'USE L TO GO UP'<CR>
noremap <left> :echoerr 'USE H TO GO UP'<CR>

inoremap <up> <ESC>:echoerr 'USE K TO GO UP'<CR>
inoremap <down> <ESC>:echoerr 'USE J TO GO UP'<CR>
inoremap <right> <ESC>:echoerr 'USE L TO GO UP'<CR>
inoremap <left> <ESC>:echoerr 'USE H TO GO UP'<CR>

"Airline
let g:airline#extensions#tabline#enabled = 1

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

"====[ Show when lines extend past column 80 ]=================================>-<=====================

highlight ColorColumn ctermfg=208 ctermbg=Black

function! MarkMargin (on)
    if exists('b:MarkMargin')
        try
            call matchdelete(b:MarkMargin)
        catch /./
        endtry
        unlet b:MarkMargin
    endif
    if a:on
        let b:MarkMargin = matchadd('ColorColumn', '\%81v\s*\S', 100)
    endif
endfunction

augroup MarkMargin
    autocmd!
    autocmd  BufEnter  *       :call MarkMargin(1)
    autocmd  BufEnter  *.vp*   :call MarkMargin(0)
augroup END


function! HLNext (blinktime)
    highlight BlackOnBlack ctermfg=black ctermbg=black
    let [bufnum, lnum, col, off] = getpos('.')
    let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
    let hide_pat = '\%<'.lnum.'l.'
            \ . '\|'
            \ . '\%'.lnum.'l\%<'.col.'v.'
            \ . '\|'
            \ . '\%'.lnum.'l\%>'.(col+matchlen-1).'v.'
            \ . '\|'
            \ . '\%>'.lnum.'l.'
    let ring = matchadd('BlackOnBlack', hide_pat, 101)
    redraw
    exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
    call matchdelete(ring)
    redraw
endfunction

" This rewires n and N to do the highlighing...
"Dosen't Work :( on guivim
"nnoremap <silent> n   n:call HLNext(0.4)<cr>
"nnoremap <silent> N   N:call HLNext(0.4)<cr>


"====[ Make tabs, trailing whitespace, and non-breaking spaces visible ]======

exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

"====[ Swap v and CTRL-V, because Block mode is more useful that Visual mode "]======

nnoremap    v   <C-V>
nnoremap <C-V>     v

vnoremap    v   <C-V>
vnoremap <C-V>     v


"====[ Mappings to activate spell-checking alternatives ]================

nmap  ;s     :set invspell spelllang=en<CR>
nmap  ;ss    :set    spell spelllang=en-basic<CR>

" To create the en-basic (or any other new) spelling list:
"
"     :mkspell  ~/.vim/spell/en-basic  basic_english_words.txt
"
" See :help mkspell

"Better Diagraphs
" I think this dosen't work
"inoremap <expr>  <C-K>   BDG_GetDigraph() 

"Lists to bullet and bullet to list
nmap  ;l   :call ListTrans_toggle_format()<CR>
vmap  ;l   :call ListTrans_toggle_format('visual')<CR>

" This does drag a visual block easier
vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()

"Easy change between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "M",
    \ "Staged"    : "S",
    \ "Untracked" : "U",
    \ "Renamed"   : "R",
    \ "Unmerged"  : "K",
    \ "Deleted"   : "D",
    \ "Dirty"     : "d",
    \ "Clean"     : "C",
    \ "Unknown"   : "?"
    \ }

set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
set guifont=mononoki:h11

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

"Rainbow parentesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"Sizes
let g:NERDTreeWinSize = 30
let g:tagbar_width = 25
let NERDTreeShowBookmarks=1
