function! SwitchBackground()
  if (g:background_style == 'dark')
    set background=light
    let g:background_style = 'light'
  else
    set background=dark
    let g:background_style = 'dark'
  endif
  colorscheme solarized
endfunction

command BG :call SwitchBackground()

"flop the background from light->dark or vv.
nmap <silent> <C-g> <ESC>:BG<CR>
