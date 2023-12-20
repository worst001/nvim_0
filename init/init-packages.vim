" 插件设置 ---------------------- {{{
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'sjl/vitality.vim'
Plug 'christoomey/vim-tmux-navigator'

" 主题插件
Plug 'vim-airline/vim-airline'
" Plug 'connorholyday/vim-snazzy'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', {'as':'dracula'}
Plug 'altercation/vim-colors-solarized'
Plug 'rafi/awesome-vim-colorschemes'
" Plug 'NLKNguyen/papercolor-theme'
Plug 'phanviet/vim-monokai-pro'
Plug 'nvim-lualine/lualine.nvim'

" 文件导航
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'fholgado/minibufexpl.vim'
Plug 'amix/open_file_under_cursor.vim'
" Plug 'hardcoreplayers/dashboard-nvim'

" 代码导航
Plug 'liuchengxu/vista.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'yuttie/comfortable-motion.vim'
Plug 'easymotion/vim-easymotion'
Plug 'liuchengxu/vim-clap'
Plug 'brooth/far.vim'
" Plug 'liuchengxu/vim-which-key',

" 代码高亮与优化
Plug 'posva/vim-vue'
Plug 'lilydjwg/colorizer'
Plug 'chr4/nginx.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'xavierchow/vim-sequence-diagram'
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }
Plug 'junegunn/goyo.vim'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/vim-cursorword'
Plug 'godlygeek/tabular'
Plug 'voldikss/vim-wenyan'
Plug 'dermusikman/sonicpi.vim'
Plug 'tikhomirov/vim-glsl'
Plug 'beyondmarc/hlsl.vim'
Plug 'elubow/cql-vim'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'editorconfig/editorconfig-vim'

" 图标与颜色
Plug 'ryanoasis/vim-devicons'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'

" 自动补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }

" 文本编辑
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'plasticboy/vim-markdown'
" Plug 'lervag/vimtex'
" Plug 'vimwiki/vimwiki'

" Git插件
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
" Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'junegunn/gv.vim'
Plug 'mhinz/vim-signify'
Plug 'juneedahamed/svnj.vim'

" 代码操作
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-expand-region'
Plug 'tmhedberg/SimpylFold'
Plug 'swekaj/php-foldexpr.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'mbbill/undotree'
Plug 'AndrewRadev/switch.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'terryma/vim-multiple-cursors'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'mattn/emmet-vim'

" 数据 文件操作
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'junegunn/vim-redis'
Plug 'zenbro/mirror.vim'
" Plug 'kevinhwang91/rnvimr'

" 单词翻译
Plug 'voldikss/vim-translator'
" Plug 'iamcco/dict.vim'

" 任务与命令
Plug 'voldikss/vim-floaterm'
Plug 'vitalk/vim-simple-todo'
Plug 'skywind3000/asyncrun.vim'
Plug 'itchyny/calendar.vim'

" 代码调试
Plug 'puremourning/vimspector'

call plug#end()
" }}}
