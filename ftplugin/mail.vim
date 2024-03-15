function s:update_wrapping()
	if coc#source#khard#should_complete({ 'line': getline('.') })
		" temporarily disable line wrapping
		setlocal formatoptions-=tc
	else
		" re-enable line wrapping
		setlocal formatoptions+=tc
	endif
endfunction

autocmd CursorMoved,CursorMovedI <buffer> call s:update_wrapping()
