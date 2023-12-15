" ===
" === Tags
" ===
noremap <leader>jc :call <SID>TagsGenerate()<cr>
func! s:TagsGenerate()
  set splitbelow
  :sp
  :term ctags -R --exclude=.git --exclude=node_modules
endfunc
