" Language: Lisp with Paragraphs
" Author: Spencer Tipping <spencer@spencertipping.com>

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn include @lispSyntax syntax/lisp.vim

syn region lispCodeRegion    start=/^\s*(/     end=/^$/ contains=@lispSyntax transparent fold
syn region lispCommentRegion start=/^\s*[^( ]/ end=/^$/ fold

hi link lispCommentRegion   Comment

set foldmethod=syntax

let b:current_syntax = "lispwithparagraphs"
