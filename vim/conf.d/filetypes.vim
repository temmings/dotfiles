autocmd! BufRead,BufNewFile *.sql set filetype=mysql
autocmd! BufRead,BufNewFile *.ini set filetype=dosini

NeoBundle 'vim-scripts/Flex-4'
autocmd BufRead *.as set filetype=actionscript
autocmd BufRead *.mxml set filetype=mxml

NeoBundle 'vim-scripts/nagios-syntax'
au BufNewFile,BufRead */nagios/*.cfg setf nagios

NeoBundle 'aklt/plantuml-syntax'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'PProvost/vim-ps1'
NeoBundle 'Elemecca/dockerfile.vim' " A Vim syntax definition for the Dockerfile format.
