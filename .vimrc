"Inspirado en un principio por el vimrc de danirob/vimrc

set nocompatible  " disable vi commpatibility mode
set history=1000  " increase history size

"Persist undo history between file editing sessions.
set undofile
set undodir=~/.vim/undodir

set autoindent    "autoindent ON

"Color configuration.
if &t_Co > 2
    syntax on
    silent! colorscheme dim
    set background=dark

    highlight Folded cterm=reverse ctermbg=0 ctermfg=8
    highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=8
    highlight Conceal cterm=NONE ctermbg=NONE ctermfg=8

    highlight DiffAdd ctermfg=green cterm=bold
    highlight DiffDelete ctermfg=red cterm=bold
    highlight DiffChange ctermfg=yellow

    set colorcolumn=80

endif


set laststatus=1        "always show statusbar
set wildmenu            "enable visual wildmenu

set number              "show line numbers
set relativenumber      "show number as relative by default
set showmatch           "higlight matching parentheses and brackets

"Autoclose, to skip this function use <C-v> to not use this funcions

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>
inoremap {<CR> {<CR>}<ESC>O<TAB>
inoremap {;<CR> {<CR>};<ESC>O<TAB>


