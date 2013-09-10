"I screw up alot
command! W w
command! Wq wq
command! Q q
command! WQ wq

nmap  <leader>f<space> zf%

"remap mark from ` to ', and vice versa, so we get the better behavior more
"easily.
nnoremap ' `
nnoremap ` '

nmap <silent> <leader>t<space> yl<ESC>:Tab /"<CR>
nmap <silent> <leader>a<space> :Ack '<cword>'<CR>

nmap <silent> C :cnext<CR>
nmap <silent> B :cprevious<CR>

nmap <silent> <C-N> :bn<CR>
nmap <silent> <C-P> :bp<CR>

" the foldlevel is because :Gstatus sets it to 1 for some (inexplicable) reason
nmap <silent> <leader>gs<space> :Gstatus<CR>:set foldlevel=20<CR>

"use tag-completion instead of omnicompletion
inoremap <C-N> <C-X><C-]>

nnoremap <silent> <leader>fu<space> :GundoToggle<CR>

let maplocalleader = ","


