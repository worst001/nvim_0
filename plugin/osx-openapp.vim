  " ===
  " === 打开微信开发工具
  " ===
nnoremap <leader>ow :call <SID>OpenWeAppDevelop()<cr>

function! s:OpenWeAppDevelop()
  :silent! !/Applications/wechatwebdevtools.app/Contents/MacOS/wechatwebdevtools
endfunction

  " ===
  " === 打开Cocos开发工具
  " ===
nnoremap <leader>ox :call <SID>OpenCocos2dX()<cr>

function! s:OpenCocos2dX()
  :tabnew term:///Applications/CocosCreator.app/Contents/MacOS/CocosCreator
endfunction

  " ===
  " === 打开Chrome浏览器
  " ===
nnoremap <leader>oc :call <SID>OpenChormePreview()<cr>

function! s:OpenChormePreview()
  :silent! !/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome
endfunction

  " ===
  " === Custom Preview 自定义浏览器预览
  " ===
augroup filetype_custom
  autocmd!
  autocmd BufReadPost,FileReadPost     *.jpg,*JPG,*.png,*.PNG,*.svg     call   <SID>CustomPreview()
augroup end
function! s:CustomPreview()
  " silent! /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome "%"
  terminal open "%"
  hide
endfunction

  " ===
  " === Audio Preview
  " ===
augroup filetype_audio
  autocmd!
  autocmd BufReadPost,FileReadPost    *.wav,*.mp3     call   <SID>AudioPreview()
augroup end
function! s:AudioPreview()
  terminal open "%"
  hide
endfunction

  " ===
  " === media preview
  " ===
augroup filetype_media
  autocmd!
  autocmd BufReadPost,FileReadPost    *.mov           call   <SID>MediaPreview()
augroup end
function! s:MediaPreview()
  term open "%"
  hide
endfunction

  " ===
  " === 用默认应用打开当前文件
  " ===
nnoremap  <leader>oo :call <SID>OpenCurrentFile()<cr>

function! s:OpenCurrentFile()
  :silent! !open "%"
endfunction

" ===
" === Open Url
" ===
nnoremap  <leader>of :call <SID>OpenUrl()<cr>
function! s:OpenUrl() abort
  let vtext = expand("<cfile>")
  silent! execute "!open " . shellescape(expand(vtext))
endfunction
