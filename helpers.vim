function! SourceIfPresent(path)
  if filereadable(a:path)
    call Source(a:path)
  endif
endfunction

function! Source(path)
  exec "source " . $VIM_PATH . a:path
endfunction
