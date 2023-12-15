nnoremap <leader>tu :call <SID>MassrenRename()<cr>

function! s:MassrenRename()
"   :set splitright
  " :vsplit
  :terminal massren
  :startinsert
  :set nonumber
  :set norelativenumber
endfunction
