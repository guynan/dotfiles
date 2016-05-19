" Author: Guy Nankivell
" Description: Makes writing things easier to see certain aspects.

if exists("b:current_syntax")
  finish
endif

" Comments
" Shebang
syntax match authorShebang "\v//.*$"

" Set highlights
highlight default link authorShebang Comment

" Force vim to sync at least x lines. This solves the multiline comment not
" being highlighted issue
syn sync minlines=100

let b:current_syntax = "author"
