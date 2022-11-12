:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()
Plug 'https://github.com/preservim/nerdtree'	" NerdTree  
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/clangd/coc-clangd'		" C / C++ 
Plug 'https://github.com/tc50cal/vim-terminal'	" Vim Terminal
Plug 'https://github.com/tpope/vim-fugitive'	" Git client

call plug#end()

nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <C-t> :TerminalSplit zsh<CR> 

nnoremap <C-b> :quit<CR> 
nnoremap <C-s> :write<CR>

let mapleader = " "
" Basic Commands 
noremap <leader>fs :write<CR> 
noremap <leader>fq :x<CR>

" Nerdtree
noremap <leader>. :NERDTreeToggle<CR>

noremap <leader>db ologging.debug("")<Esc>hi

inoremap <expr> <CR> pumvisible() ? coc#_select_confirm() : "<CR>"

