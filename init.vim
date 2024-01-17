"  _   ___     _____ __  __     ___
" | \ | \ \   / /_ _|  \/  |   / _ \
" |  \| |\ \ / / | || |\/| |  | | | |
" | |\  | \ V /  | || |  | |  | |_| |
" |_| \_|  \_/  |___|_|  |_|___\___/


" SYS ENV ---------------------- {{{
" Environment {
    " Identify platform {
        silent function! OSX()
            return has('macunix')
        endfunction
        silent function! LINUX()
            return has('unix') && !has('macunix') && !has('win32unix')
        endfunction
        silent function! WINDOWS()
            return  (has('win32') || has('win64'))
        endfunction
    " }

    " Basics {
        set nocompatible        " Must be first line
        if !WINDOWS()
            set shell=/bin/zsh
        endif
    " }

    " Windows Compatible {
        " On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
        " across (heterogeneous) systems easier.
        if WINDOWS()
          set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
        endif
    " }

    " vim-autoclose不生效的Fix {
        " https://github.com/spf13/spf13-vim/issues/780
        if &term[:4] == "xterm" || &term[:5] == 'screen' || &term[:3] == 'rxvt'
            inoremap <silent> <C-[>OC <RIGHT>
        endif
    " }
" }

" System ---------------------- {{{
:filetype on
:filetype indent on
:filetype plugin on
:set fencs=utf-8,chinese fenc=utf-8 enc=utf-8
:set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
:set termencoding=utf-8

:syntax on

" Client
:let g:python_host_prog  = '/usr/local/bin/python2'
:let g:python3_host_prog = '/opt/homebrew/opt/python@3.10/bin/python3.10'
" :let g:ruby_host_prog    = '/opt/homebrew/lib/ruby/gems/3.1.0/bin/neovim-ruby-host'


" 插件镜像地址修改
" :let g:plug_url_format   = 'https://git::@github.com.cnpmjs.org/%s.git'
" }}}

let g:vimspector_enable_mappings = 'HUMAN'
" packadd! vimspector


" Basic ---------------------- {{{
augroup basic
  autocmd!
  autocmd BufReadPost * :let &t_ut=''
  autocmd BufReadPost * :set expandtab
  autocmd BufReadPost * :set smarttab
  autocmd BufReadPost * :set autoindent
  autocmd BufReadPost * :set number
  autocmd BufReadPost * :set relativenumber
  " 保留退出前最后编辑的痕迹
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END
" }}}

" 插件包引入(vim-plug)
:source $HOME/.vim/init/init-packages.vim
" UI 配置(TODO: 必须跟在package后 否则ui配置不生效)
:source $HOME/.vim/init/init-ui.vim
" 插件配置
:source $HOME/.vim/init/init-better-defaults.vim
" 按键映射
:source $HOME/.vim/init/init-keybindings.vim
" 自定义辅助
:source $HOME/.vim/init/init-assist.vim
" Lua插件包引入(packer)
:source $HOME/.vim/init/init-packer.vim

" }}}

