" Vim syntax: 1ML - Core and modules united
" Version: 0.0.0
" Copyright (C) 2019 El Pin Al
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}

if exists('b:current_syntax')
  finish
endif




syntax keyword mlDirective module submodule use private
syntax keyword mlType int bool char string
syntax keyword mlKeyword
  \ if then else end
  \ in where struct sig include open fun local
  \ fix primitive wrap unwrap type true false

syntax match mlArrow /\(->\|\~>\|=>\)/
syntax match mlComment /--.*/
syntax match mlDecimal /\<\d\+\>/
syntax match mlPunct /\(:>\|:\|=\(>\)\@!\)/
syntax match mlLetOp /let[+*&]\?/
syntax match mlRawId /r#\h*/

syntax region mlString start=+"+ skip=+\\"+ end=+"+




highlight default link mlDirective PreProc
highlight default link mlType Type
highlight default link mlComment Comment
highlight default link mlDecimal Number
highlight default link mlArrow Keyword
highlight default link mlString String
highlight default link mlLetOp Keyword
highlight default link mlKeyword Keyword
highlight default link mlPunct Keyword
highlight default link mlRawId Normal




let b:current_syntax = '1ml'

" __END__
" vim: foldmethod=marker
