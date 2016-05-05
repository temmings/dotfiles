autocmd! BufRead,BufNewFile *.sql set filetype=mysql
autocmd! BufRead,BufNewFile *.ini set filetype=dosini

autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4 autoindent smartindent
autocmd FileType python setl cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType ruby   setl tabstop=8 expandtab shiftwidth=2 softtabstop=2 autoindent

"augroup json_autocmd
"  autocmd!
"  autocmd FileType json set autoindent
"  autocmd FileType json set formatoptions=tcq2l
"  autocmd FileType json set textwidth=78 shiftwidth=2
"  autocmd FileType json set softtabstop=2 tabstop=8
"  autocmd FileType json set expandtab
"  autocmd FileType json set foldmethod=syntax
"augroup END

NeoBundleLazy 'JSON.vim', {'autoload': {'filetypes': ['json']}}
autocmd! BufRead,BufNewFile *.json set filetype=json

NeoBundleLazy 'vim-scripts/Flex-4', {'autoload': {'filetypes': ['actionscript', 'mxml']}}
autocmd BufRead,BufNewFile *.as set filetype=actionscript
autocmd BufRead,BufNewFile *.mxml set filetype=mxml

NeoBundleLazy 'vim-scripts/nagios-syntax', {'autoload': {'filetypes': ['nagios', 'mxml']}}
autocmd BufRead,BufNewFile */nagios/*.cfg set filetype=nagios

NeoBundleLazy 'aklt/plantuml-syntax', {'autoload': {'filetypes': ['plantuml']}}
autocmd BufRead,BufNewFile *.pu,*.uml,*.plantuml set filetype=plantuml

NeoBundleLazy 'derekwyatt/vim-scala', {'autoload': {'filetypes': ['scala']}}
autocmd BufRead,BufNewFile *.scala set filetype=scala

NeoBundleLazy 'PProvost/vim-ps1', {'autoload': {'filetypes': ['ps1']}}
autocmd BufRead,BufNewFile *.ps1 set filetype=ps1

NeoBundleLazy 'Elemecca/dockerfile.vim', {'autoload': {'filetypes': ['dockerfile']}}
autocmd BufRead,BufNewFile Dockerfile set filetype=dockerfile

NeoBundleLazy 'kchmck/vim-coffee-script', {'autoload': {'filetypes': ['coffee']}}
autocmd BufRead,BufNewFile *.coffee set filetype=coffee

NeoBundleLazy 'mrk21/yaml-vim', {'autoload': {'filetypes': ['yaml']}}
autocmd BufRead,BufNewFile *.yaml,*.yml set filetype=yaml

NeoBundleLazy 'fatih/vim-go', {'autoload': {'filetypes': ['go']}}
autocmd BufRead,BufNewFile *.go set filetype=go

NeoBundleLazy 'rust-lang/rust.vim', {'autoload': {'filetypes': ['rust']}}
autocmd BufRead,BufNewFile *.rs set filetype=rust

NeoBundleLazy 'yoppi/fluentd.vim', {'autoload': {'filetypes': ['fluentd']}}
autocmd BufRead,BufNewFile fluentd*.conf,td-agent*.conf set filetype=fluentd

"NeoBundleLazy 'vim-orgmode', {'autoload': {'filetypes': ['org']}}
NeoBundleLazy 'VimOrganizer', {'autoload': {'filetypes': ['org']}}
autocmd BufRead,BufNewFile *.org set filetype=org

NeoBundleLazy 'chrisbra/csv.vim', {'autoload': {'filetypes': ['csv']}}
autocmd BufRead,BufNewFile *.csv,*.tsv set filetype=csv

"NeoBundleLazy 'XML-Folding', {'autoload': {'filetypes': ['xml']}}
"let g:xml_syntax_folding = 0
"autocmd BufRead,BufNewFile *.xml set filetype=ml
"autocmd FileType xml setlocal foldmethod=syntax
