let mapleader = " "

autocmd GUIEnter * simalt ~x "full screen
"call GuiWindowMaximized(1)


"setting
set wildmenu
set nu rnu
set hlsearch!
set termguicolors
set tabstop=4
set autochdir "autocmd BufEnter * silent! lcd %:p:h
set clipboard+=unnamedplus
syntax on
"pluging

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'junegunn/limelight.vim'
Plug 'plasticboy/vim-markdown'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/goyo.vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'preservim/nerdtree'
"Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'dhruvasagar/vim-dotoo'

call plug#end()


""
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
set background=dark



"goyo with limeght
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
noremap <leader>g :Goyo <CR> 
"function

fu RunCode()
	if &filetype ==#'python'
		 FloatermNew py %
 endif
endfu

"calling function
noremap <Leader>j :FloatermNew powershell<CR>
noremap <F3> :set hlsearch!<CR>
"save wirth sapce s
map <Leader>s :w<CR> 


"Navigating 
inoremap <Space><Tab> <Esc>/<++><Enter> |:let @/ = ""
vnoremap <Space><Tab> <Esc>/<++><Enter> |:let @/ = ""
map <Space><Tab> <Esc>/<++><Enter> |:let @/ = ""

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==

vnoremap <A-j> :m .+1<CR>==
vnoremap <A-k> :m .-2<CR>==

""https://vim.fandom.com/wiki/Using_tab_pages
noremap <C-Tab> :bnext  <Return>
noremap <C-S-Tab> :bprev <Return>
noremap<Leader><Tab> :tabnext <Return>
noremap<Leader><S-Tab> :tabprev <Return>
noremap <Leader>e    :NERDTree <CR>

"""TODO 

