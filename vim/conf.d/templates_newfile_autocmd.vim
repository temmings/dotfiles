" {{{ 新規作成ファイルのテンプレートを指定
augroup templates_newfile_autocmd
  autocmd!
  autocmd BufNewFile *.html 0r $DOTVIM/templates/skel.html
  autocmd BufNewFile *.py 0r $DOTVIM/templates/skel.py
augroup END
" }}}
