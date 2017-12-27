execute pathogen#infect()

"""  LOOK AND FEEL

set laststatus=2
set noshowmode
set noruler
set cmdheight=1
set noshowcmd
silent

set number              "This turns on line numbering
filetype on             "This turns detecting syntax
colorscheme desert      "This turns 'desert' color scheme
syntax on

set hidden
set history=100


set nowrap
set tabstop=4
set shiftwidth=2
set expandtab
set smartindent
set autoindent

set showmatch

autocmd BufWritePre * :%s/\s\+$//e    "This remove whitespaces on save

set mouse=a

set hlsearch   "Good search
"nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>   "Cancel search on Esc


""" end LOOK AND FEEL



"""     KEYS

let mapleader=" "
map <leader>s :source ~/.vim/vimrc<CR>

"Use arrows:
map <D-A-Right> <C-w>l
map <D-A-Left> <C-w>h
map <D-A-Down> <C-w><C-w>
map <D-A-Up> <C-w>W

"Save by Ctrl+S :

" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>
inoremap <c-s> <Esc>:Update<CR>

let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>


""" end KEYS
