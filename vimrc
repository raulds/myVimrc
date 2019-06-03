
set nocompatible
filetype off
syntax on

"****************************************
" Vundle initialization 
"****************************************
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"****************************************
" Plugin zone installation
"****************************************
Plugin 'morhetz/gruvbox'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
"****************************************


" Configuring gruvbox installed plugin
colorscheme gruvbox
set background=dark
"set background=light

" youcompleteme configuraiont
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/extraconfg/.ycm_extra_conf.py'

"set guioptions-=T
"set guioptions-=m

" filetype plugin indent on
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4.
set softtabstop=4   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.

" Personal basic configuration
set showmode
set showmatch
set showcmd

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" show line numbers
set number
" show line and collumn info
set ruler

"enhance the match pairs and setlist to see empty spaces
set matchpairs+=<:>
" set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

"remaping the space button to open and close folded code blocks
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

"with this you will save your folds doing :mksession or :mks
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
"autocmd BufWinLeave *.* mkviewautocmd

