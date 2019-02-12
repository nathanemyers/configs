set nocompatible
set number
set smartcase
set ignorecase
set tabstop=2
set shiftwidth=2
set softtabstop=2
set hlsearch
set smartindent
set expandtab
set gdefault
set hidden
set wildmode=longest,list
set wildmenu
set incsearch
set laststatus=2 "show airline bar all the time
set foldmethod=indent
set foldlevelstart=20
set scrolloff=15
set directory=~/.swpfiles
set backspace=start,indent,eol
set wildignore=*/node_modules,*/dist/*,*/bin
set autoread "for those times I edit something in IDEA

" stupid capital letters
cnoreabbrev W w
cnoreabbrev Wa wa
cnoreabbrev Wq wq
cnoreabbrev Q q
cnoreabbrev Qa qa
cnoreabbrev Wqa wqa

" Here come the plugins
call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Valloric/MatchTagAlways'
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'bling/vim-airline'
Plug 'mxw/vim-jsx'
Plug 'chrisbra/Colorizer'
Plug 'gabesoft/vim-ags'
Plug 'w0rp/ale'
"Plug 'jparise/vim-graphql'
"Plug 'kburdett/vim-nuuid'

"Plug 'ryanoasis/vim-devicons'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'justinj/vim-react-snippets'
Plug 'joaohkfaria/vim-jest-snippets'

"Plug 'easymotion/vim-easymotion'

" Ruby stuff
"Plug 'tpope/vim-endwise'
"Plug 'vim-ruby/vim-ruby'
"Plug 'tpope/vim-rails'
"Plug 'thoughtbot/vim-rspec'

" typescript
"Plug 'leafgarland/typescript-vim'
"Plug 'Quramy/tsuquyomi'

call plug#end()

let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#checks=['indent']
let g:airline_section_y='' " get a little more airline space
let g:airline#extensions#branch#displayed_head_limit = 16 

filetype plugin indent on   " required!
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_auto_select=1
let g:neocomplcache_disable_auto_complete=1

let g:syntastic_csslint_options = "--ignore=ids,important,adjoining-classes"
let g:syntastic_python_flake8_args='--ignore=E401,E501,W391'
let g:syntastic_javascript_checkers=['eslint']
"let g:syntastic_javascript_jshint_esversion = 6
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

let g:EasyMotion_startofline=0
map <C-h> <Plug>(easymotion-b)
map <C-l> <Plug>(easymotion-w)
map <C-k> <Plug>(easymotion-b)
map <C-j> <Plug>(easymotion-w)

let g:UltiSnipsExpandTrigger='<c-f>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', 'node_modules']

set background=dark
let g:solarized_visibility="high"
let g:solarized_contrast="low"
let g:solarized_termcolors=256
colorscheme gruvbox

syntax on
nmap R :colorscheme random<CR>:echo g:colors_name<CR>

let g:colorizer_auto_color = 1
let g:colorizer_auto_filetype = 'css,scss,html'

let g:vim_json_syntax_conceal = 0

au BufNewFile,BufRead */_layouts/*.html set ft=liquid
au BufNewFile,BufRead */_includes/*.html set ft=liquid

vmap a S(
vmap s S"

vnoremap Y "*y

" Vim dev-icons needs UTF-8
set encoding=UTF-8

"Don't unselect text when shifting
vnoremap < <gv
vnoremap > >gv

vmap <C-c> "+yi

noremap Y y$

nmap <C-p> :copen<CR>
"nmap <C-[> :cprev<CR>
nmap <C-]> :cnext<CR>
