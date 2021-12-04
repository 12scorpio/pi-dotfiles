" use vim-plug as plugin manager
call plug#begin('$XDG_CONFIG_HOME/nvim/autoload/plugged')
  Plug 'junegunn/seoul256.vim'
  Plug 'bling/vim-bufferline'
  Plug 'preservim/nerdtree'
  Plug 'airblabe/vim-gitgutter'
call plug#end()

" enable theme
colo seoul256


" enable pasting
set clipboard+=unnamedplus

" no swap file
set noswapfile

" save undo trees in files
set undofile
set undodir=$HOME/.config/nvim/undo

" number of undo saved
set undolevels=10000
set undoreload=10000

" set line numbers
set number

" use 4 spaces instead of tab
" copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
