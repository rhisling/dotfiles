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

	Plug 'joshdick/onedark.vim'

	Plug 'arcticicestudio/nord-vim'

	Plug 'ayu-theme/ayu-vim'

	Plug 'leafgarland/typescript-vim'
	
	
	"Utility
	" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

	Plug 'vim-airline/vim-airline'

	Plug 'vim-airline/vim-airline-themes'

	Plug 'scrooloose/nerdtree'

	Plug 'vim-airline/vim-airline'

	Plug 'vim-airline/vim-airline-themes'

	Plug 'itchyny/lightline.vim'

	Plug 'Yggdroot/indentLine'

	

	Plug 'tpope/vim-surround'

	Plug 'tpope/vim-fugitive'

	Plug 'scrooloose/syntastic'

	Plug 'mattn/emmet-vim'

	" For python 
	Plug 'tmhedberg/SimpylFold'

	Plug 'vim-scripts/indentpython.vim'

	Plug 'nvie/vim-flake8'

	Plug 'jistr/vim-nerdtree-tabs'

	Plug 'kien/ctrlp.vim'

	Plug 'sheerun/vim-polyglot'


	"For Go
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

	"For Javascript
	Plug 'pangloss/vim-javascript'

	Plug 'peitalin/vim-jsx-typescript'

 	Plug 'mxw/vim-jsx'

  

call plug#end()


" deoplete
let g:deoplete#enable_at_startup = 1



""autocmd vimenter * NERDTree
"NerdTree config
:map <C-n> :NerdTree


let mapleader=" "
map <leader>s :source ~/.vimrc<CR>

"Theme and Styling
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1


if (has("termguicolors"))
  set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

colorscheme nord
let g:lightline = { 'colorscheme': 'nord' }

" let g:ayu_hide_endofbuffer=1
" let g:ayu_termcolors=256
" let g:ayu_terminal_italics=1
" let ayucolor="mirage"
" colorscheme ayu
" let g:lightline = {
"       \ 'colorscheme': 'ayu',
"       \ }

let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=256
let g:onedark_terminal_italics=1
" colorscheme onedark
" let g:lightline = {
"  \ 'colorscheme': 'onedark',
"  \ }

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


let python_highlight_all=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
