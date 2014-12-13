""" インタラクティブにバッファを閉じる {{{
""" see: http://blog.supermomonga.com/articles/vim/taiwa.html

function! SelectInteractive(question, candidates) " {{{
  try
    let a:candidates[0] = toupper(a:candidates[0])
    let l:select = 0
    while index(a:candidates, l:select, 0, 1) == -1
      let l:select = input(a:question . ' [' . join(a:candidates, '/') . '] ')
      if l:select == ''
        let l:select = a:candidates[0]
      endif
    endwhile
    return tolower(l:select)
  finally
    redraw!
  endtry
endfunction " }}}

function! BufferWipeoutInteractive() " {{{
  if &modified == 1
    let l:selected = SelectInteractive('Buffer is unsaved. What should I do?', ['n', 'w', 'q'])
    if l:selected == 'w'
      write
      bdelete
    elseif l:selected == 'q'
      bdelete!
    endif
  else
    bdelete
  endif
endfunction " }}}

" }}}
