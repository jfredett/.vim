" better buffer management
set hidden

"always show the status line
set laststatus=2

set backspace=indent,eol,start

" 80 characters, damnit
set textwidth=80

" Wrapping
set wrap

" Highlight the line the cursor is on
set cursorline

" Show possible command line completions
set wildmenu
set wildmode=list:longest

" Line numbers
set number

" Longer history (default is 20)
set history=1000

" Basic tab behavior
set autoindent
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

" Split toward the bottom right
set splitbelow
set splitright

" Set up persistent undo
set undodir=~/.vim/undofile
set undofile
set undolevels=1000000
set undoreload=10000
