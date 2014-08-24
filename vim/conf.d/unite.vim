NeoBundle 'Shougo/unite-build'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'm2mdas/unite-file-vcs'
NeoBundle 'osyo-manga/unite-fold'
NeoBundle 'ujihisa/unite-font'
NeoBundle 'hewes/unite-gtags'
NeoBundle 'tsukkee/unite-help'
NeoBundle 'mytoh/unite-highlight'
NeoBundle 'thinca/vim-unite-history'
NeoBundle 'tacroe/unite-mark'
NeoBundle 'h1mesuke/unite-outline'
NeoBundle 'osyo-manga/unite-qfixhowm'
NeoBundle 'basyura/unite-rails'
NeoBundle 'ujihisa/unite-rake'
NeoBundle 'hrsh7th/vim-versions'
NeoBundle 'mattn/unite-advent_calendar'

if s:on_windows
  NeoBundle 'sgur/unite-everything'
  let g:unite_source_everything = 'everything/async'
elseif has('mac')
  NeoBundle 'choplin/unite-spotlight'
  let g:unite_source_everything = 'spotlight'
else
  NeoBundle 'ujihisa/unite-locate'
  let g:unite_source_everything = 'locate'
endif

" Start insert.
let g:unite_enable_start_insert = 1
let g:unite_enable_short_source_names = 0

let g:unite_source_file_mru_limit = 200
" To track long mru history.
let g:unite_source_file_mru_long_limit = 3000
let g:unite_source_directory_mru_long_limit = 3000

let g:unite_update_time = 1000
let g:vimfiler_as_default_explorer = 1

if executable('jvgrep')
  " For jvgrep.
  let g:unite_source_grep_command = 'jvgrep'
  let g:unite_source_grep_default_opts = '--exclude ''\.(git|svn|hg|bzr)'''
  let g:unite_source_grep_recursive_opt = '-R'
elseif executable('ack-grep')
  " For ack.
  let g:unite_source_grep_command = 'ack-grep'
  let g:unite_source_grep_default_opts = '--no-heading --no-color -a -H'
  let g:unite_source_grep_recursive_opt = ''
endif

" " ウィンドウを分割して開く
" autocmd FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
" autocmd FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
" " ウィンドウを縦に分割して開く
" autocmd FileType unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
" autocmd FileType unite inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
" " ESCキーを2回押すと終了する
" autocmd FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
" autocmd FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q
