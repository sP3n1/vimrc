" colorstuff
colorscheme murphy              " darkblue, delek, desert, evening, industry (other cool colorschemes)
syntax enable                   " activates syntax highlighting

" spaces and tabs
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " inserts 4 tabs for TAB
set expandtab                   " tabs are spaces
set shiftwidth=4                " indent 4 spaces
set ff=unix                     " don't

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
set splitbelow                  " split window by adding the new window below the current one

" Searching
set incsearch                   " search as characters are entered
set hlsearch                    " highlight matches
map <F5> :nohlsearch<CR>        " use F5 for deleting search highlights
set ignorecase                  " no case sensitive searching
set smartcase                   " case sensitive searching only with upper case characters

" Mouse things
set mouse=n                     " enables mouse usage for normal mode

""""" vim-ale settings

" fixers
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'hcl': ['terraform'],
\   'python': ['autoimport', 'autoflake', 'isort', 'black']
\}
let g:ale_fix_on_save = 1

" error symbol to use in sidebar
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠'

" configure gitlablint
let g:ale_pattern_options = {
\   '.gitlab-ci\.yml$': {
\       'ale_linters': ['gitlablint'],
\   },
\}

"""" gutentags settings

" enable gtags module
let g:gutentags_modules = ['ctags']

" generate datebases in vim directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.vim/tags')

" add TAGS to statusline when gutentags is generating things
set statusline+=%{gutentags#statusline()}


"" restores cursor position
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL