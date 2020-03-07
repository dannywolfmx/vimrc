"Pedir a vim que muestre sus splits en la derecha
"
let g:go_fmt_command = "goimports"

set splitright
"Ejecutar main.go al teclear  \ + r
autocmd FileType go nmap <leader>r :w<CR>:vert term go run %<CR>



