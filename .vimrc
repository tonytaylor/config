""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" automatic reloading of vimrc
autocmd! bufwritepost .vimrc source %

" the lines of history to hold on to
set history=500

" this is necessary for specific (read: most) plugin activation
set nocompatible

" Enable filetype plugins
filetype plugin on
filetype indent on

" Always show current position
set ruler

" Highlight search results
set hlsearch

" Show matching brackets when text cursor is over them
set showmatch

" Show line numbers in left gutter
set number

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Colors and fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Syntax highlighting
syntax enable

colorscheme desert
set background=dark

" GUI specific options
if has("gui_running")
    set guioptions:-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
	if has("gui_gtk2")
		set guifont=Inconsolata\ 12
	endif
endif


" set standard character encoding
set encoding=utf8

" set stander file type to UNIX
set ffs=unix,dos,mac

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" global
set shiftwidth=4
set tabstop=4

"file specific - this should be migrated before it gets stupid
autocmd FileType json setlocal shiftwidth=2 tabstop=2 "json settings
autocmd BufNewFile,BufRead Jakefile set ft=javascript "jakefile > js

set ai "auto indent
set is "smart indent

" tab completion
set wildmode=longest,list
set wildmenu


"" load plugins via pathogen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#runtime_append_all_bundles()
call pathogen#infect()
call pathogen#helptags()
"call pathogen#infect('~/.vim/bundle')


"" vim-clojure settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:clojure_align_multiline_strings = 1
"let g:vimclojure#HighlightBuiltins = 1
"let g:vimclojure#ParenRainbow = 1
"let vimclojure#NailgunClient = "/home/tony/bin/ng"
"let vimclojure#WantNailgun = 1
"

"" vim-syntastic settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_javascript_jshint_conf="~/.jshintrc"
