nnoremap <silent> .\  :call <SID>ChangeToGRoog()<cr>
function! s:ChangeToGRoog()
  let path = systemlist("git rev-parse --show-toplevel")[0]
  echo l:path
  :exec "cd " . l:path
endfunction
