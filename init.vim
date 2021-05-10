let mapleader = " "

autocmd GUIEnter * simalt ~x "full screen
"call GuiWindowMaximized(1)

cd C:\Users\ido65\Desktop\coding\code 

"setting
set wildmenu
set nu rnu
set hlsearch!
set termguicolors
set tabstop=4
set guioptions =d
set autochdir "autocmd BufEnter * silent! lcd %:p:h
set clipboard+=unnamedplus
syntax on
"pluging

call plug#begin()
Plug 'franbach/miramare'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'dart-lang/dart-vim-plugin'
"Plug 'https://github.com/z3t0/arduvim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
"colorscheme nord
let g:nord_cursor_line_number_background = 1


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline_powerline_fonts = 1
""

colorscheme gruvbox
let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:arduvim_path='C:/Program Files (x86)/Arduino'
""let g:miramare_enable_italic = 0
""colorscheme miramare
""let g:miramare_transparent_background = 1
""hi Normal guibg=NONE ctermbg=NONE



"function
fu GetTerm()
		sp
	terminal 
	wincmd x
	res 30
endfu

fu RunCode()
	if &filetype ==#'python'
		!py %
endfu

"calling function
noremap <Leader>j :call GetTerm()<CR>
noremap <Leader>h :cd C:\Users\ido65\Desktop\coding\code <CR>
noremap <F3> :set hlsearch!<CR>
"save wirth sapce s
map <Leader>s :w<CR> 


"Navigating with guis
inoremap <Space><Tab> <Esc>/<++><Enter> |:let @/ = ""
vnoremap <Space><Tab> <Esc>/<++><Enter> |:let @/ = ""
map <Space><Tab> <Esc>/<++><Enter> |:let @/ = ""
""https://vim.fandom.com/wiki/Using_tab_pages
noremap <C-Tab> :tabnext <Return>
noremap <C-S-Tab> :tabprev <Return>
noremap <Leader>e    :NERDTree <CR>

"""TODO 
" 
" 
" 
" 
" 
" 
" 
" 
" 
" 
