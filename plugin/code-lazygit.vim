nnoremap <leader>tg :call <SID>LazygitOpen()<cr>

function! s:LazygitOpen()
  :terminal lazygit
  :startinsert
endfunction


nnoremap <leader>glr :call <SID>GitvRotate()<cr>

fun! s:GitvRotate()
  if g:Gitv_OpenHorizontal
    let g:Gitv_OpenHorizontal = 0
  else
    let g:Gitv_OpenHorizontal = 1
  endif
endf

