" Disable compatibility with vi which can cause unexpected issues. set nocompatible Enable type file detection. Vim will be able to try to detect the type of file in use. filetype on Enable plugins and load plugin for the detected file type. filetype plugin on Load an indent file for the detected file type. filetype indent on Turn syntax highlighting on. syntax on Add numbers to each line on the left-hand side. set number Highlight cursor line underneath the cursor horizontally. set cursorline Highlight cursor line underneath the cursor vertically. set cursorcolumn
" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Set encoding
set encoding=utf-8

" More powerful backspacing"
set backspace=indent,eol,start

" Required for correct colors to be displayed when running Vim or Neovim in a terminal
set termguicolors

" Set font
set guifont=OperatorMonoSSM\ Nerd\ Font:h15 

inoremap jj <Esc>

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

	"Themes
	Plug 'tyrannicaltoucan/vim-quantum'

	Plug 'hzchirs/vim-material'

	Plug 'kaicataldo/material.vim'

	Plug 'arcticicestudio/nord-vim'

	Plug 'ayu-theme/ayu-vim'

	Plug 'joshdick/onedark.vim'

	"Utility
	" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

	Plug 'vim-airline/vim-airline'

	Plug 'vim-airline/vim-airline-themes'

	Plug 'dense-analysis/ale'

	Plug 'preservim/nerdtree'

	"Plug 'itchyny/lightline.vim'

	Plug 'pangloss/vim-javascript'

	Plug 'tpope/vim-surround'

	Plug 'tpope/vim-fugitive'

	Plug 'scrooloose/syntastic'

	Plug 'nvie/vim-flake8'

	Plug 'jistr/vim-nerdtree-tabs'

	Plug 'kien/ctrlp.vim'

call plug#end()

" }}}


" MAPPINGS --------------------------------------------------------------- {{{


" Set the backslash as the leader key.
let mapleader = "\\"

" Press \\ to jump back to the last cursor position.
nnoremap <leader>\ ``

map <leader>s :source ~/.vimrc<CR>

" Press \p to print the current file to the default printer from a Linux operating system.
" View available printers:   lpstat -v
" Set default printer:       lpoptions -d <printer_name>
" <silent> means do not display output.
nnoremap <silent> <leader>p :%w !lp<CR>

" Type jj to exit insert mode quickly.
inoremap jj <Esc>

" Press the space bar to type the : character in command mode.
nnoremap <space> :

" Pressing the letter o will open a new line below the current one.
" Exit insert mode after creating a new line above or below the current line.
nnoremap o o<esc>
nnoremap O O<esc>

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" Yank from cursor to the end of line.
nnoremap Y y$

" Map the F5 key to run a Python script inside Vim.
" I map F5 to a chain of commands here.
" :w saves the file.
" <CR> (carriage return) is like pressing the enter key.
" !clear runs the external clear screen command.
" !python3 % executes the current file with Python.
nnoremap <f5> :w <CR>:!clear <CR>:!python3 % <CR>

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
nnoremap <F3> :NERDTreeToggle<cr>

" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

" T	o source vimrc
map <leader>s :source ~/.vimrc<CR>


" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END


	if (has("termguicolors"))
	set termguicolors
	endif

	let $NVIM_TUI_ENABLE_TRUE_COLOR=1

	let g:javascript_plugin_flow = 1
	let g:jsx_ext_required = 0
	"let g:airline_theme='base16_onedark'
	colorscheme onedark
    let g:airline_theme='onedark'
    let g:airline_powerline_fonts = 1


" }}}


" STATUS LINE ------------------------------------------------------------ {{{

	


" }}}








" let g:material_theme_style = 'palenight'
" let g:material_terminal_italics = 1
" colorscheme material
" let g:lightline = { 'colorscheme': 'material_vim' }

" let g:material_terminal_italics = 1
" let g:material_style = 'oceanic'
" set termguicolors
" set background=dark
" colorscheme vim-material
" let g:airline_theme = 'material'

"let g:material_style='oceanic'
"set background=dark
"colorscheme vim-material
"set background=dark
"colorscheme vim-material
"let g:airline_theme='material'

"Syntastic config
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 1


let g:SimpylFold_docstring_preview=1


au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

"Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/Users/havok/anaconda3/bin/python'

