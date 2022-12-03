:set number
:set relativenumber
:set autoindent
:set smartindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4

call plug#begin()
Plug 'https://github.com/preservim/nerdtree'	" NerdTree  
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/clangd/coc-clangd'		" C / C++ 
Plug 'https://github.com/tc50cal/vim-terminal'	" Vim Terminal
Plug 'https://github.com/tpope/vim-fugitive'	" Git client
Plug 'https://github.com/jiangmiao/auto-pairs'	" Auto braket completion
Plug 'https://github.com/rust-lang/rust.vim'	" Rust Plugin

call plug#end()

set updatetime=300
set signcolumn=yes
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <C-t> :TerminalSplit zsh<CR> 

nnoremap <C-b> :quit<CR> 
nnoremap <C-s> :write<CR>

let mapleader = " "
" Basic Commands - F
noremap fs :write<CR> 
noremap fq :x<CR>
noremap qq :xall<CR>
noremap fx :q!<CR>

"Window Commands - W
noremap <leader>wh :splite<CR>
noremap <leader>wv :vsplit<CR>
noremap <leader> <C-W>

" Nerdtree - .
noremap . :NERDTreeToggle<CR>

" Git client - G
noremap gg :Git<CR>
noremap gc :Git commit<CR>
noremap gp :Git push<CR>
noremap gf :Git pull<CR>

" Terminal - o 
noremap <leader>ot :TerminalVSplit zsh<CR>
noremap <leader>oT :Terminal zsh<CR>
noremap <leader>on :TerminalSplit zsh<CR>

noremap <leader>db ologging.debug("")<Esc>hi

" Rust - r
noremap rr :RustRun<CR>
noremap rf :RustFmt<CR>
