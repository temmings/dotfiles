" カーソル上の文字コードをエンコードに応じた表示にする
" ステータスラインに文字コードやBOM、16進表示等表示
if has('iconv')
  function! s:Str2byte(str)
    return map(range(len(a:str)), 'char2nr(a:str[v:val])')
  endfunction

  function! s:Byte2hex(bytes)
    return join(map(copy(a:bytes), 'printf("%02X", v:val)'), '')
  endfunction

  function! FencB()
    let c = matchstr(getline('.'), '.', col('.') - 1)
    return s:Byte2hex(s:Str2byte(iconv(c, &enc, &fenc)))
  endfunction

  set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).(&bomb?':BOM':'').']['.&ff.']'}%=[0x%{FencB()}]\ (%v,%l)/%L%8P\ 
else
  set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).(&bomb?':BOM':'').']['.&ff.']'}%=\ (%v,%l)/%L%8P\ 
endif
