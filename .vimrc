set nocompatible
set number
set smartcase
set ignorecase
set tabstop=4
set shiftwidth=4
set hlsearch
set smartindent
set expandtab
set gdefault
set mouse=a
set hidden
set wildmode=longest,list
set wildmenu
set title
set autochdir
set incsearch
set statusline+=%F

map f :let @/ = ""

" Vundle Stuff

filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Valloric/MatchTagAlways'
Bundle 'jiangmiao/auto-pairs'
Bundle 'Shougo/neocomplcache'

filetype plugin indent on   " required!
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_auto_select=1
let g:neocomplcache_disable_auto_complete=1

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : "\<C-x>\<C-u>"
function! s:check_back_space()
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~ '\s'
endfunction

function! s:DiffWithSaved()
    let filetype=&ft
    diffthis
    new | r # | normal! 1Gdd
    diffthis
    exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
    endfunction
com! DiffSaved call s:DiffWithSaved()

 " Set search highlighting to dark green
hi Search ctermbg=22
hi Visual ctermbg=235
hi Comment ctermfg=60
hi Directory ctermfg=63
hi MatchParen ctermbg=52
hi Pmenu ctermbg=18 ctermfg=10
hi PmenuSel ctermbg=24 ctermfg=10
hi String ctermfg=170

nnoremap <F5> :buffers<CR>:buffer<Space>

autocmd FileType html setlocal shiftwidth=2 tabstop=2
