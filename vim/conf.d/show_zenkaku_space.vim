" http://sites.google.com/site/fudist/Home/vim-nihongo-ban/vim-color
" sample:[　　　]

function! s:highlight_zenkaku_space()
  highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=darkgrey
  silent! match ZenkakuSpace /　/
endfunction
if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd VimEnter,BufEnter * call <SID>highlight_zenkaku_space()
  augroup END
endif
