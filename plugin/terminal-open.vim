" ===
" === Terminal
" ===
nnoremap <leader>ts   :call <SID>TerminalSOpen()<cr>
nnoremap <leader>tv   :call <SID>TerminalVOpen()<cr>
nnoremap <leader>tt   :call <SID>TerminalOpen()<cr>

func! s:TerminalSOpen()
  :belowright split term://zsh
  call TerminalInit()
  :startinsert
endfunc

func! s:TerminalVOpen()
  :belowright vsplit term://zsh
  call TerminalInit()
  :startinsert
endfunc

func! s:TerminalOpen()
  term zsh
  call TerminalInit()
  :startinsert
endfunc

nnoremap <leader>ty   :call <SID>NTerminalRun()<cr>
vnoremap <leader>ty   :call <SID>VTerminalRun()<cr>
nnoremap <leader>tx   :call <SID>NXTerminalRun()<cr>
vnoremap <leader>tx   :call <SID>VXTerminalRun()<cr>

function! s:NTerminalRun() abort
    let vtext = GetCurctn()
    call s:TerminalRun(vtext)
endfunction

function! s:VTerminalRun() abort
    let vtext = GetSelctn()
    call s:TerminalRun(vtext)
endfunction

function! s:NXTerminalRun() abort
    let vtext = GetCurctn()
    call s:TerminalSRun(vtext)
endfunction

function! s:VXTerminalRun() abort
    let vtext = GetSelctn()
    call s:TerminalSRun(vtext)
endfunction

""
" Terminalrun
" 预运行终端命令
"
" @param  text
"
" @return void
function! s:TerminalRun(text)
  let regTmp = @a
  let @a = a:text
  :call s:TerminalVOpen()
  :normal! "api
  let @a = regTmp
endfunction

function! s:TerminalSRun(text)
  let regTmp = @a
  let @a = a:text
  :call s:TerminalSOpen()
  :normal! "api
  let @a = regTmp
endfunction


nnoremap <leader>th   :call <SID>TerminalHistory()<cr>

""
" Terminalhistory
" 列出终端历史
"
" @param  <+Comment+>
"
" @return <+Return+>
function! s:TerminalHistory()
  :call s:TerminalRun('hstr')
endfunction
