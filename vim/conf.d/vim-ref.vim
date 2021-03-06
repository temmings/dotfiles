" use K : call perldoc or pydoc or phpdoc
NeoBundle 'thinca/vim-ref'

let g:ref_open = ':tabnew'
let g:ref_use_vimproc = 1
let g:ref_man_cmd = "/usr/bin/man -P cat"
let g:ref_man_lang = "C"
let g:ref_detect_filetype = {
  \  'c': 'man',
  \  'clojure': 'clojure',
  \  'perl': 'perldoc',
  \  'php': 'phpmanual',
  \  'ruby': 'refe',
  \  'erlang': 'erlang',
  \  'python': 'pydoc',
  \  '_': ['help', 'man']
  \}

