function! Reversed(l)
    let new_list = deepcopy(a:l)
    call reverse(new_list)
    return new_list
endfunction

function! Append(l, val)
    let new_list = deepcopy(a:l)
    call add(new_list, a:val)
    return new_list
endfunction

" 支持List、Map
function! Reduced(l)
    let new_list = deepcopy(a:l)
    if type(new_list) == type([])
    	call remove(new_list, -1)
    elseif type(new_list) == type({})
	let lkey = get(keys(new_list), -1)
	call remove(new_list, lkey)
    else
	return
    endif
    return new_list
endfunction

" 支持List、Map
function! Assoc(l, i, val)
    let new_list = deepcopy(a:l)
    if type(new_list) == type([])
    	let new_list[a:i] = a:val
    elseif type(new_list) == type({})
	let new_list.i = a:val
    else
	return
    endif
    return new_list
endfunction

" 支持List、Map
function! Pop(l, i)
    let new_list = deepcopy(a:l)
    call remove(new_list, a:i)
    return new_list
endfunction
    
function! Mapped(fn, l)
    let new_list = deepcopy(a:l)
    call map(new_list, string(a:fn) . '(v:val)')
    return new_list
endfunction

function! Filtered(fn, l)
    let new_list = deepcopy(a:l)
    call filter(new_list, string(a:fn) . '(v:val)')
    return new_list
endfunction

function! Removed(fn, l)
    let new_list = deepcopy(a:l)
    call filter(new_list, '!' . string(a:fn) . '(v:val)')
    return new_list
endfunction

""
" GetSelctn
" 获取vmode选择区域
"
" @param  <+Comment+>
"
" @return string
function! GetSelctn() abort
    let regTmp = @a
    exec "normal gv\"ay"
    let vtext = @a
    let @a = regTmp
    return vtext
endfunction

""
" GetCurctn
" 获取光标处单词
"
" @param  <+Comment+>
"
" @return string
function! GetCurctn() abort
    return expand("<cword>")
endfunction

""
" Terminalinit
" 进入终端时的初始化
"
" @param  <+Comment+>
"
" @return null
function! TerminalInit() abort
    :set nonu
    :set norelativenumber
    :set statusline=\ 
    :highlight StatusLine ctermbg=none
endfunction
