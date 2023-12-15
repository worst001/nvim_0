nnoremap <silent> <leader>jd   :call <SID>NModeDateConvert()<cr>
vnoremap <silent> <leader>jd   :call <SID>VModeDateConvert()<cr>

function! s:VModeDateConvert() abort
    let vtext = GetSelctn()
    call s:DateConvert(vtext)
endfunction

function! s:NModeDateConvert() abort
    let vtext = GetCurctn()
    call s:DateConvert(vtext)
endfunction

function! s:DateConvert(text)
    let date = systemlist("~/.vim/shell/time/convert " . shellescape(expand(a:text)))
    echo date[0]
endfunction


nnoremap  <leader>ld  :call <SID>DateConvertToggle()<cr>
autocmd CursorHold * call <SID>cursorHold()
let g:can_date_convert = 0

""
" Dateconverttoggle
" 自动展示日期开关
"
" @param  <+Comment+>
"
" @return null
function! s:DateConvertToggle()
  if g:can_date_convert
    set updatetime=4000
  else
    set updatetime=1000
  endif
  let g:can_date_convert = !g:can_date_convert
endfunction

""
" CursorHold
" 光标悬停触发
"
" @param  <+Comment+>
"
" @return <+Return+>
function! s:cursorHold()
  if g:can_date_convert
    let text = expand("<cword>")
    call s:DateConvert(text)
  endif
endfunction
