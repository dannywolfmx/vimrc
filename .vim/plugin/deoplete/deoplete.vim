let g:deoplete#enable_at_startup = 1 


call deoplete#custom#option('omni_patterns',{
    \ 'auto_complete_delay': 200,
    \ 'smart_case': v:true,
    \ 'ignore_case': v:true,
    \ 'go': '[^. *\t]\.\w*', 
    \ })

"Use Tab to autocomple
function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#manual_complete()
""Deoplete tiene un mal commportamiento cuando hay un solo resultado noselect
""lo corrige
set completeopt=menu,noselect
