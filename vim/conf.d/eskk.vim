NeoBundle 'tyru/eskk.vim'
set imdisable

let g:eskk#directory = "~/Dropbox/skk/eskk"
let g:eskk#dictionary = {
\ 'path': expand("~/Dropbox/skk/eskk/.skk-jisyo"), 'sorted': 0, 'encoding': 'utf-8'
\ }
let g:eskk#large_dictionary = {
\ 'path': expand("~/Dropbox/skk/SKK-JISYO.L.unannotated"), 'sorted': 1, 'encoding': 'euc-jp'
\ }

let g:eskk#enable_completion = 1
let g:eskk#max_candidates = 30
let g:eskk#start_completion_length = 2
let g:eskk#register_completed_word = 0
let g:eskk#auto_save_dictionary_at_exit = 1
let g:eskk#dictionary_save_count = 3
let g:eskk#show_annotation = 0
let g:eskk#keep_state = 1
let g:eskk#egg_like_newline = 1
let g:eskk#egg_like_newline_completion = 1
let g:eskk#debug = 0
let g:eskk#no_default_mappings = 1

imap <C-j> <Plug>(eskk:enable)
cmap <C-j> <Plug>(eskk:enable)
