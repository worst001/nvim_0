" ===
" === txt-highlight
" ===

" nnoremap <leader>lh :call <SID>TextHighlight()<cr>

let g:text_highlight = 0

function! s:TextHighlight()
  if g:text_highlight
    highlight Normal ctermfg=None guifg=None
    let g:text_highlight = 0
  else
    highlight Normal ctermfg=111 guifg=#00AAFF
    let g:text_highlight = 1
  endif
endfunction
