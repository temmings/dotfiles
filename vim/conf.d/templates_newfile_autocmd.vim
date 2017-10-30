" {{{ TODO: Python ファイル名毎のテンプレート
function! s:templates_python(filepath)
    let basename = fnamemodify(a:filepath, ':t')
    if '^setup.py$' =~ basename
        0r $DOTVIM/templates/skel.setup.py
    elseif '^test_.+.py$' =~ basename
        0r $DOTVIM/templates/skel.test.py
    else
        0r $DOTVIM/templates/skel.py
    endif
endfunction
" }}}

" {{{ 新規作成ファイルのテンプレートを指定
augroup templates_newfile_autocmd
    autocmd!
    autocmd BufNewFile *.html 0r $DOTVIM/templates/skel.html
    autocmd BufNewFile *.py 0r $DOTVIM/templates/skel.py
    " FIXME: 重複しないように `:1,$d` でわざわざクリアしてるのやめたい
    autocmd BufNewFile setup.py :1,$d | execute '0r $DOTVIM/templates/skel.setup.py'
    autocmd BufNewFile test_*.py :1,$d | execute '0r $DOTVIM/templates/skel.test.py'
    autocmd BufNewFile __init__.py :1,$d | execute '0r $DOTVIM/templates/skel.__init__.py'
    autocmd BufNewFile Gemfile 0r $DOTVIM/templates/skel.Gemfile
    autocmd BufNewFile README.txt,README.md 0r $DOTVIM/templates/skel.README.md
augroup END
" }}}
