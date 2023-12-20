" 功能设置 ---------------------- {{{
  " Vimscript file settings ---------------------- {{{
  augroup filetype_vim
    autocmd!
    autocmd FileType    vim   let maplocalleader = "\\"     " 缓冲区前缀
    autocmd FileType    vim   :setlocal   foldmethod=marker
    autocmd FileType    vim   :execute    'normal! zR'
    autocmd FileType    vim   :set  tabstop=2
    autocmd FileType    vim   :set  shiftwidth=2
    autocmd FileType    vim   :set  softtabstop=2
    " 代码注释
    autocmd FileType    vim   nnoremap  <localleader>\ I"<esc>
    autocmd FileType    vim   nnoremap  <localleader>{ I" ---------------------- {{{<esc>
    autocmd FileType    vim   nnoremap  <localleader>} I" }}}<esc>
  augroup END " }}}

  " Shell file settings ---------------------- {{{
  augroup filetype_shell
    autocmd!
    autocmd FileType    sh    :set  tabstop=2
    autocmd FileType    sh    :set  shiftwidth=2
    autocmd FileType    sh    :set  softtabstop=2
    autocmd FileType    sh    nnoremap  ,,  hea}<esc>bi${<esc>e
    autocmd FileType    sh    inoremap  ,,  <esc>hea}<esc>bi${<esc>ela
  augroup END " }}}

  " Java file settings ---------------------- {{{
  augroup filetype_java
    autocmd!
    autocmd FileType    java    :set  tabstop=4
    autocmd FileType    java    :set  shiftwidth=4
    autocmd FileType    java    :set  softtabstop=4
  augroup END " }}}

  " Python file settings ---------------------- {{{
  augroup filetype_python
    autocmd!
    autocmd FileType  python  let  maplocalleader = "\\"     	" 缓冲区前缀
    autocmd FileType  python  :set  tabstop=4
    autocmd FileType  python  :set  shiftwidth=4
    autocmd FileType  python  :set  softtabstop=4
    " 自定义快写模板
    autocmd FileType  python  :iabbrev <buffer> iff if:<left>
  augroup END " }}}

  " Php file settings ---------------------- {{{
  augroup filetype_php
    autocmd!
    autocmd FileType  php   let  maplocalleader = "\\"     	" 缓冲区前缀
    autocmd FileType  php   :set  tabstop=4
    autocmd FileType  php   :set  shiftwidth=4
    autocmd FileType  php   :set  softtabstop=4
    autocmd FileType  php   nnoremap  ,,  wbi$<esc>e
    autocmd FileType  php   inoremap  ,,  <esc>wbi$<esc>ea
    " 自定义快写模板
    autocmd FileType php        :iabbrev <buffer> pbf public function ()<left>
  augroup END " }}}

  " C file settings ---------------------- {{{
  augroup filetype_c
    autocmd!
    autocmd FileType  c   :set  tabstop=2
    autocmd FileType  c   :set  shiftwidth=2
    autocmd FileType  c   :set  softtabstop=2
  augroup END " }}}

  " Nginx file settings ---------------------- {{{
  augroup filetype_nginx
    autocmd!
    autocmd FileType  nginx   :set  tabstop=4
    autocmd FileType  nginx   :set  shiftwidth=4
    autocmd FileType  nginx   :set  softtabstop=4
  augroup END " }}}

  " Javascript file settings ---------------------- {{{
  augroup filetype_javascript
    autocmd!
    autocmd BufNewFile,BufRead *.html   setlocal nowrap     " 去掉换行
    autocmd FileType vue  :set  tabstop=2
    autocmd FileType vue  :set  shiftwidth=2
    autocmd FileType vue  :set  softtabstop=2
    autocmd FileType javascript  :set  tabstop=2
    autocmd FileType javascript  :set  shiftwidth=2
    autocmd FileType javascript  :set  softtabstop=2
  augroup END " }}}

  " Snippets file settings ---------------------- {{{
  augroup filetype_snippets
    autocmd!
    autocmd FileType    snippets    :set  tabstop=4
    autocmd FileType    snippets    :set  shiftwidth=4
    autocmd FileType    snippets    :set  softtabstop=4
    autocmd FileType    snippets    nnoremap  ,,  hea}<esc>bi${<esc>e
    autocmd FileType    snippets    inoremap  ,,  <esc>hea}<esc>bi${<esc>ela
  augroup END " }}}

  " CShrap file settings ---------------------- {{{
  augroup filetype_csharp
    autocmd!
    " autocmd FileType    markdown    :setl shell=bash\ -i
    autocmd FileType    cs    :set  tabstop=3
    autocmd FileType    cs    :set  shiftwidth=3
    autocmd FileType    cs    :set  softtabstop=3
  augroup END " }}}

  " Markdown file settings ---------------------- {{{
  augroup filetype_markdown
    autocmd!
    " autocmd FileType    markdown    :setl shell=bash\ -i
    " autocmd FileType    markdown    :TableModeToggle
    autocmd FileType    markdown    :set  tabstop=4
    autocmd FileType    markdown    :set  shiftwidth=4
    autocmd FileType    markdown    :set  softtabstop=4
  augroup END " }}}

  " XML file settings ---------------------- {{{
  augroup filetype_xml
    autocmd!
    autocmd FileType  xml   :set  tabstop=2
    autocmd FileType  xml   :set  shiftwidth=2
    autocmd FileType  xml   :set  softtabstop=2
  augroup END " }}}

  " go file settings ---------------------- {{{
  augroup filetype_go
    autocmd!
    autocmd FileType  go   :set  tabstop=2
    autocmd FileType  go   :set  shiftwidth=2
    autocmd FileType  go   :set  softtabstop=2
  augroup END " }}}

  " latex file settings ---------------------- {{{
  augroup filetype_tex
    autocmd!
    autocmd FileType  tex   :set  tabstop=4
    autocmd FileType  tex   :set  shiftwidth=4
    autocmd FileType  tex   :set  softtabstop=4
  augroup END " }}}

  " json file settings ---------------------- {{{
  augroup filetype_json
    autocmd!
    autocmd FileType  json   :set  tabstop=4
    autocmd FileType  json   :set  shiftwidth=4
    autocmd FileType  json   :set  softtabstop=4
  augroup END " }}}

  " Lua file settings ---------------------- {{{
  augroup filetype_lua
    autocmd!
    autocmd FileType  lua   :set  tabstop=4
    autocmd FileType  lua   :set  shiftwidth=4
    autocmd FileType  lua   :set  softtabstop=4
  augroup END " }}}

  " Scala file settings ---------------------- {{{
  augroup filetype_lua
    autocmd!
    autocmd FileType  scala   :set  tabstop=4
    autocmd FileType  scala   :set  shiftwidth=4
    autocmd FileType  scala   :set  softtabstop=4
  augroup END " }}}

  " DBUI file settings ---------------------- {{{
  augroup filetype_dbui
    autocmd!
    autocmd FileType  dbui   :set  tabstop=2
    autocmd FileType  dbui   :set  shiftwidth=2
    autocmd FileType  dbui   :set  softtabstop=2
  augroup END " }}}

  augroup term_win
    autocmd!
    autocmd TermOpen * :set nonu norelativenumber
  augroup END

" 在 Vim 中设置函数用来更新 Tmux 环境变量
function! UpdateTmuxPwd()
    if exists('$TMUX')
        let pwd = expand('%:p:h')
        let tmux_cmd = 'tmux setenv -g TMUX_PWD ' . shellescape(pwd)
        call jobstart(['sh', '-c', tmux_cmd])
    endif
endfunction

" 设置自动命令，每次你更改工作目录时更新 Tmux 环境变量
autocmd VimEnter,DirChanged * silent! call UpdateTmuxPwd()


  " ===
  " === Switch
  " ===
  let g:switch_custom_definitions =
      \ [
      \   ['YES', 'NO' ],
      \   ['yes', 'no' ],
      \   ['on', 'off'],
      \   ['done', 'active', 'crit']
      \ ]

  " ===
  " === AutoPairs and Surround)
  " ===
  let g:AutoPairs = {
    \ '```': '```',
    \ '`': '`',
    \ '"': '"',
    \ '{': '}',
    \ '''': '''',
    \ '(': ')',
    \ '''''''': '''''''',
    \ '[': ']',
    \ '"""': '"""'
  \ }
  let g:surround_{char2nr("d")} = "<div\1id: \r..*\r id=\"&\"\1>\r</div>"
  let g:surround_insert_tail = '<++>'

  " ===
  " === Airline
  " ===
  " let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

  " ===
  " === Comfortable-Motion
  " ===
  noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(70)<CR>
  noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-70)<CR>

  " ===
  " === IndentLines
  " ===
  " let g:indentLine_enabled = 0
  let g:indentLine_fileTypeExclude = ['calendar', 'startify', 'dashboard']
  " ===
  " === Devicon
  " ===
  " loading the plugin
  let g:webdevicons_enable = 1
  let g:webdevicons_enable_nerdtree = 1

  " ==
  " == NERDTree
  " ==
  " let loaded_nerd_tree=1
  let NERDTreeHijackNetrw   = 1
  let NERDTreeShowBookmarks = 1
  let NERDTreeShowFiles     = 0
  let NERDTreeMinimalUI     = 1
  let NERDTreeWinPos        = "right"
  let NERDTreeWinSize       = 25
  let g:NERDTreeGitStatusIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ "Unknown"   : "?"
      \ }

  let NERDTreeIgnore=['\.class$', '\.meta$']

  " ==
  " == rnvimr ranger
  " ==
  " Make Neovim wipe the buffers corresponding to the files deleted by Ranger
  let g:rnvimr_enable_bw = 1
  " Make Ranger to be hidden after picking a file
  let g:rnvimr_enable_picker = 1
  " Disable a border for floating window
  let g:rnvimr_draw_border = 1
  " Change the border's color
  let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}
  " Draw border with both
  let g:rnvimr_ranger_cmd = ['ranger', '--cmd="set draw_borders both"']
  " Link CursorLine into RnvimrNormal highlight in the Floating window
  highlight link RnvimrNormal CursorLine

  " ===
  " === Undotree
  " ===
  let g:undotree_DiffAutoOpen = 0

  " ===
  " === Goyo
  " ===
  let g:goyo_linenr = 0
  let g:goyo_width = 130
  let g:goyo_height = 100

  " function! s:goyo_enter()
  "   let &t_ut=''
  "   set expandtab
  "   set smarttab
  "   set autoindent
  "   set number
  "   set relativenumber
  " endfunction
  "
  " function! s:goyo_leave()
  "   let &t_ut=''
  "   set expandtab
  "   set smarttab
  "   set autoindent
  "   set number
  "   set relativenumber
  "   source $HOME/.vim/init/init-ui.vim
  " endfunction
  "
  " autocmd! User GoyoEnter nested call <SID>goyo_enter()
  " autocmd! User GoyoLeave nested call <SID>goyo_leave()


  " ===
  " === MarkdownPreview
  " ===
  " let g:vimwiki_list = [{'path': '~/vimwiki/',
                        " \ 'syntax': 'markdown', 'ext': '.md'}]
  let g:mkdp_auto_start = 0
  let g:mkdp_auto_close = 1
  let g:mkdp_refresh_slow = 0
  let g:mkdp_command_for_global = 0
  let g:mkdp_open_to_the_world = 0
  let g:mkdp_open_ip = ''
  " let g:mkdp_browser = ''
  let g:mkdp_echo_preview_url = 1
  let g:mkdp_browserfunc = ''
  let g:mkdp_preview_options = {
      \ 'mkit': {},
      \ 'katex': {},
      \ 'uml': {},
      \ 'maid': {},
      \ 'disable_sync_scroll': 0,
      \ 'sync_scroll_type': 'middle',
      \ 'hide_yaml_meta': 1
      \ }
  let g:mkdp_markdown_css = '/Users/hanwenhao/.config/markdown-style/github-markdown-css-5.0.0/github-markdown-light.css'
  let g:mkdp_highlight_css = ''
  let g:mkdp_port = ''
  let g:mkdp_page_title = '「${name}」'

  " ===
  " === vim-markdown
  " ===
  let g:vim_markdown_fenced_languages = ['mermaid=sequence', 'sequence-diagrams=sequence']
  let g:vim_markdown_conceal = 0

  " ===
  " === Markdown Table Model
  " ===
  " let g:table_mode_corner_corner='+'
  " let g:table_mode_header_fillchar='='

  " ===
  " === Latex
  " ===
  let g:tex_flavor = 'latex'

  " ===
  " === conflict marker
  " ===
  " disable the default highlight group
  let g:conflict_marker_highlight_group = ''
  let g:conflict_marker_begin = '^<<<<<<< .*$'
  let g:conflict_marker_end   = '^>>>>>>> .*$'
  highlight ConflictMarkerBegin guibg=#2f7366
  highlight ConflictMarkerOurs guibg=#2e5049
  highlight ConflictMarkerTheirs guibg=#344f69
  highlight ConflictMarkerEnd guibg=#2f628e

  " ===
  " === nerdcommenter
  " ===
  " Add spaces after comment delimiters by default
  let g:NERDSpaceDelims = 1
  let g:NERDCompactSexyComs = 1
  let g:NERDDefaultAlign = 'left'
  let g:NERDAltDelims_java = 1
  let g:NERDCustomDelimiters = {
        \ 'c': { 'left': '/**','right': '*/' },
        \ 'json': { 'left': '//' }
        \ }
  let g:NERDCommentEmptyLines = 1
  let g:NERDTrimTrailingWhitespace = 1
  let g:NERDToggleCheckAllLines = 1

  let g:ft = ''
  fu! NERDCommenter_before()
      if &ft == 'vue'
          let g:ft = 'vue'
          execute "normal! 0"
          let stack = synstack(line('.'), col('.'))
          if len(stack) > 0
              let syn = synIDattr((stack)[0], 'name')
              if len(syn) > 0
                  let syn = tolower(syn)
                  exe 'setf '.syn
              endif
          endif
      endif
  endfu
  fu! NERDCommenter_after()
      if g:ft == 'vue'
          setf vue
          let g:ft = ''
      endif
  endfu

  " ===
  " === Startify
  " ===
  let g:startify_disable_at_vimenter = 0

  let g:startify_change_to_dir = 1
  let g:startify_custom_header =
      \ startify#center([
      \ "  __  __  __      __  __  __      __  __  ______                ",
      \ " /\\ \\/\\ \\/\\ \\  __/\\ \\/\\ \\/\\ \\    /\\ \\/\\ \\/\\__  _\\   /'\\_/`\\     ",
      \ " \\ \\ \\_\\ \\ \\ \\/\\ \\ \\ \\ \\ \\_\\ \\   \\ \\ \\ \\ \\/_/\\ \\/  /\\      \\    ",
      \ "  \\ \\  _  \\ \\ \\ \\ \\ \\ \\ \\  _  \\   \\ \\ \\ \\ \\ \\ \\ \\  \\ \\ \\__\\ \\   ",
      \ "   \\ \\ \\ \\ \\ \\ \\_/ \\_\\ \\ \\ \\ \\ \\   \\ \\ \\_/ \\ \\_\\ \\__\\ \\ \\_/\\ \\  ",
      \ "    \\ \\_\\ \\_\\ `\\___x___/\\ \\_\\ \\_\\   \\ `\\___/ /\\_____\\\\ \\_\\\\ \\_\\ ",
      \ "     \\/_/\\/_/'\\/__//__/  \\/_/\\/_/    `\\/__/  \\/_____/ \\/_/ \\/_/ ",
      \ "",
      \  ])

  let g:startify_lists =
      \ [
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

  let g:startify_bookmarks = [
        \{'b': '~/Cloud/buffer.md'},
        \{'h': '~/Cloud/任务备忘.md'},
        \{'w': '~/Cloud/工作备忘.md'},
      \]

  let g:startify_commands = [
      \ {'c': 'AsyncRun CocosCreator'},
      \ ]


  " ===
  " Dashboard
  " ===
  let g:dashboard_custom_header = [
        \"  __  __  __      __  __  __      ____                               __      ",
        \" /\\ \\/\\ \\/\\ \\  __/\\ \\/\\ \\/\\ \\    /\\  _`\\                            /\\ \\     ",
        \" \\ \\ \\_\\ \\ \\ \\/\\ \\ \\ \\ \\ \\_\\ \\   \\ \\ \\L\\ \\    ___      __     _ __  \\_\\ \\    ",
        \"  \\ \\  _  \\ \\ \\ \\ \\ \\ \\ \\  _  \\   \\ \\  _ <'  / __`\\  /'__`\\  /\\`'__\\/'_` \\   ",
        \"   \\ \\ \\ \\ \\ \\ \\_/ \\_\\ \\ \\ \\ \\ \\   \\ \\ \\L\\ \\/\\ \\L\\ \\/\\ \\L\\.\\_\\ \\ \\//\\ \\L\\ \\  ",
        \"    \\ \\_\\ \\_\\ `\\___x___/\\ \\_\\ \\_\\   \\ \\____/\\ \\____/\\ \\__/.\\_\\\\ \\_\\\\ \\___,_\\ ",
        \"     \\/_/\\/_/'\\/__//__/  \\/_/\\/_/    \\/___/  \\/___/  \\/__/\\/_/ \\/_/ \\/__,_ / ",
        \ ]


autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2

  " ===
  " 代码折叠
  " ===
  let g:SimpylFold_docstring_preview = 0

  " ===
  " === coc 配置暂时不放入keybinds，存在一些未知bug
  " ===
  " fix the most annoying bug that coc has
  "silent! au BufEnter,BufRead,BufNewFile * silent! unmap if
  let g:coc_global_extensions = [
      \ 'coc-actions',
      \ 'coc-vimlsp',
      \ 'coc-clangd',
      \ 'coc-emmet',
      \ 'coc-html',
      \ 'coc-json',
      \ 'coc-jedi',
      \ 'coc-css',
      \ 'coc-tsserver',
      \ 'coc-yank',
      \ 'coc-java',
      \ 'coc-lists',
      \ 'coc-phpactor',
      \ 'coc-gitignore',
      \ 'coc-go',
      \ 'coc-omnisharp',
      \ 'coc-markmap',
      \ 'coc-texlab',
      \ 'coc-vetur',
      \ 'coc-explorer'
  \ ]

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-p> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

" Use K to show documentation in preview window
nnoremap <silent> <c-p> :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
" autocmd CursorHold * silent call CocActionAsync('highlight')

  " ===
  " === Omnisharp
  " ===
  let g:OmniSharp_typeLookupInPreview = 1
  let g:omnicomplete_fetch_full_documentation = 1

  let g:OmniSharp_server_use_mono = 1
  let g:OmniSharp_server_stdio = 1
  let g:OmniSharp_highlight_types = 2

  " let g:OmniSharp_server_path = '/Users/hanwenhao/.omnisharp/omnisharp-osx/run'


  augroup omnisharp_commands
    autocmd!
    autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
    autocmd FileType cs nnoremap <buffer> gi :OmniSharpFindImplementations<CR>
    autocmd Filetype cs nnoremap <buffer> gy :OmniSharpTypeLookup<CR>
    autocmd Filetype cs nnoremap <buffer> ga :OmniSharpGetCodeActions<CR>
  augroup END

  sign define OmniSharpCodeActions text=💡

  augroup OSCountCodeActions
    autocmd!
    autocmd FileType cs set signcolumn=yes
    autocmd CursorHold *.cs call OSCountCodeActions()
  augroup END

  function! OSCountCodeActions() abort
    if bufname('%') ==# '' || OmniSharp#FugitiveCheck() | return | endif
    if !OmniSharp#IsServerRunning() | return | endif
    let opts = {
          \ 'CallbackCount': function('s:CBReturnCount'),
          \ 'CallbackCleanup': {-> execute('sign unplace 99')}
          \}
    call OmniSharp#CountCodeActions(opts)
  endfunction

  function! s:CBReturnCount(count) abort
    if a:count
      let l = getpos('.')[1]
      let f = expand('%:p')
      execute ':sign place 99 line='.l.' name=OmniSharpCodeActions file='.f
    endif
  endfunction

  " ===
  " === JavaCompleter
  " ===
  let g:JavaComplete_EnableDefaultMappings = 0


  " ===
  " === Ale 代码检测
  " ===
  let g:ale_fixers = {
  \   'javascript': ['prettier'],
  \   'vue': ['prettier'],
  \   'php': ['php_cs_fixer'],
  \   'python': ['autopep8'],
  \   'cs': ['uncrustify'],
  \   'go': ['gofmt'],
  \   'ruby': ['rubocop'],
  \}
  " \   'python': ['autopep8', 'yapf'],

  let g:ale_linters = {
  \   'cs': ['OmniSharp'],
  \   'python': ['flake8', 'pylint'],
  \}

  let g:ale_fix_on_save = 1


  " ===
  " === Vista.vim
  " ===
  function! NearestMethodOrFunction() abort
    return get(b:, 'vista_nearest_method_or_function', '')
  endfunction
  set statusline+=%{NearestMethodOrFunction()}

  autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
  " e.g., more compact: ['▸ ', '']
  let g:vista_icon_indent = ['╰─▸ ', '├─▸ ']
  let g:vista_default_executive = 'ctags'
  " Set the executive for some filetypes explicitly. Use the explicit executive
  " instead of the default one for these filetypes when using `:Vista` without
  " specifying the executive.
  let g:vista_executive_for = {
    \ 'cpp': 'coc',
    \ 'php': 'coc',
    \ 'vue': 'coc',
    \ 'go' : 'coc',
    \ 'cs' : 'ctags',
    \ }
  " To enable fzf's preview window set g:vista_fzf_preview.
  " The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
  " For example:

  let g:vista_fzf_preview = ['right:50%']
  " Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
  let g:vista#renderer#enable_icon = 1

  " The default icons can't be suitable for all the filetypes, you can extend it as you wish.
  let g:vista#renderer#icons = {
  \   "function": "\uf794",
  \   "variable": "\uf71b",
  \  }

  " ===
  " === Fzf
  " ===
  command! -bang -nargs=* LinesWithPreview
      \ call fzf#vim#grep(
      \   'rg --with-filename --column --line-number --no-heading --color=always --smart-case . '.fnameescape(expand('%')), 1,
      \   fzf#vim#with_preview({}, 'right:50%', '?'),
      \   0)

  command! -bang -nargs=* Ag
    \ call fzf#vim#ag(
    \   '',
    \   <bang>0 ? fzf#vim#with_preview('up:60%')
    \           : fzf#vim#with_preview('right:50%', '?'),
    \   <bang>0)

  command! -bang -nargs=* CommandHistory call fzf#vim#command_history(fzf#vim#with_preview('right:0%', '?'))
  command! -bang -nargs=* Lines call fzf#vim#lines(fzf#vim#with_preview('right:0%', '?'))


  " ===
  " === DBExt
  " ===
  augroup dbextExtras
    autocmd!
    " autocmd User dbextPreConnection set number
    " autocmd User dbextPreConnection :DBSetOption 'dbname=bob'
    " autocmd User dbextPreConnection :DBSetOption 'host=jim'
    " autocmd User dbextPreConnection :DBSetOption 'type=ASA:dsnname=myDSN:user=DBA:passwd=sql'
  augroup END

  let g:dadbod_manage_dbext = 1
  let dbext_default_buffer_lines = 20
  let g:dbext_default_display_cmd_line = 1

  let g:dbext_default_window_use_horiz = 0
  let g:dbext_default_window_width = 50
  let g:dbext_default_window_increment = 50

  " db配置文件
  :source $HOME/.vim/init/config/db.vim

  " ===
  " === DBUI
  " ===
  " This is just an example. Keep this out of version control. Check for more examples below.
  let g:dbs = {
  \  'aaa': 'mysql://root:@localhost:3306/aaa'
  \ }
  let g:db_ui_auto_execute_table_helpers = 1
  let g:db_ui_execute_on_save=0
  let g:db_ui_show_database_icon=1
  let g:db_ui_icons = {
   \  'expanded': {
   \  'db': '▾ ',
   \  'buffers': '▾ ',
   \  'saved_queries': '▾ ',
   \  'schemas': '▾ ',
   \  'schema': '▾ פּ',
   \  'tables': '▾ 藺',
   \  'table': '▾ ',
   \ },
   \  'collapsed': {
   \  'db': '▸ ',
   \  'buffers': '▸ ',
   \  'saved_queries': '▸ ',
   \  'schemas': '▸ ',
   \  'schema': '▸ פּ',
   \  'tables': '▸ 藺',
   \  'table': '▸ ',
   \ },
   \  'saved_query': '',
   \  'new_query': '璘',
   \  'tables': '離',
   \  'buffers': '﬘',
   \  'add_connection': '',
   \  'connection_ok': '✓',
   \  'connection_error': '✕',
   \ }



  " ===
  " === Redis
  " ===
  "" Redis connection information
  let g:vim_redis_host = 'localhost'
  let g:vim_redis_port = '6379'
  let g:vim_redis_paste_command = 1
  let g:vim_redis_paste_command_prefix = '> '

  " ===
  " === Ranger
  " ===
  let g:ranger_map_keys = 0

  " ===
  " === Mirror
  " ===
  let g:mirror#config_path = expand('~/.vim/.mirrors')
  " let g:mirror#cache_dir = expand('~/.vim/.cache/mirror.vim')

  " ===
  " === 原版Snippets 为了读帮助文档
  " ===
  let g:UltiSnipsExpandTrigger="<esc><cr>"
  let g:snips_author="hanwenhao"

  augroup ultisnip_group
    autocmd!
    " 设置项目snip
    autocmd   BufNewFile,BufRead * let g:UltiSnipsSnippetDirectories = [
        \ $HOME . '/.config/nvim/UltiSnips',
        \ systemlist("git rev-parse --show-toplevel")[0].'/UltiSnips/',
    \ ]
    " 如果是vim本身覆盖掉
    autocmd   BufNewFile,BufRead *.vim  let g:UltiSnipsSnippetDirectories = [
          \ 'UltiSnips'
    \ ]
  augroup END " }}}

  " ===
  " === MiniBufExpl
  " ===
  let g:miniBufExplorerAutoStart = 0
  let g:miniBufExplBRSplit = 1

  hi MBENormal                ctermbg=4
  hi MBEVisibleNormal         ctermfg=22 ctermbg=4
  hi MBEVisibleActiveNormal   ctermfg=7  ctermbg=20

  " ===
  " === Git
  " ===
  let g:Gitv_OpenHorizontal = 0


  " ===
  " === Better Whitespace
  " ===
  let g:better_whitespace_filetypes_blacklist = ['startify', 'diff', 'gitcommit', 'unite', 'qf', 'help', 'markdown', 'vim', 'dashboard', 'far']

  " ===
  " === Dict
  " ===
  let g:vim_dict_config = {
  \ 'javascript': ['cocos2d-js'],
  \}

  " ===
  " === Floaterm
  " ===
  function s:floatermSettings()
    " setlocal number
    " more settings
  endfunction

  autocmd FileType floaterm call s:floatermSettings()

  " ===
  " === vim-bookmarks
  " ===
  let g:bookmark_no_default_key_mappings = 1
  let g:bookmark_save_per_working_dir = 1
  let g:bookmark_auto_save = 1
  let g:bookmark_highlight_lines = 1
  let g:bookmark_manage_per_buffer = 1
  let g:bookmark_save_per_working_dir = 1
  let g:bookmark_center = 1
  let g:bookmark_auto_close = 0
  let g:bookmark_location_list = 1

  " ===
  " === vim-easymotion
  " ===
  let g:EasyMotion_do_mapping = 0
  let g:EasyMotion_do_shade = 1
  let g:EasyMotion_smartcase = 1


  " ===
  " === iamcco/dict.vim
  " ===
  let g:api_key = "1932136763"
  let g:keyfrom = "aioiyuuko"

  " ===
  " === sonicpi
  " ===
  let g:sonicpi_command = 'sonic-pi-tool'
  let g:sonicpi_send = 'eval-stdin'
  let g:sonicpi_stop = 'stop'
  let g:vim_redraw = 1

  " ===
  " === workflowish-todo
  " ===
  " autocmd BufWinLeave *.wofl mkview
  " autocmd BufWinEnter *.wofl silent loadview

" }}}
