NeoBundle 'thinca/vim-quickrun'
NeoBundle 'osyo-manga/unite-quickfix'
NeoBundle 'osyo-manga/shabadou.vim'
let g:quickrun_config = {
      \ "_" : {
      \     "hook/close_unite_quickfix/enable_hook_loaded" : 1,
      \     "hook/unite_quickfix/enable_failure" : 1,
      \     "hook/close_quickfix/enable_exit" : 1,
      \     "hook/close_buffer/enable_failure" : 1,
      \     "hook/close_buffer/enable_empty_data" : 1,
      \     "outputter" : "multi:buffer:quickfix",
      \     "hook/shabadoubi_touch_henshin/enable" : 1,
      \     "hook/shabadoubi_touch_henshin/wait" : 20,
      \     "outputter/buffer/split" : ":botright 8sp",
      \     "runner" : "vimproc",
      \     "runner/vimproc/updatetime" : 100,
      \   },
      \ }
"NeoBundle 'osyo-manga/vim-watchdogs'
NeoBundle "jceb/vim-hier"
"call watchdogs#setup(g:quickrun_config)
" 書き込み後にシンタックスチェックを行う
let g:watchdogs_check_BufWritePost_enable = 1
" 一定時間キー入力がなかった場合にシンタックスチェックを行う
let g:watchdogs_check_CursorHold_enable = 1
