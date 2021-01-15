set sw=2
set ts=2
set expandtab
set hlsearch
set number

set filetype=on
autocmd filetype cpp nmap <buffer> <f5> :w<bar>!g++ -o %:r % && ./%:r<cr>
autocmd filetype python nmap <buffer> <f5> :w<bar>!python3 %<cr>
"
" colors designed for use with term=xterm
"
colorscheme darkblue

set laststatus=2
highlight statusline cterm=none ctermbg=gray ctermfg=black

set showtabline=2
highlight tabline cterm=none ctermbg=darkgray ctermfg=gray
highlight tablinefill cterm=none ctermbg=black ctermfg=darkgray
highlight tablinesel cterm=none ctermbg=gray ctermfg=black

set cursorline
highlight cursorline cterm=none ctermbg=darkblue
highlight cursorlinenr cterm=none ctermbg=darkblue
