" ===
" === Tmux PWD
" ===

" " 在 Vim 中设置函数用来更新 Tmux 环境变量
" function! UpdateTmuxPwd()
"     if exists('$TMUX')
"         let pwd = getcwd()
"         let tmux_cmd = 'tmux setenv -g TMUX_PWD ' . shellescape(pwd)
"         " 使用 'silent !' 安静模式执行外部命令
"         silent !execute tmux_cmd
"     endif
" endfunction
"
" " 设置自动命令，每次你更改工作目录时更新 Tmux 环境变量
" autocmd VimEnter,DirChanged * silent! call UpdateTmuxPwd()
