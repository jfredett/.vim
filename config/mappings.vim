let mapleader = ","

" Open tree on current directory
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
" open taglist
map <leader>tl <esc>:TlistToggle<CR>

" git blame
vmap <Leader>g :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

" Make Y consistent with D, C
nnoremap Y y$
