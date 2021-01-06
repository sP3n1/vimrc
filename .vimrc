" colorstuff
colorscheme murphy              " darkblue, delek, desert, evening, industry (other cool colorschemes)
syntax enable                   " activates syntax highlighting

" spaces and tabs
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " inserts 4 tabs for TAB
set expandtab                   " tabs are spaces
set shiftwidth=4                " indent 4 spaces

" Folderstuff
set backupdir=~/.vim/backups    " set backup folder
set undodir=~/.vim/undo         " set undo folder
set directory=~/.vim/swaps      " set swap folder

" UI config
set number                      " show line numbers
set cursorline                  " highlight current line
set colorcolumn=80              " show ruler after 80 chars
filetype plugin indent on       " load filetype-specific indent and plugin files
map <F4> :NERDTreeToggle<CR>    " maps F4 as NerdTree toggle
let NERDTreeShowHidden=1        " show hidden files in NerdTree
set pastetoggle=<F6>            " use F6 as toggle for pastemode, to safely paste code without indention
set wildmenu                    " visual autocomplete for command menu
set showmatch                   " highlight matching parenthesis
set encoding=utf-8              " utf-8
set ruler                       " show position of cursor in right-lower corner
set showcmd                     " show uncomplete command (like d, c etc.)
map <Tab> :tabn<CR>             " use tab to switch between tabs (forwards)
map <S-Tab> :tabp<CR>           " use shift-tab to switch between tabs (backwards)

" Searching
set incsearch                   " search as characters are entered
set hlsearch                    " highlight matches
map <F5> :nohlsearch<CR>        " use F5 for deleting search highlights
set ignorecase                  " no case sensitive searching
set smartcase                   " case sensitive searching only with upper case characters

" Mouse things
set mouse=n                     " enables mouse usage for normal mode

" Functions

"" restores cursor position
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
