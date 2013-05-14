" Don't use swapfiles
set nobackup
set nowritebackup
set noswapfile

let g:background_style='dark'

"more bashy tab complete
set wildmenu

"reduce error message noise
set shortmess=aIA

let g:C_MapLeader = ','

" Inform me of random whitespace
set list
set listchars+=tab:\ \  "ignore tabs
set listchars+=eol:\    "ignore eol's.
set listchars+=trail:·
set listchars+=extends:❯
set listchars+=precedes:❮

"use the fancy unicode characters for powerline
let g:Powerline_symbols = 'fancy'
