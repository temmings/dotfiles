" ファイルを開いた時に、以前のカーソル位置を復元する {{{
function! s:RestoreCursorPostion()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

" fold を開く
function! s:UnfoldCur()
  if !&foldenable
    return
  endif
  let cl = line(".")
  if cl <= 1
    return
  endif
  let cf  = foldlevel(cl)
  let uf  = foldlevel(cl - 1)
  let min = (cf > uf ? uf : cf)
  if min
    execute "normal!" min . "zo"
    return 1
  endif
endfunction


augroup vimrc_restore_cursor_position
  autocmd!
  if has("folding")
    autocmd BufWinEnter * if s:RestoreCursorPostion() | call s:UnfoldCur() | endif
  else
    autocmd BufWinEnter * call s:RestoreCursorPostion()
  endif
augroup END
" }}}
