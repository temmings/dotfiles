autocmd! BufRead,BufNewFile *.sql setfiletype mysql
autocmd! BufRead,BufNewFile *.ini setfiletype dosini

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
autocmd! BufRead,BufNewFile *.json,*.jsonp,*.geojson set filetype=json foldmethod=syntax

NeoBundleLazy 'vim-scripts/Flex-4', {'autoload': {'filetypes': ['actionscript', 'mxml']}}
autocmd BufRead,BufNewFile *.as setfiletype actionscript
autocmd BufRead,BufNewFile *.mxml setfiletype mxml

NeoBundleLazy 'vim-scripts/nagios-syntax', {'autoload': {'filetypes': ['nagios', 'mxml']}}
autocmd BufRead,BufNewFile */nagios/*.cfg setfiletype nagios

NeoBundleLazy 'aklt/plantuml-syntax', {'autoload': {'filetypes': ['plantuml']}}
autocmd BufRead,BufNewFile *.pu,*.uml,*.plantuml setfiletype plantuml

NeoBundleLazy 'derekwyatt/vim-scala', {'autoload': {'filetypes': ['scala']}}
autocmd BufRead,BufNewFile *.scala setfiletype scala

NeoBundleLazy 'PProvost/vim-ps1', {'autoload': {'filetypes': ['ps1']}}
autocmd BufRead,BufNewFile *.ps1 setfiletype ps1

NeoBundleLazy 'Elemecca/dockerfile.vim', {'autoload': {'filetypes': ['dockerfile']}}
autocmd BufRead,BufNewFile Dockerfile setfiletype dockerfile

NeoBundleLazy 'kchmck/vim-coffee-script', {'autoload': {'filetypes': ['coffee']}}
autocmd BufRead,BufNewFile *.coffee setfiletype coffee

NeoBundleLazy 'mrk21/yaml-vim', {'autoload': {'filetypes': ['yaml']}}
autocmd BufRead,BufNewFile *.yaml,*.yml setfiletype yaml
" digdag workflow
autocmd BufRead,BufNewFile *.dig setfiletype yaml

NeoBundleLazy 'fatih/vim-go', {'autoload': {'filetypes': ['go']}}
autocmd BufRead,BufNewFile *.go set filetype=go shiftwidth=8

NeoBundleLazy 'rust-lang/rust.vim', {'autoload': {'filetypes': ['rust']}}
autocmd BufRead,BufNewFile *.rs setfiletype rust

NeoBundleLazy 'yoppi/fluentd.vim', {'autoload': {'filetypes': ['fluentd']}}
autocmd BufRead,BufNewFile fluentd*.conf,td-agent*.conf setfiletype fluentd

"NeoBundleLazy 'vim-orgmode', {'autoload': {'filetypes': ['org']}}
NeoBundleLazy 'VimOrganizer', {'autoload': {'filetypes': ['org']}}
autocmd BufRead,BufNewFile *.org setfiletype org

NeoBundleLazy 'chrisbra/csv.vim', {'autoload': {'filetypes': ['csv']}}
autocmd BufRead,BufNewFile *.csv,*.tsv setfiletype csv

"NeoBundleLazy 'XML-Folding', {'autoload': {'filetypes': ['xml']}}
"let g:xml_syntax_folding = 0
"autocmd BufRead,BufNewFile *.xml setfiletype ml
"autocmd FileType xml setlocal foldmethod=syntax

NeoBundleLazy 'tmux-plugins/vim-tmux', {'autoload': {'filetypes': ['tmux']}}
autocmd BufRead,BufNewFile .tmux.conf setfiletype tmux
