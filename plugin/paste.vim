"=============================================================================
" FILE: paste.vim
" AUTHOR: Enrico Bacis <enrico.bacis@gmail.com>
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
"=============================================================================

function! Paste()

  let l:prefix="silent read !"

  if executable("pbpaste")
    execute l:prefix."pbpaste"

  elseif executable("xclip")
    execute l:prefix."xclip -selection clipboard -o"

  elseif executable("xsel")
    execute l:prefix."xsel --clipboard --output"

  else
    echom "Error: pbpaste, xclip or xsel in path required"

  endif

endfunction

" Configure command and mappings

command! Paste call Paste()

if !exists("g:paste_no_mappings") || ! g:paste_no_mappings
  nnoremap <leader>v :Paste<CR>
endif

" vim: foldmethod=marker
