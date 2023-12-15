nnoremap <leader>lt :call <SID>LocalThemeCustom()<cr>

function! s:LocalThemeCustom()
  augroup theme_customization
    autocmd!
    autocmd ColorScheme dracula hi VertSplit gui=none cterm=none
  augroup END

  augroup theme_customization_fix
    autocmd!
    highlight VertSplit gui=none guibg=none cterm=none ctermbg=none ctermfg=none
    highlight Normal ctermbg=none
    highlight Visual guibg=#ABB2BF ctermbg=146 ctermfg=7
    highlight Pmenu guibg=none cterm=none ctermbg=none ctermfg=13
    highlight ColorColumn ctermbg=4
    highlight LineNr ctermbg=none
  augroup END
endfunction
