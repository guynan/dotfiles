" Guy Nankivell, 2016

" This is my .vimrc. Pretty much a work in 
" progress as I learn what suits my workflow
" best. I do intend this to be well documented.

set nocompatible " Required for Vundle

" Vundle stuff
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'davidhalter/jedi-vim' " This is python autocomplete...

" This is how to install the plugins `:PluginInstall'
" to update `:PluginUpdate'. e.g, comment line & update to
" delete a plugin.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
"End Vundle stuff

syntax on
set number
" set relativenumber # FUCK I CAN'T DEAL
"set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4

" Remember to set this to the colour of your terminal
" not what you think the colours should be
"
"let g:solarized_termcolors=256
set background=light
"set background=dark

" This allows modelines in vim
set modeline
" This is super helpful. Initialise by {{{ in comment
" and terminate by }}} in another comment. 
set foldmethod=marker " can also fold by indent

" This adds virtual line navigation as opposed 
" to the usual line by line vim method
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" To set the colorscheme 
colorscheme solarized
"
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

" Remaps changing vim windows by using Ctrl + h,j,k,l
" Use :vs <file> to open other workspace. 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" This allows you to exit insert & visual mode by using `;;'
imap ;; <Esc>
vmap ;; <Esc>


" Language Specific indentation tab vs space etc...
"
" Python
au BufNewFile,BufRead *.py,
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set smartindent |
    \ set fileformat=unix |

