
set backspace=2
set termguicolors
syntax on
set guifont=OperatorMonoSSM\ Nerd\ Font:h12 
call plug#begin('~/.vim/plugged')

  	Plug 'dracula/vim'

  	Plug 'crater2150/vim-theme-chroma'

  	Plug 'scrooloose/nerdtree'

	Plug 'tyrannicaltoucan/vim-quantum'

	Plug 'kaicataldo/material.vim'

	Plug 'mhartington/oceanic-next'

	Plug 'rakr/vim-one'

	Plug 'bling/vim-airline'

	Plug 'vim-airline/vim-airline'

	Plug 'pangloss/vim-javascript'

	Plug 'tpope/vim-surround'

	Plug 'scrooloose/syntastic'

	Plug 'valloric/youcompleteme'

	Plug 'mattn/emmet-vim'

call plug#end()
filetype plugin indent on    " required

""autocmd vimenter * NERDTree

filetype plugin indent on

" Show linenumbers
set number
set ruler

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


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



