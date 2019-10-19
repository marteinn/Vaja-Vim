" Vim syntax file
" Language:     vaja
" License:      MIT
" Authors:      Martin Sandström <martin@marteinn.se>
" URL:          http://github.com/marteinn/Vaja-Lang

if exists("b:current_syntax")
    finish
endif

echom "Our syntax highlighting code will go here."

let b:current_syntax = "vaja"

syntax keyword vajaKeywords
      \ if
      \ let
      \ nil

highlight default link vajaKeywords Keyword
