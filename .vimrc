syntax on
filetype on

set encoding=utf-8
set backspace=indent,eol,start
set backspace=2
set termguicolors
set guifont=OperatorMonoSSM\ Nerd\ Font:h15
set clipboard=unnamed
"Keep more info in memory
set hidden
set history=100
" Show linenumbers
set number
set ruler

"Setting search highlight
set hlsearch

"Indenting
filetype plugin indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

call plug#begin('~/.vim/plugged')

	"Themes
	Plug 'tyrannicaltoucan/vim-quantum'

	Plug 'rakr/vim-one'

	Plug 'hzchirs/vim-material'
  
  	Plug 'kaicataldo/material.vim'

  
	"Utility
	" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

	Plug 'scrooloose/nerdtree'

	Plug 'vim-airline/vim-airline'

	Plug 'vim-airline/vim-airline-themes'

	Plug 'itchyny/lightline.vim'

	Plug 'pangloss/vim-javascript'

	Plug 'tpope/vim-surround'

	Plug 'tpope/vim-fugitive'

	Plug 'scrooloose/syntastic'

	Plug 'mattn/emmet-vim'

	" For python 
	Plug 'tmhedberg/SimpylFold'

	Plug 'vim-scripts/indentpython.vim'

	Plug 'Valloric/YouCompleteMe'

	Plug 'nvie/vim-flake8'

	Plug 'jistr/vim-nerdtree-tabs'

	Plug 'kien/ctrlp.vim'

  

call plug#end()


" deoplete
let g:deoplete#enable_at_startup = 1



""autocmd vimenter * NERDTree
"NerdTree config
:map <C-n> :NerdTree


let mapleader=" "
map <leader>s :source ~/.vimrc<CR>

"Theme and Styling
syntax on
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1


if (has("termguicolors"))
  set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1


let g:material_theme_style = 'ocean'
let g:material_terminal_italics = 1
colorscheme material
let g:lightline = { 'colorscheme': 'material_vim' }

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
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

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

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF


let python_highlight_all=1
syntax on

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree