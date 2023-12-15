" ===
" === 打开游戏
" ===
nnoremap <leader>og  :call <SID>OpenLocalGame()<cr>

fun! s:OpenLocalGame()
  :tabnew
  :silent! call <SID>execGame()
endf

fun! s:execGame()
  :term /Applications/DeSmuME.app/Contents/MacOS/DeSmuME
endf
