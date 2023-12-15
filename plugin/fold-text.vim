  " ===
  " === 自定义
  " ===

augroup filetype_text
  autocmd FileType text setlocal   foldmethod=marker
  autocmd FileType text call       <SID>CustomFold()
  autocmd FileType text setlocal   fen
  autocmd BufRead  *.txt   nnoremap	<localleader>{ I" ---------------------- {{{<esc>
  autocmd BufRead  *.txt   nnoremap	<localleader>} I" }}}<esc>
augroup end
function! s:CustomFold()
    setl foldtext=<SID>FoldText()
    setl foldmethod=syntax
    setl foldlevelstart=1
    highlight   Folded  ctermbg=2   ctermfg=3
    "syn region foldBraces start="{{{" end="}}}" transparent fold keepend extend
    syn region foldBraces start="{{{" end="}}}" transparent fold
endfunction
function! s:FoldText()
  return substitute(getline(v:foldstart), '{.*', '{...}', '')
endfunction
