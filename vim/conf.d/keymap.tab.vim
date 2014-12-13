" store last tab number {{{
let g:vim_last_tab_number = 1
autocmd! TabLeave * let g:vim_last_tab_number = tabpagenr()
" }}}

nnoremap [tab] <Nop>
nmap t [tab]
nnoremap <silent> [tab]1 1gt
nnoremap <silent> [tab]2 2gt
nnoremap <silent> [tab]3 3gt
nnoremap <silent> [tab]4 4gt
nnoremap <silent> [tab]5 5gt
nnoremap <silent> [tab]6 6gt
nnoremap <silent> [tab]7 7gt
nnoremap <silent> [tab]8 8gt
nnoremap <silent> [tab]9 9gt
nnoremap <silent> [tab]c :<C-u>tabclose<CR>
nnoremap [tab]e :<C-u>tabedit<Space>
nnoremap [tab]f :<C-u>tabfind<Space>
nnoremap <silent> [tab]h :<C-u>tabfirst<CR>
nnoremap <silent> [tab]j gt
nnoremap <silent> [tab]k gT
nnoremap <silent> [tab]l :<C-u>tablast<CR>
nnoremap <silent> [tab]n :<C-u>tabedit<CR>
nnoremap <silent> [tab]s :<C-u>tab split<CR>
nnoremap <silent> [tab]t :<C-u>execute "tabnext " . g:vim_last_tab_number<CR>
