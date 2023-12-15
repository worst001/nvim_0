  " ===
  " === lint
  " ===

augroup file_lint
  autocmd!
  autocmd   FileType  php          nnoremap <leader>k :call <SID>PHPFixerLint()<cr>
  autocmd   FileType  vue          nnoremap <leader>k :call <SID>JavaScriptESLint()<cr>
  autocmd   FileType  json         nnoremap <leader>k :call <SID>PrettierLint()<cr>
  autocmd   FileType  xml          nnoremap <leader>k :call <SID>XmlPrettierLint()<cr>
  autocmd   FileType  javascript   nnoremap <leader>k :call <SID>JavaScriptESLint()<cr>
  autocmd   FileType  cs           nnoremap <leader>k :call <SID>CSharpLint()<cr>
  autocmd   FileType  java         nnoremap <leader>k :call <SID>JavaLint()<cr>
  autocmd   FileType  scala        nnoremap <leader>k :call <SID>ScalaFormat()<cr>
  autocmd   FileType  lua          nnoremap <leader>k :call LuaFormat()<cr>
augroup END

function! s:JavaScriptESLint()
  :ALEFix
  checktime
endfunction

function! s:PHPFixerLint()
  !php-cs-fixer fix %
  checktime
endfunction

function! s:PrettierLint()
  !prettier --tab-width 4 --write %
  checktime
endfunction

function! s:XmlPrettierLint()
  !~/.vim/shell/xml-prettier/xml-beautify %
  checktime
endfunction

function! s:CSharpLint()
  !~/.vim/shell/uncrustify/uncrustify --no-backup -c ~/.vim/shell/uncrustify/etc/mono.cfg -f % -o %
  checktime
endfunction

function! s:JavaLint()
  !~/.vim/shell/uncrustify/uncrustify --no-backup -c ~/.vim/shell/uncrustify/etc/sun.cfg -f % -o %
  checktime
endfunction

function! s:ScalaFormat()
  !~/.vim/shell/scalafix/scalafmt -c ~/.vim/shell/scalafix/etc/.scalafmt.conf %
  checktime
endfunction
