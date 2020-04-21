set nocompatible              " be iMproved, required
filetype off                  " required


"junegunn vim plugin manager
"https://github.com/junegunn/vim-plug
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugins')
Plug 'tpope/vim-fugitive'
" Plug 'zxqfl/tabnine-vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'bfredl/nvim-miniyank' " Requires installation of Lua but doesn't seem to work
Plug 'itchyny/lightline.vim'
" Plug 'amiorin/vim-project'
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
" Plug 'joonty/vdebug'
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'ncm2/ncm2'
call plug#end()



filetype plugin indent on    " required

set modelines=0 "prevents security exploits

set background=dark
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white "visual line

set number relativenumber "turn on hybrid numbering (show absolute with relative)

set expandtab "spaces instead of tabs
set autoindent
set si "Smart Indent
set smarttab

set tabstop=4 "tab = 4 spaces
set shiftwidth=4

set showmatch "show matching parantheses"

set hlsearch " Highlight search results
set incsearch " Search as you type
set mat=1000 " 1000 tenth of a second blink when matching brackets
set ignorecase
set smartcase
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc> " Make double-<Esc> clear search highlights

syntax enable " Enable syntax highlighting
syntax on

" Vertical center on focused line when in insert mode.
autocmd InsertEnter * norm zz

" Autocompletion
set wildmode=longest,list,full

"Search down in subfolders
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Make splits happen below and to the right
set splitbelow splitright

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

set history=500 " Lines of history VIM remembers

set timeoutlen=5000 ttimeoutlen=0 " 5 sec escape out of insert mode

set undofile "creates .un~ file that contains undo information to undo previous actions

set mouse=a

" Start nerdtree if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = 'v'
map <C-e> :NERDTreeToggle<CR>


command! MakeTags !ctags -R .
