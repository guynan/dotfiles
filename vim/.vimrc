" Guy Nankivell, 2016

" This is my .vimrc. Pretty much a work in 
" progress as I learn what suits my workflow
" best. I do intend this to be well documented.


syntax on
set number
" set relativenumber # FUCK I CAN'T DEAL
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4

" Remember to set this to the colour of your terminal
" not what you think the colours should be
"
"let g:solarized_termcolors=256
"set background=light
set background=dark

" This allows modelines in vim
set modeline
" This is super helpful. Initialise by {{{ in comment
" and terminate by }}} in another comment. 
set foldmethod=marker 

" This adds virtual line navigation as opposed 
" to the usual line by line vim method

noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" To set the colorscheme 
colorscheme solarized
" This next line is to force compatibility with
" xfce4 terminal
set t_Co=16

" Here I disabled the arrow keys so that I use hjkl
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


" This allows you to exit insert & visual mode by using `;;'
imap ;; <Esc>
vmap ;; <Esc>
