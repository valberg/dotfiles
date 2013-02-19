set encoding=utf-8
set nocompatible

""" Vundle
    filetype off

    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'gmarik/vundle'

    Bundle 'ctrlp.vim'
    Bundle 'delimitMate.vim'
    Bundle 'molokai'
    Bundle 'snipMate'
    Bundle 'snipmate-snippets'
    Bundle 'The-NERD-Commenter'
    Bundle 'The-NERD-tree'
    Bundle 'ZenCoding.vim'
    Bundle 'Syntastic'
    Bundle 'LaTeX-Box'
    Bundle 'vim-coffee-script'
    Bundle 'EasyMotion'
    Bundle 'Buffergator'
    Bundle 'less.vim'
    Bundle 'pythoncomplete'
    Bundle 'NrrwRgn'
    Bundle 'neocomplcache'
    Bundle 'Markdown'
    Bundle 'Python-mode-klen'
    Bundle 'autotag'
    Bundle 'Tagbar'
    Bundle 'Gundo'
    Bundle 'Lokaltog/vim-powerline.git'
    Bundle 'myusuf3/numbers.vim.git'
    Bundle 'tpope/vim-fugitive'
    Bundle 'quickfixsigns'

    filetype plugin indent on


""" Colorscheme
    colorscheme molokai
    let g:molokai_original = 1
    set background=dark
    "colorscheme clouds_midnight

""" SVNdiff
" snvdiff auto
    "autocmd BufCreate * call Svndiff("next")
    let g:svndiff_autoupdate = 1
    let g:Powerline_symbols = 'fancy'


""" Syntastic
    let g:syntastic_enable_ballons = 0
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_loc_list_height = 5
    let g:syntastic_echo_current_error = 1
    let g:syntastic_quiet_warnings=1


""" Filetype
    au FileType python set ft=python.django


""" General config
    let mapleader = ","
    syntax enable
    set t_Co=256
    set number
    set cursorcolumn            " Where on the current line are we?
    set cursorline              " Where in the file are we?
    set showmatch
    set tabstop=4       " Tabs should only be 4 spaces!
    set shiftwidth=4
    set expandtab       " ONLY spaces!
    set softtabstop=4
    set colorcolumn=+2  " Color the 80'th character column
    set textwidth=79
    set wrapmargin=79
    set wrap
    set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
    set wildignore=*.sw*,*.pyc,*.o,*.jpg,*.png,*.gif
    set so=999 " Keep current line vertically centered
    set laststatus=2            " always show the status line


""" Search & replace
    nnoremap / /\v
    vnoremap / /\v
    set ignorecase
    set smartcase
    set gdefault
    set incsearch
    set showmatch
    set hlsearch
    nnoremap <leader><space> :noh<cr> " clear search highlight
    nnoremap <tab> %
    vnoremap <tab> %


""" Bash yourself to learn hjkl
    nnoremap <up> <nop>
    nnoremap <down> <nop>
    nnoremap <left> <nop>
    nnoremap <right> <nop>
    inoremap <up> <nop>
    inoremap <down> <nop>
    inoremap <left> <nop>
    inoremap <right> <nop>
    nnoremap j gj
    nnoremap k gk


""" Save file on lost focus
" au FocusLost * :wa


""" The_NERD_Tree
    let NERDTreeChDirMode=2
    let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
    let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
    let NERDTreeShowBookmarks=1
    let NERDTreeQuitOnOpen=1
    let NERDTreeWinPos="right"
    let NERDTreeMinimalUI=1
    map <F3> :NERDTreeToggle<CR>

""" Buffergator
    map <F4> :BuffergatorToggle<CR>
    let g:buffergator_autoexpand_on_split = 0
    let g:buffergator_display_regime = "filepath"
    let g:buffergator_viewport_split_policy = "T"
    let g:buffergator_split_size = 10

""" Gundo
    nnoremap <F5> :GundoToggle<CR>


""" Zencoding
    let g:user_zen_settings = {'indentation' : '    '}


""" Some tweaks for better life
    command! -bar -bang W :w<bang>  " :W happens all the time!
    command! -bar -bang Q :q<bang>  " So does :Q
    command! -bar -bang Tabe :tabe<bang> " Big T is also a bastard

    """ Stop help from not being helpful
    inoremap <F1> <ESC>
    nnoremap <F1> <ESC>
    vnoremap <F1> <ESC>


    """ Little itch scratching
    nnoremap ; :

""" Strip whitespaces
    nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
    autocmd BufWritePre * :%s/\s\+$//e

""" Fold HTML tags
    nnoremap <leader>ft Vatzf


""" Sort CSS properties
    nmap <F7> :g#\({\n\)\@<=#.,/}/sort<CR>


""" Format paragraph
    nnoremap <leader>q gqip


""" Reselect tekst
    nnoremap <leader>v V`]


""" Edit .vimrc quickly
    nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>


""" Make jj exit insert mode
    inoremap jj <ESC>


""" Move between windows
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l


""" Open split window with ,w
    nnoremap <leader>w <C-w>v<C-w>l

""" Run things within vim with 'enter'
    map <C-M> :make<CR>'

""" LaTeX
    autocmd FileType tex setlocal fileencoding=utf-8
    autocmd FileType tex setlocal makeprg=pdflatex\ '%'
    autocmd FileType tex setlocal spell
    autocmd FileType tex setlocal spelllang=da
    " make sure vim-latex is loaded if the file is an empty .tex
    let g:tex_flavor='latex'

""" Omnicompletion
    autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS

""" neocomplcache
    let g:neocomplcache_enable_at_startup = 1

""" Tagbar
    noremap <silent> <F6> :TagbarToggle<CR>

""" Tags
    " Using <C-_> is a bit easier on the hands
    nnoremap <C-_> <C-]>

""" GVIM
set guioptions-=r
set guioptions-=l
set guioptions-=L
set guioptions-=R
set guifont=Inconsolata-dz\ for\ Powerline\ Medium\ 8
set guioptions-=T
set guioptions-=m
