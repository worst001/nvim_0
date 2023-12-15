nnoremap <leader>le :call <SID>ExceedLineToggle()<cr>

function! s:ExceedLineToggle()
    if &colorcolumn
        setlocal colorcolumn=0
    else
        setlocal colorcolumn=81
    endif
endfunction
