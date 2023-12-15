  " ===
  " === convert
  " ===

augroup file_convert
  autocmd!
  autocmd   FileType  xml          nnoremap <leader>jv :call <SID>XML2JSON()<cr>
augroup END

function! s:XML2JSON()
  !node ~/.vim/shell/xml2js/index.js "%"
  checktime
endfunction
