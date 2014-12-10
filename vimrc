set nocompatible
set number
set smartcase
set ignorecase
set tabstop=4
set shiftwidth=4
set softtabstop=4
set hlsearch
set smartindent
set expandtab
set gdefault
set mouse=a
set hidden
set wildmode=longest,list
set wildmenu
set title
set incsearch
set laststatus=2 "show airline bar all the time
set foldmethod=indent
set foldlevelstart=20
set scrolloff=15
set directory=~/swpfiles

" stupid capital letters
cnoreabbrev W w
cnoreabbrev Wa wa
cnoreabbrev Wq wq
cnoreabbrev Q q
cnoreabbrev Qa qa
cnoreabbrev Wqa wqa


" Here come the plugins

filetype off " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'gmarik/Vundle.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/MatchTagAlways'
Bundle 'Valloric/YouCompleteMe'
Bundle 'jiangmiao/auto-pairs'
Bundle 'flazz/vim-colorschemes'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-capslock'
Bundle 'altercation/vim-colors-solarized'
Bundle 'morhetz/gruvbox'
Bundle 'burnettk/vim-angular'
Bundle 'matthewsimo/angular-vim-snippets'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'wincent/Command-T'
Bundle 'bling/vim-airline'
Bundle 'mileszs/ack.vim'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'Lokaltog/vim-easymotion'

call vundle#end()

let g:airline_powerline_fonts = 1

filetype plugin indent on   " required!
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_auto_select=1
let g:neocomplcache_disable_auto_complete=1

let g:syntastic_csslint_options = "--ignore=ids,important,adjoining-classes"
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_javascript_jshint_args="maxcomplexity=10 eqeqeq=false"
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

let g:angular_filename_convention = 'camelcased'
let g:CommandTFileScanner='find'

map <C-n> :NERDTreeToggle<CR>
imap <C-l>  <Plug>CapsLockToggle

"autocmd FileType html setlocal shiftwidth=2 tabstop=2
set background=dark
colorscheme solarized 

au BufNewFile,BufRead *.xml.example set filetype=xml
au BufNewFile,BufRead *.tmpl set filetype=html
au BufNewFile,BufRead *.cshtml set filetype=html
au BufRead /tmp/sql* set ft=sql

