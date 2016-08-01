
" Neobundle

function! s:install_neobundle()
  if (!isdirectory(expand("$HOME/.config/nvim/bundle/neobundle.vim")))
    echo 'Downloading NeoBundle. Please wait...'
    call system(expand("mkdir -p $HOME/.config/nvim/bundle"))
    call system(expand("git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim"))
    echo 'NeoBundle has been downloaded...'
  endif
  if has('vim_starting')
    set runtimepath+=/home/mansoor/.config/nvim/bundle/neobundle.vim/
  endif
  call neobundle#begin()
  NeoBundleFetch 'Shougo/neobundle.vim'
  source ~/.config/nvim/bundle.vim
  call neobundle#end()
  NeoBundleCheck
endfunction
"call s:install_neobundle()

" Colors

let base16colorspace=256
syntax enable
set background=dark
colorscheme base16-gooey

" Spaces and Tabs

set tabstop=4        
set softtabstop=4
set expandtab
set shiftwidth=4

" UI Config

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set number
set relativenumber
set showcmd
set cursorline
filetype plugin indent on
set showmatch
set mouse=n
"set cc=79

" Searching

set incsearch
set hlsearch
set smartcase

" Miscellaneous

set clipboard+=unnamedplus
set noswapfile
set undofile
set undodir=~/.config/nvim/temp/undodir
set completeopt-=preview

"source ~/.config/nvim/config/plugin/all.vim
source ~/.config/nvim/config/bindings.vim
"source ~/.config/nvim/config/autocmds.vim
