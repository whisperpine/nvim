" Enable 'Enter' key to select auto completed option
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" Open file at the same place where last time left off
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
\ | exe "normal! g'\"" | endif


" Override indent rule for specific filetype
autocmd Filetype xml setlocal tabstop=2 shiftwidth=2 softtabstop=2

" 0 -> blinking block.
" 1 -> blinking block (default).
" 2 -> steady block.
" 3 -> blinking underline.
" 4 -> steady underline.
" 5 -> blinking bar (xterm).
" 6 -> steady bar (xterm).
let &t_SI = "\e[6 q"    " set cursor shape to steady bar inside INSERT mode
let &t_EI = "\e[2 q"    " Set cursor shape to steady block inside NORMAL mode
let &t_SR = "\e[4 q"    " Set cursor shape to steady block inside REPLACE mode

syntax on               " Enable syntax highlighting
filetype plugin on      " Enable filetype-specific plugin
filetype indent off     " Disable filetype-specific indent

" Configure colorscheme
if $TERM_PROGRAM != 'Apple_Terminal'
    set termguicolors
endif

" Vim native way to remove background color
" highlight Normal guibg=NONE ctermbg=NONE

set background=dark     " Apply dark theme in any color scheme

set autoindent          " Inherit the indent format when changing line
set smartindent         " React to the syntax or style of the code

set ignorecase          " Ignore upper case or lower case when searching
set smartcase           " Override 'ignorecase' if the search pattern contains upper case char
set incsearch           " highlight when searching
set nohls               " Don't highlight searching result

set number              " Show line number
set encoding=utf-8      " Avoid error when displaying Chinese
set shortmess-=S        " Show search results in [x/y] format
set nowrap              " Don't wrap lines when it's longer than the window width
set noshowmode          " No need to show mode because of lightline plugin
set noshowmatch         " Don't hightlight bracket pair
set showcmd             " Show command in the bottom right corner
set timeoutlen=500      " Time to wait for a mapped sequence to complete.
set ttimeoutlen=5       " Time in milliseconds that vim wait after pressing <esc>
set laststatus=2        " Always show status line
set cursorline          " Highlight the line where the cursor is at
set scrolloff=3         " Cursor will always be 3 lines above the window edge
set fileformat=unix     " Set end of line style to LF
set mouse=              " Disable mouse in every vim mode
set shellslash          " Use slash instead of backslash in paths
set shell=nu            " Set nushell as the default terminal shell

" Fix external command issues when 'set shell=nu' on Windows
set shellcmdflag=-c
set shellquote=
set shellxquote=

" Replace tab with space chars
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" When the cursor is at the start of an empty line,
" pressing backspace will wrap it to the previous line
set backspace=indent,eol,start

" Share system clipboard
set clipboard+=unnamedplus
