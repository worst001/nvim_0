" nnoremap <leader>tr :call <SID>RangerOpen()<cr>

function! s:RangerOpen()
  :terminal ranger
  call TerminalInit()
  :startinsert
endfunction
