" 辅助编辑设置 ---------------------- {{{

" ===
" === 缩写
" ===
:iabbrev @@  hanwenhao@mail.xiyouwangluo.top
:iabbrev ,.  <++>
:iabbrev ,o  [{}]
" ===
" === 输入辅助
" ===
inoremap  jj    <esc>/<+[^+]*+><cr>:nohlsearch<cr>cf>
inoremap  kk    <esc>?<+[^+]*+><cr>:nohlsearch<cr>cf>
noremap   <>    <esc>/<+[^+]*+><cr>
noremap   ><    <esc>?<+[^+]*+><cr>

" }}}

