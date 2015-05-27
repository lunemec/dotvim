set t_Co=256
" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

" disable audio bell
set noerrorbells visualbell t_vb=
set omnifunc=syntaxcomplete#Complete
" smart tries to indent correctly for programming languages
set smartindent

" set default case-insensitive searching
set ignorecase

" set default indent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" set spaces and tabs depending on filetype
if has("autocmd")
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

    autocmd FileType html setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType css setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

    " set unknown extensions to filetype
    autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml
    autocmd BufNewFile,BufRead *.jsx setfiletype javascript

    " if file is .vimrc re-load vimrc
    autocmd! BufWritePost .vimrc source $MYVIMRC
endif

" disable backwards compatible Vi mode.
set nocompatible
" set vertical line at character 81.
set colorcolumn=81
" highlight search
set hlsearch
" activate default hidden buffers
set hidden

" set mouse to work correctly
" enable mouse for all modes
set mouse=a
set ttymouse=xterm2

" history
set history=1000
set undolevels=1000

" highlight tabs
set listchars=tab:▸\ ,nbsp:_,trail:.,eol:¬
set list


" color scheme
colorscheme lulu
set ruler
set number
set background=dark
set backspace=indent,eol,start


" quicker actions
set timeoutlen=500

" pymode specific options
let g:pymode = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 1
let g:pymode_folding = 1
let g:pymode_lint_unmodified = 1
let g:pymode_lint_ignore = "E501"
let g:pymode_lint_on_fly = 0
" rope settings
let g:pymode_rope = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_regenerate_on_write = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion_bind = '<C-Space>'

set enc=utf-8
set fileencoding=utf-8
set viminfo='100,h

" ctrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*.pyc,*.pyo
let g:ctrlp_max_depth = 6

" vim-airline
set laststatus=2
let g:Powerline_symbols = 'unicode'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "murmur"
let g:airline_powerline_fonts = 1

" clipboard on F7
set clipboard=unnamedplus

"copy
vmap <F7> "+ygv"*y`>
""paste (Shift-F7 to paste after normal cursor, Ctrl-F7 to paste over visual selection)
nmap <F7> "*gP
nmap <S-F7> "*gp
imap <F7> <C-r><C-o>*
vmap <C-F7> "*p`]
cmap <F7> <C-r><C-o>*

" Python specific binding - ctrl+w: goto next word separated by _
" this_is_sentence. ctrl+b: go back one _.
nmap <C-w> f_l
nmap <C-b> F_b

" Rebind <Leader> key
let mapleader = ","

" set tab movement
nmap <Leader>n :bp<CR>
nmap <Leader>m :bn<CR>

" movement of blocks without select losing
vnoremap < <gv
vnoremap > >gv

" set moving between windows to ctrl+arrows
nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j

" set moving between windows to ctrl+hjkl
noremap <silent> <C-l> <c-w>l
noremap <silent> <C-h> <c-w>h
noremap <silent> <C-k> <c-w>k
noremap <silent> <C-j> <c-w>j

" autorun nerdtree
let NERDTreeIgnore = ['\.pyc$']
autocmd VimEnter * NERDTree
