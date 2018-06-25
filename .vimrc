syntax on
filetype on

set backspace=2
set termguicolors
set guifont=OperatorMonoSSM\ Nerd\ Font:h12 

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
  	Plug 'dracula/vim'

  	Plug 'crater2150/vim-theme-chroma'

	Plug 'tyrannicaltoucan/vim-quantum'

	Plug 'kaicataldo/material.vim'

	Plug 'mhartington/oceanic-next'

	Plug 'rakr/vim-one'


	"Utility
	Plug 'scrooloose/nerdtree'

	Plug 'bling/vim-airline'

	Plug 'vim-airline/vim-airline'

	Plug 'pangloss/vim-javascript'

	Plug 'tpope/vim-surround'

	Plug 'scrooloose/syntastic'

	Plug 'mattn/emmet-vim'

	

call plug#end()

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
let g:airline_theme = 'material'

if (has("termguicolors"))
  set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:material_terminal_italics = 1
let g:material_theme_style = 'dark'
set termguicolors
set background=dark
colorscheme material


"Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0