"
"Inspirado en un principio por el vimrc de danirob/vimrc

set nocompatible  " disable vi commpatibility mode
set history=1000  " increase history size

"Persist undo history between file editing sessions.
set undofile
set undodir=~/.vim/undodir

set autoindent    "autoindent ON

"Color configuration.
""if &t_Co > 2
""    syntax on
""    silent! colorscheme dim
""    set background=dark
""
""    highlight Folded cterm=reverse ctermbg=0 ctermfg=8
""    highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=8
""    highlight Conceal cterm=NONE ctermbg=NONE ctermfg=8
""
""    highlight DiffAdd ctermfg=green cterm=bold
""    highlight DiffDelete ctermfg=red cterm=bold
""    highlight DiffChange ctermfg=yellow
""	
""    set colorcolumn=80
""    highlight ColorColumn ctermbg=0 guibg=lightgrey
""endif

set termguicolors
let ayucolor="mirage"
colorscheme ayu


set laststatus=0        "always show statusbar
set wildmenu            "enable visual wildmenu

set number              "show line numbers
set relativenumber      "show number as relative by default
set showmatch           "higlight matching parentheses and brackets

"Autoclose, to skip this function use <C-v> to not use this funcions

inoremap " ""<left>
inoremap ' ''<left>
inoremap { {}<left>
"Sirve para autocompletar un corchete pero por inercia lo estoy haciendo yo
"mismo, asi que no tiene sentido usarlo para mi
inoremap ( ()<left>
inoremap [ []<left>
inoremap ` ``<left>
inoremap {<CR> {<CR>}<ESC>O<TAB>
inoremap `<CR> `<CR>`<ESC>O<TAB>
inoremap {;<CR> {<CR>};<ESC>O<TAB>

filetype plugin on
"Crear tags HTML re: https://coderwall.com/p/1omscg/vim-easy-insert-html-tags
imap <C-t> <></><Esc>5hdiwp3lpT>i


"Permite cerrar automaticamente la ventana "preview" tras completar una
"autocompletacion
augroup completion_preview_close
  autocmd!
  autocmd CompleteDone * if !&previewwindow && &completeopt =~ 'preview' | silent! pclose | endif
augroup END

set rtp+=/usr/bin/fzf
source /usr/share/doc/fzf/examples/fzf.vim


"Comando para invocar a FZF usando CTRL + p
nnoremap <C-p> :<C-u>FZF<CR>
set list lcs=tab:\|\ 
let g:airline#extensions#tabline#enabled = 1
let g:airline_statusline_ontop=1
set noshowmode
set noruler
set noshowcmd


"Netrw like nerdtree
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 18
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
