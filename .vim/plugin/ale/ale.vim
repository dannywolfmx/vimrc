let g:ale_completion_enabled = 0
"Golang
let g:ale_linters = {
\'go': ['gopls'],
\}

let g:ale_fixers = ['prettier','eslint']

let g:ale_fix_on_save = 1
