" 按键设置 ---------------------- {{{
:let mapleader="\<Space>"

  " 环境配置
:nnoremap <F2>            :edit $HOME/.vim/vimrc<cr>
:nnoremap <leader><F1>    :edit $HOME/.zsh_history<cr>
:nnoremap <leader><F2>    :edit $HOME/.vim/init/init-packages.vim<cr>
:nnoremap <leader><F3>    :edit $HOME/.vim/lua/plugins.lua<cr>
:nnoremap <leader>sx      :source %<cr>
" :nnoremap <silent> t.     :cd %:p:h<CR>:NERDTree<cr>
:nnoremap <silent>cd      :cd %:p:h<CR>
:nnoremap <silent>yp      :let @+ = expand('%:p:h')<cr>
  " 基本配置
":inoremap <m-s>   <esc>:w<cr>
:inoremap jk          <esc>
:noremap  K           9k
:noremap  J           9j
:noremap  L           12l
:noremap  H           12h
" :nnoremap <Up>        k
" :nnoremap <Down>      j
" :nnoremap <Right>     l
" :nnoremap <Left>      h
:nnoremap <S-Up>      9k
:nnoremap <S-Down>    9j
:nnoremap <S-Right>   12l
:nnoremap <S-Left>    12h
:noremap  {           20zh
:noremap  }           20zl
:noremap  --          :join<cr>
  " 窗口设置
:nnoremap <m-w>       :q<cr>
:nnoremap Q           :qall<cr>
:nnoremap <leader>nn  :new<cr>
:nnoremap <leader>nv  :vnew<cr>
:nnoremap <leader>nt  :tab new<cr>
:nnoremap <c-v><c-v>  :rightbelow vsplit<cr>
:nnoremap <c-s><c-s>  :rightbelow split<cr>
:nnoremap <leader>nd  :call delete('')<left><left>
:nnoremap <leader>ne  :edit 
:nnoremap <leader>ns  :saveas 
:nnoremap <leader>nr  :recover 
:nnoremap <c-s><c-v>  <c-w>t<c-w>H
:nnoremap <c-v><c-s>  <c-w>t<c-w>K
:nnoremap <m-l>       <c-w>l
:nnoremap <m-h>       <c-w>h
:nnoremap <m-k>       <c-w>k
:nnoremap <m-j>       <c-w>j
:nnoremap <m-Up>        <c-w>5-
:nnoremap <m-Right>     <c-w>5>
:nnoremap <m-Down>      <c-w>5+
:nnoremap <m-Left>      <c-w>5<
  " 标签设置
:nnoremap t1          1gt
:nnoremap t2          2gt
:nnoremap t3          3gt
:nnoremap t4          4gt
:nnoremap t5          5gt
:nnoremap t6          6gt
:nnoremap t7          7gt
:nnoremap t8          8gt
:nnoremap t9          9gt
:nnoremap <m-]>       :+tabnext<cr>
:nnoremap <m-[>       :-tabnext<cr>
  " 缓冲设置
:noremap <TAb>          :bn<CR>
:noremap <S-Tab>        :bp<CR>
" :noremap <Leader><Tab>  :MBEbd<CR>
:noremap <Leader><Tab>  :bdelete<CR>

  " 常用大小写切换
:noremap  ul          wbguw
:noremap  up          wbgUw
  " 快捷功能
:onoremap ib          /return<cr>
:onoremap i(          :<c-u>normal!   f(vi(<cr>
:onoremap i<          :<c-u>normal!   f<vi<<cr>
:onoremap i[          :<c-u>normal!   f[vi[<cr>
:onoremap i{          :<c-u>normal!   f{vi{<cr>
:onoremap i'          :<c-u>normal!   f'vi'<cr>
:onoremap i"          :<c-u>normal!   f"vi"<cr>
:onoremap i`          :<c-u>normal!   f`vi`<cr>
  " easymotion
:map <leader><leader>f <Plug>(easymotion-bd-f)
  " 使用宏录制
:nnoremap <leader>aa   :<c-u>normal!   @a<cr>
:nnoremap <leader>ab   :<c-u>normal!   @b<cr>
:nnoremap <leader>ac   :<c-u>normal!   @c<cr>
:nnoremap <leader>ad   :<c-u>normal!   @d<cr>
:nnoremap <leader>ae   :<c-u>normal!   @e<cr>
:nnoremap <leader>af   :<c-u>normal!   @f<cr>
:nnoremap <leader>ag   :<c-u>normal!   @g<cr>
  " Terminal操拃
:tnoremap <Esc><Esc>   <C-\><C-n>
:tnoremap <Esc>r      ra \<Tab>
:tnoremap <Esc>d      du -sh * \| sort -rh<cr>
  " Quickfix
:nnoremap <leader>qr  :AsyncRun 
:nnoremap <leader>qs  :AsyncStop<cr>
:nnoremap <leader>qc  :cexpr []<cr>
:nnoremap <m-.>       :cnext<cr>
:nnoremap <m-,>       :cprevious<cr>
  " Redis 操拃
augroup redis_command
  autocmd!
  autocmd BufNewFile,BufRead *.redis  :noremap  <silent> <leader>se :RedisExecute<cr>
  autocmd BufNewFile,BufRead *.redis  :noremap  <silent> <leader>se :RedisExecuteVisual<cr>
  autocmd BufNewFile,BufRead *.redis  :noremap  <silent> <leader>sc :RedisWipe<cr>
augroup END
  " Db 操拃
augroup db_command
  autocmd!
  autocmd BufNewFile,BufRead *.sql  :noremap  <silent> <leader>sp  :DBPromptForBufferParameters<cr>
  autocmd BufNewFile,BufRead *.sql  :noremap  <silent> <leader>si  :let g:dbext_default_profile = ''<left>
augroup END


" 界面展示
:nnoremap <leader>li  :set hlsearch! incsearch!<cr>
:noremap  <leader>lm  :set cursorcolumn!<cr>
:nnoremap <leader>lw  :setlocal wrap!<cr>
:nnoremap <leader>ln  :set nu! relativenumber!<cr>
:nmap <leader>lc      <Plug>Colorizer

  " IndentLines
:noremap <leader>ls   :IndentLinesToggle<cr>
  " Goyo 全屏展示
:noremap <leader>ly   :Goyo<cr>
:noremap <leader>ll   :AirlineTheme random<cr>
  " 拼写检查
:noremap <leader>lp   :set spell!<cr>

  " 删除vim缓存swap
:noremap <leader>ds   :term rm -r ~/.local/state/nvim/swap/*<cr>

  " ===
  " === File Find 操作
  " ===
" grep
: nmap <silent>    <leader>/  :F  %<left><left>
: nmap <silent>    <leader>/. :F  *<left><left>
: nmap <leader>//             :Lines<cr>
: nmap <leader>/g             :Ag!<cr>
: nmap <leader>/i             :Clap marks<cr>
" file
:nmap <leader>fb      :Buffers<cr>
:nmap <leader>fw      :Windows<cr>
:nmap <leader>fh      :History<cr>
:nmap <m-f>           :FZF<CR>
:nmap <leader>fm      :CocList mru<cr>
:nmap <leader>ff      :GFiles<CR>
:nmap <leader>f/      :Locate 
:nmap <leader>fs      :Telescope persisted<cr>
" command
:nmap <leader>fy      :CocList filetypes<cr>
:nmap <leader>fc      :Colors<cr>
:nmap <leader>fk      :Maps<cr>
:nmap <leader>jh      :CommandHistory<cr>
:map  <leader>jj      :CocCommand<cr>

:noremap <m-/>        :Telescope<cr>

" Yank
:nmap <silent> <space>y :<c-u>CocList yank<cr>

" Fix TrailSpace
" :noremap <leader>js      :FixWhitespace<cr>
:noremap <leader>js      :StripWhitespace<cr>
  " Explore
:noremap  tt             :Explore<cr>

" ===
" === rnvimr ranger
" ===
" tnoremap <silent> <esc>z    <C-\><C-n>:RnvimrResize<CR>
" tnoremap <silent> <m-r>     <C-\><C-n>:RnvimrToggle<CR>
" nnoremap <silent> <m-r>     :RnvimrToggle<CR>

" ===
" === chatgpt bot
" ===
nnoremap <silent> <leader>bb   :ChatGPT<CR>
nnoremap <silent> <leader>bl   :ChatGPTActAs<CR>
nnoremap <silent> <leader>bc   :ChatGPTCompleteCode<CR>
nnoremap <silent> <leader>be   :ChatGPTEditWithInstructions<CR>


" ===
" === History 操作
" ===
:noremap <leader>hh   :History<cr>
:noremap <leader>hs   :History/<cr>
:noremap <leader>hm   :Marks<cr>

" NERDTree
:let NERDTreeMapOpenExpl = "e"
:let NERDTreeMapUpdirKeepOpen = "o"
:let NERDTreeMapOpenSplit = "s"
:let NERDTreeMapOpenVSplit = "v"
:let NERDTreeMapActivateNode = "l"
:let NERDTreeMapOpenInTab = "t"
:let NERDTreeMapPreview = "p"
:let NERDTreeMapCloseDir = "h"
:let NERDTreeMapChangeRoot = "i"
:let NERDTreeMapJumpFirstChild = "<c-u>"
:let NERDTreeMapJumpLastChild = "<c-d>"
:let NERDTreeMapChdir = "<cr>"
:noremap  M       :Bookmark 
:noremap  <m-q>   :NERDTreeFocus<cr>
  " coc-explore
:noremap <silent> <m-`>  :CocCommand explorer<cr>
" nvim-tree
" :noremap <silent> <m-`>  :NvimTreeToggle<cr>

  " Taglist
" :noremap <silent> <M-t>     :TagbarOpenAutoClose<cr>
  " Undotree
:noremap  <m-u>         :UndotreeToggle<cr>

  " Markdown
:noremap  <leader>xt    :MarkdownPreviewStop<cr>
:noremap  <leader>it    :TableModeToggle<cr>

  " Latex
" :noremap  <leader>xb    :CocCommand latex.Build<cr>
:noremap  <leader>xb    :AsyncRun xelatex %<cr>

  " ===
  " Dashboard
  " ===
" :nmap sds :<C-u>SessionSave<CR>
" :nmap sdl :<C-u>SessionLoad<CR>
" :nmap sdn :<C-u>DashboardNewFile<CR>
" :nnoremap <silent> sdh :<C-u>Clap history<CR>
" :nnoremap <silent> sdf :<C-u>Clap files ++finder=rg --ignore --hidden --files<cr>
" :nnoremap <silent> sdc :<C-u>Clap colors<CR>
" :nnoremap <silent> sdw :<C-u>Clap grep<CR>
" :nnoremap <silent> sdb :<C-u>Clap marks<CR>
" :noremap sd :Dashboard<CR>
" let g:dashboard_custom_shortcut={
"   \ 'last_session'       : 's d l',
"   \ 'find_history'       : 's d h',
"   \ 'find_file'          : 's d f',
"   \ 'new_file'           : 's d n',
"   \ 'change_colorscheme' : 's d c',
"   \ 'find_word'          : 's d w',
"   \ 'book_marks'         : 's d b',
"   \ }

" ===
" === DBUI
" ===
autocmd FileType dbui nmap <buffer> l <Plug>(DBUI_SelectLine)
autocmd FileType dbui nmap <buffer> h <Plug>(DBUI_SelectLine)
autocmd FileType dbui nmap <buffer> K 10k
autocmd FileType dbui nmap <buffer> J 10j

:nnoremap <m-1>               :DBUIToggle<cr>


  " Startify
autocmd User Startified nmap <buffer> l <plug>(startify-open-buffers)
:noremap st                   :Startify<CR>
:noremap sts                  :SSave 
:noremap stl                  :SLoad 
:noremap std                  :SDelete 
:noremap stc                  :SClose 
  " Vista.vim
:noremap <silent> <m-t>       :Vista!!<CR>
:noremap <silent> <leader>ft  :Vista finder<CR>
  " Signature
" :noremap <m-m>                :SignatureToggleSigns<CR>
  " Mirror
:noremap <leader>mv           :MirrorVDiff<CR>
:noremap <leader>ms           :MirrorSDiff<CR>
:noremap <leader>me           :MirrorVEdit<CR>
:noremap <leader>mo           :MirrorPull<CR>
:noremap <leader>mp           :MirrorPush<CR>
  " Tabular
:noremap <leader>;            :Tabular //<left>

  " Git
:noremap <leader>ga           :Git add -A<CR>
:noremap <leader>gb           :Git branch 
:noremap <leader>gca          :Git commit -v -a<CR>
:noremap <leader>gcm          :Git commit -v -a --amend<CR>
:noremap <leader>gco          :Git checkout 
:noremap <leader>gd           :Gvdiffsplit<CR>
:noremap <leader>gh           :Git show<CR>
:noremap <leader>gll          :Gllog<CR>
:noremap <leader>glg          :GV<CR>
:noremap <leader>glm          :Gblame<CR>
:noremap <leader>gm           :Gmerge 
:noremap <leader>go           :Gpull<CR>
:noremap <leader>gp           :Gpush<CR>
:noremap <leader>grb          :Git rebase master<CR>
:noremap <leader>grc          :Git rebase --continue<CR>
:noremap <leader>gs           :G<CR>
:noremap <leader>gt           :Git stash<CR>
:noremap <leader>gv           :Gr<CR>

  " ===
  " === snippets
  " ===
" :noremap  <leader>is        :UltiSnipsEdit<cr>
:noremap  <leader>is        :CocCommand snippets.editSnippets<cr>

  " ===
  " === translate
  " ===
:nmap <silent>  <Leader>w   <Plug>TranslateW
:vmap <silent>  <Leader>w   <Plug>TranslateWV
""" echo
:nmap           <Leader>e   <Plug>(coc-translator-e)
:vmap           <Leader>e   <Plug>(coc-translator-ev)
:noremap        <leader>tc  :terminal trans<cr>
:noremap        <leader>te  :terminal trans :en<cr>
""" popup
" nmap <Leader>w <Plug>(coc-translator-p)
" vmap <Leader>w <Plug>(coc-translator-pv)

  " ===
  " === Region
  " ===
:map <C-j> <Plug>(expand_region_expand)
:map <C-k> <Plug>(expand_region_shrink)

  " ===
  " === Multiple Cursor
  " ===
  " let g:multi_cursor_use_default_mapping=0

  " Default mapping
  " let g:multi_cursor_start_word_key      = '<C-h>'
  " let g:multi_cursor_select_all_word_key = '<M-g>'
  " let g:multi_cursor_start_key           = 'g<C-h>'
  " let g:multi_cursor_select_all_key      = 'g<M-g>'
  " let g:multi_cursor_next_key            = '<C-h>'
  " let g:multi_cursor_prev_key            = '<C-l>'
  " let g:multi_cursor_skip_key            = '<C-g>'
  " let g:multi_cursor_quit_key            = '<Esc>'

    let g:VM_default_mappings = 0
    let g:VM_maps = {}
    let g:VM_maps['Find Under']         = '<C-h>'
    let g:VM_maps['Find Subword Under'] = '<C-h>'
    let g:VM_maps['Skip Region']        = '<C-g>'
    " let g:VM_maps["Select Cursor Down"] = ''
    " let g:VM_maps["Select Cursor Up"]   = ''

  " ===
  " === Floaterm
  " ===
  let g:floaterm_keymap_new    = '<M-z>'
  let g:floaterm_keymap_prev   = '<M-b>'
  let g:floaterm_keymap_next   = '<M-n>'
  let g:floaterm_keymap_toggle = '<M-0>'
  let g:floaterm_keymap_kill   = '<M-x>'

  " ===
  " === vim-bookmarks
  " ===
  nmap mt    <Plug>BookmarkToggle
  nmap ma    <Plug>BookmarkAnnotate
  nmap ml    <Plug>BookmarkShowAll
  nmap =     <Plug>BookmarkNext
  nmap -     <Plug>BookmarkPrev
  nmap mc    <Plug>BookmarkClear
  nmap mx    <Plug>BookmarkClearAll
  nmap _     <Plug>BookmarkMoveUp
  nmap +     <Plug>BookmarkMoveDown
  nmap mg    <Plug>BookmarkMoveToLine

  " ===
  " === vimspector
  " ===
  " for normal mode - the word under the cursor
  nmap <Leader>di <Plug>VimspectorBalloonEval
  " for visual mode, the visually selected text
  xmap <Leader>di <Plug>VimspectorBalloonEval

  " ===
  " === vim-calendar
  " ===
  noremap \c :Calendar -position=here<CR>
  noremap \t :Calendar -view=clock -position=here<CR>
  augroup calendar-mappings
    autocmd!
    " diamond cursor
    autocmd FileType calendar nmap <buffer> k <Plug>(calendar_up)
    autocmd FileType calendar nmap <buffer> h <Plug>(calendar_left)
    autocmd FileType calendar nmap <buffer> j <Plug>(calendar_down)
    autocmd FileType calendar nmap <buffer> l <Plug>(calendar_right)
    autocmd FileType calendar nmap <buffer> <c-k> <Plug>(calendar_move_up)
    autocmd FileType calendar nmap <buffer> <c-h> <Plug>(calendar_move_left)
    autocmd FileType calendar nmap <buffer> <c-j> <Plug>(calendar_move_down)
    autocmd FileType calendar nmap <buffer> <c-l> <Plug>(calendar_move_right)
    autocmd FileType calendar nmap <buffer> i <Plug>(calendar_start_insert)
    autocmd FileType calendar nmap <buffer> I <Plug>(calendar_start_insert_head)
    autocmd FileType calendar nmap <buffer> v <Plug>(calendar_visual)
    autocmd FileType calendar nmap <buffer> V <Plug>(calendar_visual_line)
    autocmd FileType calendar nmap <buffer> c <Plug>(calendar_change)
    autocmd FileType calendar nmap <buffer> C <Plug>(calendar_change_line)

    " unmap <C-n>, <C-p> for other plugins
    autocmd FileType calendar nunmap <buffer> <C-n>
    autocmd FileType calendar nunmap <buffer> <C-m>
  augroup END


  " ===
  " === vim-simple-todo
  " ===
  let g:simple_todo_map_keys = 0
  nmap \i <Plug>(simple-todo-new)
  imap \i <Plug>(simple-todo-new)
  vmap \i <Plug>(simple-todo-new)
  nmap \I <Plug>(simple-todo-new-start-of-line)
  imap \I <Plug>(simple-todo-new-start-of-line)
  vmap \I <Plug>(simple-todo-new-start-of-line)
  nmap \o <Plug>(simple-todo-below)
  imap \o <Plug>(simple-todo-below)
  vmap \o <Plug>(simple-todo-below)
  nmap \O <Plug>(simple-todo-above)
  imap \O <Plug>(simple-todo-above)
  vmap \O <Plug>(simple-todo-above)
  nmap \x <Plug>(simple-todo-mark-as-done)
  imap \x <Plug>(simple-todo-mark-as-done)
  vmap \x <Plug>(simple-todo-mark-as-done)
  nmap \X <Plug>(simple-todo-mark-as-undone)
  imap \X <Plug>(simple-todo-mark-as-undone)
  vmap \X <Plug>(simple-todo-mark-as-undone)
  nmap \s <Plug>(simple-todo-mark-switch)
  imap \s <Plug>(simple-todo-mark-switch)
  vmap \s <Plug>(simple-todo-mark-switch)

  " ===
  " === sonicpi
  " ===
  :noremap   <leader>xp  :SonicPiSendBuffer<cr>
  :noremap   <leader>xps :SonicPiStop<cr>

  " ===
  " === dictionary
  " ===
  :noremap   <leader>da  :CocCommand cSpell.addWordToDictionary<cr>

  " ===
  " === vim-which-key
  " ===
  :nnoremap <silent> <leader>jk         :<c-u>WhichKey ''<CR>
  set timeoutlen=500
  " autocmd! User vim-which-key
  call which_key#register('', 'g:which_key_map')

  let g:which_key_map = {
        \ 'name'    : '+all key 按键一栏'    ,
        \ '"'       : 'yank 面板'            ,
        \ '%'       : 'matchit 模板'         ,
        \ '+'       : 'mark 下移书签'        ,
        \ '_'       : 'mark 上移书签'        ,
        \ '='       : 'mark 下一个书签'      ,
        \ '-'       : 'mark 上一个书签'      ,
        \ '<F2>'    : 'vim 定位到配置入口'   ,
        \ '<F3>'    : 'vim 定位到插件包'     ,
        \ '<F4>'    : 'term 悬浮命令行开关'  ,
        \ '<F5>'    : 'term 上一个悬浮窗口'  ,
        \ '<F6>'    : 'term 下一个悬浮窗口'  ,
        \ '<C-T>'   : 'translate 单词翻译'   ,
        \ '<C-H>'   : 'cursor 增加单个匹配'  ,
        \ '<C-L>'   : 'cursor 撤消上个匹配'  ,
        \ '<C-G>'   : 'cursor 跳过下个匹配'  ,
        \ '<C-J>'   : 'region 扩张选择'      ,
        \ '<C-K>'   : 'region 紧缩选择'      ,
        \ '<C-P>'   : 'document 唤出文档'    ,
        \ '<Down>'  : 'window 扩大高度'      ,
        \ '<Up>'    : 'window 缩小高度'      ,
        \ '<Left>'  : 'window 缩小宽度'      ,
        \ '<Right>' : 'window 扩大宽度'      ,
        \ '<M-^>'   : 'term 新增悬浮命令行'  ,
        \ '<M-.>'   : 'find 下一个查找'      ,
        \ '<M-,>'   : 'find 上一个查找'      ,
        \ '<M-]>'   : 'tab 下一个标签'       ,
        \ '<M-[>'   : 'tab 上一个标签'       ,
        \ '<M-`>'   : 'Vista 唤出列表'       ,
        \ '<M-Tab>' : 'buffer 缓冲文件列表'  ,
        \ '<M-u>'   : 'buffer 缓冲修改树'    ,
        \ '<M-h>'   : 'window 向左切换窗口'  ,
        \ '<M-j>'   : 'window 向下切换窗口'  ,
        \ '<M-k>'   : 'window 向上切换窗口'  ,
        \ '<M-l>'   : 'window 向右切换窗口'  ,
        \ '<M-n>'   : 'pairs 下一层包含'     ,
        \ '<M-p>'   : 'pairs 包含功能开关'   ,
        \ '<M-t>'   : 'ctags 旧版taglist'    ,
        \ '<M-w>'   : 'window 关闭窗口'      ,
        \ '<S-Tab>' : 'buffer 上一个缓冲区'  ,
        \ '<Tab>'   : 'buffer 下一个缓冲区'  ,
        \ '@'       : 'register 宏录制'      ,
        \ 'E'       : 'buffer 新增缓冲'      ,
        \ 'N'       : 'tab 新标签中新增缓冲' ,
        \ 'H'       : 'move 大距离左位移'    ,
        \ 'J'       : 'move 大距离下位移'    ,
        \ 'K'       : 'move 大距离上位移'    ,
        \ 'L'       : 'move 大距离右位移'    ,
        \ 'M'       : 'bookmark 输入书签'    ,
        \ 'Q'       : 'window 退出窗口'      ,
        \}
  let g:which_key_map[' ']= {
      \ 'name' : '+mapleader'            ,
      \ ';'    : 'tabular 代码对齐'      ,
      \ '<Tab>': 'buffer 删除当前缓冲'   ,
      \ 'a'    : {
        \ 'name' : '+register 简易宏录制'
        \},
      \ 'c'    : {
        \ 'name' : '+comment 批注'
        \},
      \ 'd'    : {
        \ 'name' : '+delete 删除操作'
        \},
      \ 'f'    : {
        \ 'name' : '+file 文件追踪'
        \},
      \ 'g'    : {
        \ 'name' : '+git 代码库操作'
        \},
      \ 'h'    : {
        \ 'name' : '+history 文件历史'
        \},
      \ 'i'    : {
        \ 'name' : '+insert 输入辅助'
        \},
      \ 'j'    : {
        \ 'name' : '+command 命令列表'
        \},
      \ 'k'    : 'lint 代码格式化',
      \ 'l'    : {
        \ 'name' : '+localui 当前文件外观'
        \},
      \ 'm'    : {
        \ 'name' : '+mirror 文件同步'
        \},
      \ 'o'    : {
        \ 'name' : '+open 打开本地应用'
        \},
      \ 'q'    : 'window 唤出快速窗口',
      \ 'r'    : {
        \ 'name' : '+rename 重命名'
        \},
      \ 's'    : {
        \ 'name' : '+sql 数据库操作'
        \},
      \ 't'    : {
        \ 'name' : '+terminal tool 终端工具'
        \},
      \ 'w'    : {
        \ 'name' : '+wiki 编译成文档'
        \},
      \ 'x'    : {
        \ 'name' : '+excute 执行文件'
        \},
      \ 'y'    : 'yank 唤出粘贴面板',
      \ 'z'    : 'folder 折叠预览',
      \ }
  let g:which_key_map['g']= {
      \ 'name' : '+code 跳转'            ,
      \ }
  let g:which_key_map["'"]= {
      \ 'name' : '+mark 跳转'            ,
      \ }
  let g:which_key_map['[']= {
      \ 'name' : '+left jump-1'          ,
      \ }
  let g:which_key_map[']']= {
      \ 'name' : '+right jump-1'         ,
      \ }
  let g:which_key_map['\']= {
      \ 'name' : '+leader 自定义前缀'    ,
      \ }
  let g:which_key_map['.']= {
      \ 'name' : '+home 将当前目录设为家',
      \ }
  let g:which_key_map['`']= {
      \ 'name' : '+mark 上下查找书签'    ,
      \ }
  let g:which_key_map['c']= {
      \ 'name' : '+change 变换操作'      ,
      \ }
  let g:which_key_map['d']= {
      \ 'name' : '+delete 删除操作'      ,
      \ }
  let g:which_key_map['i']= {
      \ 'name' : '+insert 插入操作'      ,
      \ }
  let g:which_key_map['M']= {
      \ 'name' : '+markdown 文档'        ,
      \ }
  let g:which_key_map['S']= {
      \ 'name' : '+split 竖直切割窗口1'  ,
      \ }
  let g:which_key_map['s']= {
      \ 'name' : '+split 竖直切割窗口2'  ,
      \ }
  let g:which_key_map['U']= {
      \ 'name' : '+upcase 大写化单词'  ,
      \ }
  let g:which_key_map['u']= {
      \ 'name' : '+locase 小写化单词'  ,
      \ }
  let g:which_key_map['V']= {
      \ 'name' : '+split 横向切割窗口1'  ,
      \ }
  let g:which_key_map['v']= {
      \ 'name' : '+split 横向切割窗口2'  ,
      \ }
  let g:which_key_map['t']= {
      \ 'name' : '+tab 跳转到指定标签页' ,
      \ }
  let g:which_key_map['y']= {
      \ 'name' : '+pairs 变换包含符号'   ,
      \ }
" }}}

" vip 快速块选择
