" Pathogen
execute pathogen#infect()

" Colorscheme
colorscheme molokai
set t_Co=256
set background=dark

syntax enable	" enable syntax processing

" Spaces & Tabs
set textwidth=120
set shiftwidth=4
set tabstop=8	" number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

" UI Config
set title
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

" Searching
set ignorecase
set smartcase
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space> :nohlsearch<CR>	" turn off search highlight ,<space>

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za

set foldmethod=indent   " fold based on indent level

" Powerline Set Up
let g:airline_theme='badwolf'
let g:airline_powerline_fonts=1
set laststatus=2


" Propmptline Set Up
let g:promptline_theme='badwolf'
" sections (a, b, c, x, y, z, warn) are optional
let g:promptline_preset = {
         \'a' : [ promptline#slices#host(), promptline#slices#user() ],
         \'b' : [ promptline#slices#cwd() ],
         \'c' : [ promptline#slices#jobs() ],
         \'x' : [ promptline#slices#python_virtualenv() ],
         \'z' : [ promptline#slices#vcs_branch() ],
         \'warn' : [ promptline#slices#last_exit_code(), promptline#slices#battery() ]}

" NERDTree
map <C-n> :NERDTreeToggle<CR>
