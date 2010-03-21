" TeX with OCaml
" Maintainer: Spencer Tipping <spencer@spencertipping.com>
" Language:   TeX with OCaml in it

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn region ocamltexComment start=/\%^\|^\s*:.$/ end=/\%$\|^\s*::.*\<ocaml\>.*$/ contains=ocamltexSection
syn match  ocamltexSection /^\s*- .*$/ contained

runtime! syntax/ocaml.vim

hi link ocamltexSection Special
hi link ocamltexComment Comment

let b:current_syntax = "ocamltex"