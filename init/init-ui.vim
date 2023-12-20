" 界面设置 ---------------------- {{{
" ===
" === Basic
" ===
augroup ui_basic
  autocmd!
  set mouse=a         " 设置鼠标
  set cursorline
  " set cursorcolumn
  set guicursor=i:ver50-iCursor-blinkon1,n-c-v:block-ncvCursor-blinkoff1

  set list
  set nowrap
  set foldmethod=indent
  set foldlevel=99
  set foldenable
  set hlsearch
  execute "nohlsearch"
  set incsearch
  set ignorecase
  set smartcase
  set scrolloff=5
  set listchars=tab:▸\ ,trail:▫
  set laststatus=2
augroup END

" ===
" === glyph-palette
" ===
augroup my-glyph-palette
  autocmd!
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree call glyph_palette#apply()
  autocmd FileType startify call glyph_palette#apply()
  autocmd FileType coc-explorer call glyph_palette#apply()
augroup END

" ===
" === Theme
" ===
augroup theme_customization
  autocmd!
  " let g:SnazzyTransparent = 1 " 如果椒snazzy自动透明
  " colorscheme snazzy
  " colorscheme onedark
  " colorscheme molokai
  " colorscheme default
  " colorscheme afterglow
  " colorscheme PaperColor
  " colorscheme dusk
  " colorscheme minimalist
  " colorscheme carbonized-dark
  " colorscheme space-vim-dark
  " autocmd ColorScheme dracula hi VertSplit gui=none cterm=none
  " colorscheme dracula
  " set background=dark
  " colorscheme solarized
augroup END


" ===
" === Airline
" ===
augroup airline_customization
  autocmd!
  let g:airline_theme='kolor'
  " let g:airline_theme='murmur'
  " let g:airline_theme='jellybeans'
  " let g:airline_theme='serene'
  " let g:airline_theme='onedark'
  " let g:airline_theme='molokai'
  " let g:airline_theme='violet'
  " let g:airline_theme='solarized_flood'
  " let g:airline_theme='base16_harmonic16'
  " let g:airline_theme='term'
  " let g:airline_theme='fruit_punch'
augroup END

" ===
" === Custom Fix
" ===
augroup theme_customization_fix
  " highlight VertSplit gui=none guibg=none cterm=none ctermbg=none ctermfg=none
  " highlight Normal gui=none guibg=none ctermbg=none
  " highlight Visual guibg=#ABB2BF ctermbg=146 ctermfg=7
  " highlight Pmenu guibg=none cterm=none ctermbg=none ctermfg=13
  " highlight ColorColumn guibg=#ABB2BF ctermbg=4
  " highlight LineNr guibg=none ctermbg=none
  " highlight EndOfBuffer guibg=none ctermbg=none
  " highlight SignColumn guibg=none ctermbg=68

  " java
  " highlight javaStorageClass ctermfg=4  guifg=#C678DD
  " highlight javaClassDecl2 ctermfg=4  guifg=#C678DD
  " highlight javaClassDecl ctermfg=4  guifg=#C678DD
  " highlight ClassName ctermfg=4  guifg=#E5C07B
augroup END
" highlight Cursor guibg=Green guifg=Green ctermbg=2 ctermfg=4

" highlight PmenuSel ctermbg=4 ctermfg=14

" highlight CursorColumn guibg=#ABB2BF ctermbg=7

" }}}

