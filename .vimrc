set number
let mapleader=" "

" reload .vimrc when pressing <leader>+s
map <leader>s :source ~/.vimrc<CR>

" keep more info in memory to speed vim up
set hidden
set history=100

filetype indent on
set nowrap              " lines don't wrap around anymore
set softtabstop=4       " seperate tabs into columns of length 4
" set tabstop=4           " tabs will be interpreted to be 4 spaces long  
set shiftwidth=4        " identing will insert 4 spaces
set expandtab
set smartindent
set autoindent

set pastetoggle=<F3>    " pastemode turns off autoidenting
