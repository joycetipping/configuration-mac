" Vim syntax file
" Language: Profile
" Maintainer: Joyce Tipping <joyce@spencertipping.com>
" Last Change: 30 Sep 2009

syn keyword	label		  option subitem
syn keyword	label		  regexp contained
syn keyword	action		set debug_print trace
syn keyword action    println print contained
syn keyword	selection	include extract select if else

syn region  comment   start=/#/         end=/$/
syn region	printline	start=/println:/	end=/$/ contains=action
syn region	regexp 	  start=/regexp:/   end=/$/ contains=capture,variable,label
syn region	capture		start=/(?{/		    end=/)/	contains=variable contained
syn region	variable	start=/?{/hs=e+1	end=/}/he=s-1	contained


hi link 	label		    Type
hi link 	action		  Keyword
hi link		selection	  Keyword
hi link   comment     Comment
hi link   printline   String
hi link		regexp	    Special
hi link 	capture		  Type
hi link 	variable 	  Identifier
