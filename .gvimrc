" File compatibility and configuration


" Color, look and feel
set guifont=Hack\ 10

colorscheme solarized
" Use different color schemes for different set of files.
" au BufEnter *.* colorscheme zellner
au BufEnter *.log colorscheme desert

highlight StatusLineNC guifg=SlateBlue guibg=Yellow
highlight StatusLine guifg=Gray guibg=White

" Display specific
set lines=999 columns=999
set go-=T " Following line removes the toolbar

" Split windows and tabs


" General

