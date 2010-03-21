" Cleaner TeX
" Maintainer: Spencer Tipping <spencer@spencertipping.com>
" Language:   Cleaner TeX (a variant of LaTeX)

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match  cltTitle   /^= .*$/
syn match  cltAuthor  /^a .*$/
syn match  cltDate    /^d .*$/
syn match  cltBegin   /^begin$/
syn match  cltSection /^\s*- .*$/
syn region cltVerbatim start=/^\s*::$/ end=/^\s*:\.$/

syn match  cltEnumeratedThing /^\s*[eid]\[/
syn match  cltEnumeratedThing /^\s*\][eid]/
syn match  cltItem            /^\s*+\s/
syn match  cltQuantifiedItem  /^\s*+\[[^\]]*\]\s/

runtime! syntax/tex.vim

hi link cltBegin    Keyword
hi link cltTitle    Identifier
hi link cltAuthor   Identifier
hi link cltDate     Identifier

hi link cltEnumeratedThing Special
hi link cltItem            Special
hi link cltQuantifiedItem  Special

hi link cltSection  Type

hi link cltVerbatim String

let b:current_syntax = "cltex"