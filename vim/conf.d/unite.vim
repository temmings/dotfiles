let s:on_windows = has('win95') || has('win16') || has('win32') || has('win64')

NeoBundle 'Shougo/unite.vim'

NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/unite-build'
NeoBundle 'ujihisa/unite-colorscheme'
"NeoBundle 'm2mdas/unite-file-vcs'
NeoBundle 'osyo-manga/unite-fold'
NeoBundle 'ujihisa/unite-font'
NeoBundle 'hewes/unite-gtags'
NeoBundle 'tsukkee/unite-help'
NeoBundle 'mytoh/unite-highlight'
NeoBundle 'thinca/vim-unite-history'
NeoBundle 'tacroe/unite-mark'
"NeoBundle 'h1mesuke/unite-outline'
"NeoBundle 'Shougo/unite-outline'
NeoBundle 'osyo-manga/unite-qfixhowm'
NeoBundle 'basyura/unite-rails'
NeoBundle 'ujihisa/unite-rake'
NeoBundle 'hrsh7th/vim-versions'
NeoBundle 'mattn/unite-advent_calendar'
NeoBundle 'Shougo/neoyank.vim'

" Start insert.
let g:unite_enable_start_insert = 0
let g:unite_enable_short_source_names = 0

let g:unite_source_history_yank_enable = 1

let g:neomru#do_validate = 0
let g:neomru#file_mru_limit = 100
let g:neomru#directory_mru_limit = 100

let g:unite_update_time = 1000
let g:vimfiler_as_default_explorer = 1

if executable('hw')
  let g:unite_source_grep_command = 'hw'
  let g:unite_source_grep_default_opts = '--no-group --no-color'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--vimgrep'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('jvgrep')
  let g:unite_source_grep_command = 'jvgrep'
  let g:unite_source_grep_default_opts = '--exclude ''\.(git|svn|hg|bzr)'''
  let g:unite_source_grep_recursive_opt = '-R'
elseif executable('ack-grep')
  let g:unite_source_grep_command = 'ack-grep'
  let g:unite_source_grep_default_opts = '--no-heading --no-color -a -H'
  let g:unite_source_grep_recursive_opt = ''
endif

if s:on_windows
  NeoBundle 'sgur/unite-everything'
  let g:unite_source_everything = 'everything'
elseif has('mac')
  NeoBundle 'choplin/unite-spotlight'
  let g:unite_source_everything = 'spotlight'
else
  NeoBundle 'ujihisa/unite-locate'
  let g:unite_source_everything = 'locate'
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

function! UniteRefDoc()
    if &filetype =~ 'perl'
        Unite ref/perldoc
    elseif &filetype =~ 'python'
        Unite ref/pydo
    elseif &filetype =~ 'ruby'
        Unite ref/refe
    elseif *filetype =~ 'erlang'
        Unite ref/erlang
    else
        Unite ref/man
    endif
endfunction

nnoremap [unite] <Nop>
nmap , [unite]
nnoremap <silent> [unite]a :<C-u>Unite -buffer-name=wild buffer file_mru bookmark file<CR>
"nnoremap <silent> [unite]a :<C-u>Unite -buffer-name=wild buffer bookmark file<CR>
nnoremap <silent> [unite]b :<C-u>Unite -buffer-name=buffer buffer<CR>
nnoremap <silent> [unite]c :<C-u>Unite -buffer-name=build build<CR>
nnoremap <silent> [unite]d :<C-u>call UniteRefDoc()<CR>
nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> [unite]g :<C-u>Unite-auto-preview -buffer-name=preview-grep grep:.<CR>
nnoremap <silent> [unite]h :<C-u>Unite -buffer-name=history history/command<CR>
nnoremap <silent> [unite]H :<C-u>Unite -buffer-name=highlight highlight<CR>
nnoremap <silent> [unite]k :<C-u>Unite -buffer-name=mapping mapping<CR>
nnoremap <silent> [unite]m :<C-u>Unite -buffer-name=mru file_mru:short<CR>
nnoremap <silent> [unite]ps :<C-u>Unite -buffer-name=plugin/search neobundle/search<CR>
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> [unite]t :<C-u>Unite -buffer-name=tab tab<CR>
"nnoremap <silent> [unite]u :<C-u>Unite buffer file_mru:short<CR>
"nnoremap <silent> [unite]v :<C-u>Unite -start-insert -no-split -buffer-name=file_vcs file/vcs<CR>
nnoremap <silent> [unite]vs :<C-u>UniteVersions status:!<CR>
nnoremap <silent> [unite]vl :<C-u>UniteVersions log:%<CR>
nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=history-yank history/yank<CR>
nnoremap <silent> [unite]/ :<C-u>execute "Unite -buffer-name=spotlight " . g:unite_source_everything<CR>
