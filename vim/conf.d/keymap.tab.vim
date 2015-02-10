" store last tab number {{{
let g:vim_last_tab_number = 1
autocmd! TabLeave * let g:vim_last_tab_number = tabpagenr()
" }}}

nnoremap [tab] <Nop>
nmap t [tab]

" [tab]${n} ${n}gt from 1 to 9
for i in range(9)
  execute 'nnoremap <silent>' ('[tab]'.(i+1))  ((i+1).'gt')
endfor
unlet i

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
