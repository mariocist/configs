set number
set relativenumber
set numberwidth=1
set noswapfile
set noshowmode
set scrolloff=5
set mouse=a
set clipboard=unnamed
set incsearch
set ignorecase
set smartcase
set shiftwidth=4
set encoding=utf-8
syntax enable

call plug#begin('~/.config/.nvim/plugged')

" Autocomplete
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax Highlighting
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
Plug 'evanleck/vim-svelte', {'branch': 'main'}

" Theme
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sainnhe/everforest'

" Nav
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdtree' 
Plug 'ap/vim-buftabline'

call plug#end()

" Global config
colorscheme everforest

highlight Normal ctermbg=none
highlight NonText ctermbg=none

" Buftabline
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

let mapleader=" "

" Plug-Easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" NerdTree
nmap <Leader>n :NERDTreeFind<CR>
"let NERDTreeQuitOnOpen=1

" open new split panes to right and below
set splitright
set splitbelow

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <Leader>b :call OpenTerminal()<CR>

" Shortcuts
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
