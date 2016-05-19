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
set background=dark

" This adds virtual line navigation as opposed 
" to the usual line by line vim method

noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

