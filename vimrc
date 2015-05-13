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
"set mouse=a "I'm a crazy person
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
set term=screen-256color

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
Bundle 'othree/javascript-libraries-syntax.vim'
"Bundle 'jason0x43/vim-js-indent'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/MatchTagAlways'
Bundle 'Valloric/YouCompleteMe'
Bundle 'jiangmiao/auto-pairs'
Bundle 'flazz/vim-colorschemes'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-capslock'
Bundle 'altercation/vim-colors-solarized'
Bundle 'morhetz/gruvbox'
Bundle 'burnettk/vim-angular'
Bundle 'matthewsimo/angular-vim-snippets'
Bundle 'wincent/Command-T'
Bundle 'bling/vim-airline'
Bundle 'mileszs/ack.vim'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'marijnh/tern_for_vim'
Bundle 'dbarsam/vim-rainbow-parentheses'

call vundle#end()

let g:rainbow_activate = 1
let b:rainbow_matchpairs = [['(', ')'], ['\[', '\]'], ['{', '}']]

let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
let g:indent_guides_start_level=3
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=0

" disable preview pane for tern
set completeopt-=preview

let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#checks=['indent']

filetype plugin indent on   " required!
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_auto_select=1
let g:neocomplcache_disable_auto_complete=1

let g:syntastic_csslint_options = "--ignore=ids,important,adjoining-classes"
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_javascript_jshint_args="maxcomplexity=10 eqeqeq=false validthis=false"
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

let g:syntastic_html_tidy_exec="/usr/local/bin/tidy"
" disable almost everything for angular
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute ", "trimming empty <", "unescaped &", "lacks \"action", "is not recognized!", "discarding unexpected"]

let g:angular_filename_convention = 'camelcased'

let g:CommandTFileScanner='find'

let g:UltiSnipsExpandTrigger='<C-f>'
let g:UltiSnipsJumpForwardTrigger='<C-j>'
let g:UltiSnipsJumpBackwardTrigger='<C-k>'

let g:EasyMotion_startofline=0
map <C-h> <Plug>(easymotion-b)
map <C-l> <Plug>(easymotion-w)

map <C-n> :NERDTreeToggle<CR>

imap <C-l> <Plug>CapsLockToggle

set background=dark
"colorscheme molokai 
"colorscheme flattr
"colorscheme desertEx
"colorscheme kolor
colorscheme obsidian

au BufNewFile,BufRead *.xml.example set filetype=xml
au BufNewFile,BufRead *.tmpl set filetype=html
au BufNewFile,BufRead *.cshtml set filetype=html
au BufRead /tmp/sql* set ft=sql

:autocmd InsertEnter,InsertLeave * set cul! "highlight edit line

:nnoremap <F12> :exe ':silent !chromium-browser % &'<CR>
:nnoremap <F9> :redraw!<CR>
