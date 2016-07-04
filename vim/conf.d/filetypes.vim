autocmd! BufRead,BufNewFile *.sql setlocal filetype=mysql
autocmd! BufRead,BufNewFile *.ini setlocal filetype=dosini

autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4 autoindent smartindent
autocmd FileType python setl cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType ruby   setl tabstop=8 expandtab shiftwidth=2 softtabstop=2 autoindent

autocmd FileType cs     setl foldmethod=indent foldlevel=2
autocmd FileType python setl foldmethod=indent foldlevel=0
autocmd FileType vim    setl foldmethod=indent foldlevel=0

"augroup json_autocmd
"  autocmd!
"  autocmd FileType json setlocal autoindent
"  autocmd FileType json setlocal formatoptions=tcq2l
"  autocmd FileType json setlocal textwidth=78 shiftwidth=2
"  autocmd FileType json setlocal softtabstop=2 tabstop=8
"  autocmd FileType json setlocal expandtab
"  autocmd FileType json setlocal foldmethod=syntax
"augroup END

NeoBundleLazy 'elzr/vim-json', {'autoload': {'filetypes': ['json']}}
autocmd! BufRead,BufNewFile *.json,*.jsonp,*.geojson setl filetype=json foldmethod=syntax

NeoBundleLazy 'vim-scripts/Flex-4', {'autoload': {'filetypes': ['actionscript', 'mxml']}}
autocmd BufRead,BufNewFile *.as setlocal filetype=actionscript
autocmd BufRead,BufNewFile *.mxml setlocal filetype=mxml

NeoBundleLazy 'vim-scripts/nagios-syntax', {'autoload': {'filetypes': ['nagios', 'mxml']}}
autocmd BufRead,BufNewFile */nagios/*.cfg setlocal filetype=nagios

NeoBundleLazy 'aklt/plantuml-syntax', {'autoload': {'filetypes': ['plantuml']}}
autocmd BufRead,BufNewFile *.pu,*.uml,*.plantuml setlocal filetype=plantuml

NeoBundleLazy 'derekwyatt/vim-scala', {'autoload': {'filetypes': ['scala']}}
autocmd BufRead,BufNewFile *.scala setlocal filetype=scala

NeoBundleLazy 'PProvost/vim-ps1', {'autoload': {'filetypes': ['ps1']}}
autocmd BufRead,BufNewFile *.ps1 setlocal filetype=ps1

NeoBundleLazy 'Elemecca/dockerfile.vim', {'autoload': {'filetypes': ['dockerfile']}}
autocmd BufRead,BufNewFile Dockerfile setlocal filetype=dockerfile

NeoBundleLazy 'kchmck/vim-coffee-script', {'autoload': {'filetypes': ['coffee']}}
autocmd BufRead,BufNewFile *.coffee setlocal filetype=coffee

NeoBundleLazy 'mrk21/yaml-vim', {'autoload': {'filetypes': ['yaml']}}
autocmd BufRead,BufNewFile *.yaml,*.yml setlocal filetype=yaml

NeoBundleLazy 'fatih/vim-go', {'autoload': {'filetypes': ['go']}}
autocmd BufRead,BufNewFile *.go setlocal filetype=go

NeoBundleLazy 'rust-lang/rust.vim', {'autoload': {'filetypes': ['rust']}}
autocmd BufRead,BufNewFile *.rs setlocal filetype=rust

NeoBundleLazy 'yoppi/fluentd.vim', {'autoload': {'filetypes': ['fluentd']}}
autocmd BufRead,BufNewFile fluentd*.conf,td-agent*.conf setlocal filetype=fluentd

"NeoBundleLazy 'vim-orgmode', {'autoload': {'filetypes': ['org']}}
NeoBundleLazy 'VimOrganizer', {'autoload': {'filetypes': ['org']}}
autocmd BufRead,BufNewFile *.org setlocal filetype=org

NeoBundleLazy 'chrisbra/csv.vim', {'autoload': {'filetypes': ['csv']}}
autocmd BufRead,BufNewFile *.csv,*.tsv setlocal filetype=csv

"NeoBundleLazy 'XML-Folding', {'autoload': {'filetypes': ['xml']}}
"let g:xml_syntax_folding = 0
"autocmd BufRead,BufNewFile *.xml setlocal filetype=ml
"autocmd FileType xml setlocal foldmethod=syntax

NeoBundleLazy 'tmux-plugins/vim-tmux', {'autoload': {'filetypes': ['tmux']}}
autocmd BufRead,BufNewFile .tmux.conf setlocal filetype=tmux
