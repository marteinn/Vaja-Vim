" Vim syntax file
" Language:     vaja
" License:      MIT
" Authors:      Martin Sandström <martin@marteinn.se>
" URL:          http://github.com/marteinn/Vaja-Lang

if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "vaja"

syntax keyword vajaKeywords
      \ if
      \ let
      \ nil
      \ case
      \ fn

syntax match vajaNumber "\v<\d+>"
syntax match vajaNumber "\v<\d+\.\d+>"
syntax keyword vajaBoolean
    \ true
    \ false
syntax keyword vajaOperator and or not
syntax keyword vajaConditional else
syntax keyword vajaControl return

syntax match vajaStringEscape "\v\\%([\\btnfr"]|u\x{4}|[0-3]\o{2}|\o{1,2})" contained
syntax region vajaString start=/"/ skip=/\\\\\|\\"/ end=/"/ contains=vajaStringEscape

highlight default link vajaKeywords Keyword
highlight default link vajaNumber Number
highlight default link vajaBoolean Boolean
highlight default link vajaOperator Operator
highlight default link vajaConditional Conditional
highlight default link vajaControl Statement
highlight default link vajaString String
highlight default link hyStringEscape Character
