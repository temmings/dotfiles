NeoBundle 'scrooloose/nerdtree'
"autocmd vimenter * if !argc() | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeIgnore = ['\.bak$', '\.clean$', '\.orig$', '\.pyc$', '\.swp$', '\~$']
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 0
let g:NERDTreeMouseMode = 1

nnoremap <silent> <C-e> :<C-u>NERDTreeToggle<CR>
