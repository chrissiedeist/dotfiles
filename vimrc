set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/tComment'
Bundle 'Syntastic'
Bundle 'mklabs/vim-backbone'
Bundle 'scrooloose/nerdtree'
Bundle 'tomtom/tlib_vim'
Bundle 'chrissiedeist/vim-snippets'
Bundle 'w1zeman1p/vim-snipmate'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-vividchalk'
Bundle 'tpope/vim-surround'
"

syntax enable
set columns=101
set lines=54
set nows
set ic
set ai
set ts=4
set sw=4
set enc=utf-8
set nobackup
set number
set matchpairs=(:),{:},[:],<:>
set nolist
set listchars=trail:$
set expandtab
set shiftwidth=2
set softtabstop=2
set nocompatible  
set textwidth=72
set modifiable
filetype on         
filetype indent on   
filetype plugin on    
:let g:closetag_html_style=1

vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>
vmap <silent> ,y y:new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/reg.txt<CR>
nmap <silent> ,y :new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/reg.txt<CR>
map <silent> ,p :sview ~/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>p
map <silent> ,P :sview ~/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>P
"Chrissie's additions
autocmd FileType ruby map <F9> <CR>:!ruby -c %<CR>
autocmd BufNewFile,BufRead *.html.erb set filetype=html
autocmd BufNewFile,BufRead *.jst.ejs set filetype=html
autocmd BufNewFile,BufRead *.jst set filetype=html
autocmd BufNewFile,BufRead *.hbs set filetype=html

colorscheme vividchalk
set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set pastetoggle=<F10>
inoremap <C-v> <F10><C-r>+<F10>

"Pertaining to rails.vim

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

let g:rails_default_file='config/database.yml'
