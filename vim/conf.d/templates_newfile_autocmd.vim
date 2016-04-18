" {{{ 新規作成ファイルのテンプレートを指定
augroup templates_newfile_autocmd
  autocmd!
  autocmd BufNewFile *.html 0r $DOTVIM/templates/skel.html
  autocmd BufNewFile *.py 0r $DOTVIM/templates/skel.py
  autocmd BufNewFile test_*.py 0r $DOTVIM/templates/skel_test.py
  autocmd BufNewFile Gemfile 0r $DOTVIM/templates/skel.Gemfile
augroup END
" }}}
