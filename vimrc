set nocompatible

" plug.vim

call plug#begin()

Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dracula/vim'
Plug 'pbrisbin/vim-mkdir'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-commentary'
Plug 'thoughtbot/vim-rspec'
Plug 'dracula/vim'

call plug#end()

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = "!clear && bin/rspec {spec}"

" use colorsheme from above
colorscheme dracula

" useful overwrites
syntax on	" enable syntax highlighting

" leader as space
let mapleader = " "

" various settings
set backspace=2	" backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler	" show the cursor position all the time
set showcmd	" display incomplete commands
set incsearch	" do incremental searching
set laststatus=2	" always display the status line
set autowrite	" automatically :write before running commands

" softtabes, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" line numbers
set number
set numberwidth=5

" more natural splits
set splitbelow
set splitright

" make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" easy acess to start of line
nmap 0 ^

" reasonable wrapped navigation
nmap k gk
nmap j gj

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" automatically ralance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>
