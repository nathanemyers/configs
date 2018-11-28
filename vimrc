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
"set mouse=a
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
Bundle 'wincent/Command-T'
Bundle 'bling/vim-airline'
Bundle 'SirVer/ultisnips'
"Bundle 'mxw/vim-jsx'
Bundle 'chrisbra/Colorizer'
"Bundle 'mustache/vim-mustache-handlebars'
Bundle 'gabesoft/vim-ags'
Bundle 'mtscout6/syntastic-local-eslint.vim'

"Bundle 'ryanoasis/vim-devicons'
"Bundle 'tiagofumo/vim-nerdtree-syntax-highlight'

Bundle 'honza/vim-snippets'
Bundle 'justinj/vim-react-snippets'
Bundle 'joaohkfaria/vim-jest-snippets'
Bundle 'jparise/vim-graphql'
"Bundle 'kburdett/vim-nuuid'

"Bundle 'easymotion/vim-easymotion'

" Ruby stuff
Bundle 'tpope/vim-endwise'
Bundle 'vim-ruby/vim-ruby'
"Bundle 'tpope/vim-rails'
"Bundle 'thoughtbot/vim-rspec'

" typescript
Bundle 'leafgarland/typescript-vim'
Bundle 'Quramy/tsuquyomi'

" vim-rspec
map <Leader>r :call RunCurrentSpecFile()<CR>
map <Leader>e :call RunNearestSpec()<CR>
map <Leader>w :call RunLastSpec()<CR>
let g:rspec_runner = "os_x_iterm2"

call vundle#end()

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

let g:angular_filename_convention = 'camelcased'
let g:CommandTFileScanner='find'
"let g:CommandTTraverseSCM='pwd' " node_modules is killing me

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

let g:tsuquyomi_disable_quickfix=1
"let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
let g:tsuquyomi_disable_default_mappings = 1


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

au BufRead /tmp/sql* set ft=sql

au BufNewFile,BufRead */_layouts/*.html set ft=liquid
au BufNewFile,BufRead */_includes/*.html set ft=liquid

vmap a S(
vmap s S"

vnoremap Y "*y

" Vim dev-icons needs UTF-8
set encoding=UTF-8

" Performance fix for icons in the nerd tree
"augroup nerdtreedisablecursorline
	"autocmd!
	"autocmd FileType nerdtree setlocal nocursorline
"augroup end

"Don't unselect text when shifting
vnoremap < <gv
vnoremap > >gv

vmap <C-c> "+yi

noremap Y y$

nmap <C-p> :copen<CR>
"nmap <C-[> :cprev<CR>
nmap <C-]> :cnext<CR>

