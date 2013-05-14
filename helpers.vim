" Source only if the file exists
function! SourceIfPresent(path)
  if filereadable(a:path)
    call Source(a:path)
  endif
endfunction

" Source using the base $VIM_PATH
function! Source(path)
  exec "source " . $VIM_PATH . '/' . a:path
endfunction
