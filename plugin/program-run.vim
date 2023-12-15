" ===
" === Run
" ===
nnoremap <leader>xy :call <SID>RightCompileRun()<cr>
nnoremap <leader>xx :call <SID>BelowCompileRun()<cr>

fun! s:RightCompileRun()
  exec "w"
  if &filetype == 'markdown'
    :MarkdownPreview
  elseif &filetype == 'html'
    silent! exec "!open % &"
  elseif &filetype == 'tex'
    silent! exec "!open " . shellescape(expand('%:r').".pdf")
  else
    :set splitright
    :vsp
    :silent! call <SID>CompileRunGcc()
  endif
endf

fun! s:BelowCompileRun()
  exec "w"
  if &filetype == 'markdown'
    :MarkdownPreview
  elseif &filetype == 'html'
    silent! exec "!open % &"
  elseif &filetype == 'tex'
    silent! exec "!open " . shellescape(expand('%:r').".pdf")
  else
    :set splitbelow
    :sp
    :silent! call <SID>CompileRunGcc()
  endif
endf

func! s:CompileRunGcc()
  :set nonu
  :set norelativenumber
  if &filetype == 'c'
    exec "!gcc % -o %<"
    :term time ./%<
  elseif &filetype == 'cpp'
    exec "!g++ -std=c++11 % -Wall -o %<"
    :term time ./%<
  elseif &filetype == 'cs'
    exec "!mcs % -out:%<"
    :term time mono %<
  elseif &filetype == 'java'
    exec "!javac %"
    :term time java -classpath %:h %:t:r
  elseif &filetype == 'scala'
    exec "!scalac %"
    :term time scala -classpath %:h %:t:r
  elseif &filetype == 'sh'
    :term time sh %
  elseif &filetype == 'zsh'
    :term time zsh %
  elseif &filetype == 'python'
    :term time python3 %
  elseif &filetype == 'go'
    :term time go run %
  elseif &filetype == 'php'
    :term time php %
  elseif &filetype == 'lua'
    :term time lua %
  elseif &filetype == 'javascript'
    :term time node %
  elseif &filetype == 'ruby'
    :term time ruby %
  elseif &filetype == 'perl'
    :term perl %
  endif
endfunc


