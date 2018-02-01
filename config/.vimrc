" Print line number
map <F9> :set invnumber<CR>
syntax enable

" Always show last statusline
set  laststatus=2

" Set cursorlines to get track of the cursor
set cursorline
:hi CursorLine cterm=NONE ctermbg=4 ctermfg=white guibg=darkred guifg=white

" Case insensitive search
set ic

" Colorscheme desert
colorscheme desert

" Set encoding
set encoding=utf-8
set fileencoding=utf-8

" Activate indenting for files and Set auto indenting
filetype indent on
set ai

" Activate or not the paste with indent
set pastetoggle=<F3>
