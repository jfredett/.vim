" Source only if the file exists
function! SourceIfPresent(path)
  if filereadable(RelativePath(a:path))
    call Source(a:path)
  endif
endfunction

" Source using the base $VIM_PATH
function! Source(path)
  exec "source " . RelativePath(a:path)
endfunction

" Construct the $VIM_PATH relative path for the given value
function! RelativePath(path)
  return $VIM_PATH . "/" . a:path
endfunction

" Sources every file from a given directory
"
" NB. Duplicates a bit from Source, make sure they stay synced.
function! SourceAllFrom(path)
  for plugin_file in split(glob(RelativePath(a:path) . '/*'))
    exec "source " . plugin_file
  endfor
endfunction
