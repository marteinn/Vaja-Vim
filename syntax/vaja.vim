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
      \ let
      \ nil
      \ case
      \ import
      \ from

syntax match vajaNumber "\v<\d+>"
syntax match vajaNumber "\v<\d+\.\d+>"
syntax keyword vajaBoolean
    \ true
    \ false
syntax match vajaOperator '\v\.@<!<%(and|or|not)>'
syntax match vajaOperator '!=\|='
syntax match vajaOperator '$\|&'
syntax match vajaOperator '-\|->'
syntax match vajaOperator '>\|>=\|<\|<='
syntax match vajaOperator '|>'
syntax match vajaOperator '+\|-\|%\|*\|/'
syntax keyword vajaConditional if else case of
syntax keyword vajaControl return

syntax match vajaStringEscape "\v\\%([\\btnfr"]|u\x{4}|[0-3]\o{2}|\o{1,2})" contained
syntax region vajaString start=/"/ skip=/\\\\\|\\"/ end=/"/ contains=vajaStringEscape

syntax region vajaFunctionBlock transparent matchgroup=vajaBlockDefinition start="\<fn\>" end="\<end\>" contains=TOP
syntax region vajaFunctionBlock transparent matchgroup=vajaFunction start="\<fn\>" end="\<end\>" contains=TOP
syntax region vajaAnonymousFunction matchgroup=vajaBlockDefinition start="\<fn\>" end="\<end\>" contains=ALLBUT,@vajaNotTop fold

highlight default link vajaBlockDefinition Define
highlight default link vajaKeywords Keyword
highlight default link vajaFunctionBlock Function
highlight default link vajaNumber Number
highlight default link vajaBoolean Boolean
highlight default link vajaOperator Operator
highlight default link vajaConditional Conditional
highlight default link vajaControl Statement
highlight default link vajaString String
highlight default link vajaStringEscape Character
