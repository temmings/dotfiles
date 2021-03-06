NeoBundle 'tyru/eskk.vim'
set imdisable

let g:eskk#directory = expand("~/Dropbox/skk/eskk")
let g:eskk#dictionary = {
\ 'path': expand("~/Dropbox/skk/eskk/skk-jisyo"), 'sorted': 0, 'encoding': 'utf-8'
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
let g:eskk#log_cmdline_level = 4
let g:eskk#log_file_level = 4

imap <C-j> <Plug>(eskk:enable)
cmap <C-j> <Plug>(eskk:enable)

" for AZIK Kana mapping
" see: http://akakyouryuu.com/blog/eskk-vim%E3%81%A7azik/
" q, ; あたりは潰さず、ひとまずそれ以外のマッピングを利用可能にする
" TODO: EskkMap の q, ; の再定義方法を考える
autocmd User eskk-initialize-pre call s:eskk_initial_pre()
function! s:eskk_initial_pre()
    "{{{ rom_to_hira
    let t = eskk#table#new('rom_to_hira*', 'rom_to_hira')
    call t.add_map('-', 'ー')
    call t.add_map('~', '?')
    call t.add_map('.', '。')
    call t.add_map(',', '、')
    call t.add_map('/', '・')
    call t.add_map(':', 'ー')
    call t.add_map(';', 'っ')
    call t.add_map('tm', 'っ')
    call t.add_map('[', '「')
    call t.add_map(']', '」')
    call t.add_map('a', 'あ')
    call t.add_map('ba', 'ば')
    call t.add_map('bd', 'べん')
    call t.add_map('be', 'べ')
    call t.add_map('bh', 'ぶう')
    call t.add_map('bi', 'び')
    call t.add_map('bj', 'ぶん')
    call t.add_map('bk', 'びん')
    call t.add_map('bl', 'ぼん')
    call t.add_map('bn', 'ばん')
    call t.add_map('bo', 'ぼ')
    call t.add_map('bp', 'ぼう')
    call t.add_map('bq', 'ばい')
    call t.add_map('bt', 'びと')
    call t.add_map('bu', 'ぶ')
    call t.add_map('bv', 'びゅう')
    call t.add_map('bw', 'べい')
    call t.add_map('bx', 'びょう')
    call t.add_map('bya', 'びゃ')
    call t.add_map('byd', 'びぇん')
    call t.add_map('bye', 'びぇ')
    call t.add_map('byh', 'びゅう')
    call t.add_map('byj', 'びゅん')
    call t.add_map('byl', 'びょん')
    call t.add_map('byn', 'びゃん')
    call t.add_map('byo', 'びょ')
    call t.add_map('byp', 'びょう')
    call t.add_map('byq', 'びゃい')
    call t.add_map('byu', 'びゅ')
    call t.add_map('byw', 'びぇい')
    call t.add_map('byz', 'びゃん')
    call t.add_map('bz', 'ばん')
    call t.add_map('ca', 'ちゃ')
    call t.add_map('cd', 'ちぇん')
    call t.add_map('ce', 'ちぇ')
    call t.add_map('cf', 'ちぇ')
    call t.add_map('ch', 'ちゅう')
    call t.add_map('ci', 'ち')
    call t.add_map('cj', 'ちゅん')
    call t.add_map('ck', 'ちん')
    call t.add_map('cl', 'ちょん')
    call t.add_map('cn', 'ちゃん')
    call t.add_map('co', 'ちょ')
    call t.add_map('cp', 'ちょう')
    call t.add_map('cq', 'ちゃい')
    call t.add_map('cu', 'ちゅ')
    call t.add_map('cw', 'ちぇい')
    call t.add_map('cz', 'ちゃん')
    call t.add_map('da', 'だ')
    call t.add_map('dch', 'どぅー')
    call t.add_map('dci', 'でぃ')
    call t.add_map('dcj', 'どぅん')
    call t.add_map('dck', 'でぃん')
    call t.add_map('dcu', 'どぅ')
    call t.add_map('dd', 'でん')
    call t.add_map('de', 'で')
    call t.add_map('df', 'で')
    call t.add_map('dga', 'ぢゃ')
    call t.add_map('dge', 'ぢぇ')
    call t.add_map('dgh', 'でゅー')
    call t.add_map('dgi', 'でぃ')
    call t.add_map('dgj', 'ぢゅん')
    call t.add_map('dgl', 'ぢょん')
    call t.add_map('dgo', 'ぢょ')
    call t.add_map('dgq', 'ぢゃい')
    call t.add_map('dgu', 'ぢゅ')
    call t.add_map('dgz', 'ぢゃん')
    call t.add_map('dh', 'づう')
    call t.add_map('di', 'ぢ')
    call t.add_map('dj', 'づん')
    call t.add_map('dk', 'ぢん')
    call t.add_map('dl', 'どん')
    call t.add_map('dm', 'でも')
    call t.add_map('dn', 'だん')
    call t.add_map('do', 'ど')
    call t.add_map('dp', 'どう')
    call t.add_map('dq', 'だい')
    call t.add_map('dr', 'である')
    call t.add_map('ds', 'です')
    call t.add_map('dt', 'だち')
    call t.add_map('du', 'づ')
    call t.add_map('dv', 'ぢゅう')
    call t.add_map('dw', 'でい')
    call t.add_map('dx', 'ぢょう')
    call t.add_map('dy', 'でぃ')
    call t.add_map('dz', 'だん')
    call t.add_map('e', 'え')
    call t.add_map('fa', 'ふぁ')
    call t.add_map('fd', 'ふぇん')
    call t.add_map('fe', 'ふぇ')
    call t.add_map('fh', 'ふう')
    call t.add_map('fi', 'ふぃ')
    call t.add_map('fj', 'ふん')
    call t.add_map('fk', 'ふぃん')
    call t.add_map('fl', 'ふぉん')
    call t.add_map('fn', 'ふぁん')
    call t.add_map('fo', 'ふぉ')
    call t.add_map('fp', 'ふぉー')
    call t.add_map('fq', 'ふぁい')
    call t.add_map('fu', 'ふ')
    call t.add_map('fv', 'ふゅー')
    call t.add_map('fw', 'ふぇい')
    call t.add_map('fyh', 'ふゅー')
    call t.add_map('fyj', 'ふゅん')
    call t.add_map('fyu', 'ふゅ')
    call t.add_map('fz', 'ふぁん')
    call t.add_map('ga', 'が')
    call t.add_map('gd', 'げん')
    call t.add_map('ge', 'げ')
    call t.add_map('gh', 'ぐう')
    call t.add_map('gi', 'ぎ')
    call t.add_map('gj', 'ぐん')
    call t.add_map('gk', 'ぎん')
    call t.add_map('gl', 'ごん')
    call t.add_map('gn', 'がん')
    call t.add_map('go', 'ご')
    call t.add_map('gp', 'ごう')
    call t.add_map('gq', 'がい')
    call t.add_map('gr', 'がら')
    call t.add_map('gt', 'ごと')
    call t.add_map('gu', 'ぐ')
    call t.add_map('gv', 'ぎゅう')
    call t.add_map('gw', 'げい')
    call t.add_map('gx', 'ぎょう')
    call t.add_map('gya', 'ぎゃ')
    call t.add_map('gyd', 'ぎぇん')
    call t.add_map('gye', 'ぎぇ')
    call t.add_map('gyh', 'ぎゅう')
    call t.add_map('gyj', 'ぎゅん')
    call t.add_map('gyl', 'ぎょん')
    call t.add_map('gyn', 'ぎゃん')
    call t.add_map('gyo', 'ぎょ')
    call t.add_map('gyp', 'ぎょう')
    call t.add_map('gyq', 'ぎゃい')
    call t.add_map('gyu', 'ぎゅ')
    call t.add_map('gyw', 'ぎぇい')
    call t.add_map('gyz', 'ぎゃん')
    call t.add_map('gz', 'がん')
    call t.add_map('ha', 'は')
    call t.add_map('hd', 'へん')
    call t.add_map('he', 'へ')
    call t.add_map('hf', 'ふ')
    call t.add_map('hga', 'ひゃ')
    call t.add_map('hgd', 'ひぇん')
    call t.add_map('hge', 'ひぇ')
    call t.add_map('hgh', 'ひゅう')
    call t.add_map('hgj', 'ひゅん')
    call t.add_map('hgl', 'ひょん')
    call t.add_map('hgn', 'ひゃん')
    call t.add_map('hgo', 'ひょ')
    call t.add_map('hgp', 'ひょう')
    call t.add_map('hgq', 'ひゃい')
    call t.add_map('hgu', 'ひゅ')
    call t.add_map('hgz', 'ひゃん')
    call t.add_map('hh', 'ふう')
    call t.add_map('hi', 'ひ')
    call t.add_map('hj', 'ふん')
    call t.add_map('hk', 'ひん')
    call t.add_map('hl', 'ほん')
    call t.add_map('ho', 'ほ')
    call t.add_map('hp', 'ほう')
    call t.add_map('hq', 'はい')
    call t.add_map('hr', 'はら')
    call t.add_map('ht', 'ひと')
    call t.add_map('hu', 'ふ')
    call t.add_map('hv', 'ひゅう')
    call t.add_map('hw', 'へい')
    call t.add_map('hx', 'ひょう')
    call t.add_map('hya', 'ひゃ')
    call t.add_map('hyd', 'ひぇん')
    call t.add_map('hye', 'ひぇ')
    call t.add_map('hyh', 'ひゅう')
    call t.add_map('hyj', 'ひゅん')
    call t.add_map('hyl', 'ひょん')
    call t.add_map('hyo', 'ひょ')
    call t.add_map('hyp', 'ひょう')
    call t.add_map('hyq', 'ひゃい')
    call t.add_map('hyu', 'ひゅ')
    call t.add_map('hyz', 'ひゃん')
    call t.add_map('hz', 'はん')
    call t.add_map('i', 'い')
    call t.add_map('ja', 'じゃ')
    call t.add_map('jd', 'じぇん')
    call t.add_map('je', 'じぇ')
    call t.add_map('jf', 'じゅ')
    call t.add_map('jh', 'じゅう')
    call t.add_map('ji', 'じ')
    call t.add_map('jj', 'じゅん')
    call t.add_map('jk', 'じん')
    "call t.add_map('jl', 'じょん')
    call t.add_map('jo', 'じょ')
    call t.add_map('jp', 'じょう')
    call t.add_map('jq', 'じゃい')
    call t.add_map('ju', 'じゅ')
    call t.add_map('jw', 'じぇい')
    call t.add_map('jz', 'じゃん')
    call t.add_map('ka', 'か')
    call t.add_map('kd', 'けん')
    call t.add_map('ke', 'け')
    call t.add_map('kf', 'き')
    call t.add_map('kga', 'きゃ')
    call t.add_map('kgh', 'きゅう')
    call t.add_map('kgj', 'きゅん')
    call t.add_map('kgl', 'きょん')
    call t.add_map('kgn', 'きゃん')
    call t.add_map('kgo', 'きょ')
    call t.add_map('kgp', 'きょう')
    call t.add_map('kgq', 'きゃい')
    call t.add_map('kgu', 'きゅ')
    call t.add_map('kgz', 'きゃん')
    call t.add_map('kh', 'くう')
    call t.add_map('ki', 'き')
    call t.add_map('kj', 'くん')
    "call t.add_map('kk', 'きん')
    call t.add_map('kl', 'こん')
    call t.add_map('km', 'かも')
    call t.add_map('ko', 'こ')
    call t.add_map('kp', 'こう')
    call t.add_map('kq', 'かい')
    call t.add_map('kr', 'から')
    call t.add_map('kt', 'こと')
    call t.add_map('ku', 'く')
    call t.add_map('kv', 'きゅう')
    call t.add_map('kw', 'けい')
    call t.add_map('kx', 'きょう')
    call t.add_map('kz', 'かん')
    call t.add_map('la', 'ぁ')
    call t.add_map('le', 'ぇ')
    call t.add_map('li', 'ぃ')
    call t.add_map('lka', 'ヵ')
    call t.add_map('lke', 'ヶ')
    call t.add_map('lo', 'ぉ')
    call t.add_map('ltu', 'っ')
    call t.add_map('lu', 'ぅ')
    call t.add_map('lwa', 'ゎ')
    call t.add_map('lya', 'ゃ')
    call t.add_map('lye', 'ぇ')
    call t.add_map('lyi', 'ぃ')
    call t.add_map('lyo', 'ょ')
    call t.add_map('lyu', 'ゅ')
    call t.add_map('ma', 'ま')
    call t.add_map('md', 'めん')
    call t.add_map('me', 'め')
    call t.add_map('mf', 'む')
    call t.add_map('mga', 'みゃ')
    call t.add_map('mgd', 'みぇん')
    call t.add_map('mge', 'みぇ')
    call t.add_map('mgh', 'みゅう')
    call t.add_map('mgj', 'みゅん')
    call t.add_map('mgl', 'みょん')
    call t.add_map('mgn', 'みゃん')
    call t.add_map('mgo', 'みょ')
    call t.add_map('mgp', 'みょう')
    call t.add_map('mgq', 'みゃい')
    call t.add_map('mgu', 'みゅ')
    call t.add_map('mgw', 'みぇい')
    call t.add_map('mgz', 'みゃん')
    call t.add_map('mh', 'むう')
    call t.add_map('mi', 'み')
    call t.add_map('mj', 'むん')
    call t.add_map('mk', 'みん')
    call t.add_map('ml', 'もん')
    call t.add_map('mn', 'もの')
    call t.add_map('mo', 'も')
    call t.add_map('mp', 'もう')
    call t.add_map('mq', 'まい')
    call t.add_map('mr', 'まる')
    call t.add_map('ms', 'ます')
    call t.add_map('mt', 'また')
    call t.add_map('mu', 'む')
    call t.add_map('mv', 'みゅう')
    call t.add_map('mw', 'めい')
    call t.add_map('mx', 'みょう')
    call t.add_map('mz', 'まん')
    call t.add_map('na', 'な')
    call t.add_map('nb', 'ねば')
    call t.add_map('nd', 'ねん')
    call t.add_map('ne', 'ね')
    call t.add_map('nf', 'ぬ')
    call t.add_map('nga', 'にゃ')
    call t.add_map('ngd', 'にぇん')
    call t.add_map('nge', 'にぇ')
    call t.add_map('ngh', 'にゅう')
    call t.add_map('ngj', 'にゅん')
    call t.add_map('ngl', 'にょん')
    call t.add_map('ngn', 'にゃん')
    call t.add_map('ngo', 'にょ')
    call t.add_map('ngp', 'にょう')
    call t.add_map('ngq', 'にゃい')
    call t.add_map('ngu', 'にゅ')
    call t.add_map('ngw', 'にぇい')
    call t.add_map('ngz', 'にゃん')
    call t.add_map('nh', 'ぬう')
    call t.add_map('ni', 'に')
    call t.add_map('nj', 'ぬん')
    call t.add_map('nk', 'にん')
    call t.add_map('nl', 'のん')
    call t.add_map('nn', 'ん')
    call t.add_map('no', 'の')
    call t.add_map('np', 'のう')
    call t.add_map('nq', 'ない')
    call t.add_map('nr', 'なる')
    call t.add_map('nt', 'にち')
    call t.add_map('nu', 'ぬ')
    call t.add_map('nv', 'にゅう')
    call t.add_map('nw', 'ねい')
    call t.add_map('nx', 'にょう')
    call t.add_map('nz', 'なん')
    call t.add_map('o', 'お')
    call t.add_map('pa', 'ぱ')
    call t.add_map('pd', 'ぺん')
    call t.add_map('pe', 'ぺ')
    call t.add_map('pf', 'ぽん')
    call t.add_map('pga', 'ぴゃ')
    call t.add_map('pgh', 'ぴゅう')
    call t.add_map('pgj', 'ぴゅん')
    call t.add_map('pgl', 'ぴょん')
    call t.add_map('pgn', 'ぴゃん')
    call t.add_map('pgo', 'ぴょ')
    call t.add_map('pgp', 'ぴょう')
    call t.add_map('pgq', 'ぴゃい')
    call t.add_map('pgu', 'ぴゅ')
    call t.add_map('pgz', 'ぴゃん')
    call t.add_map('ph', 'ぷう')
    call t.add_map('pi', 'ぴ')
    call t.add_map('pj', 'ぷん')
    call t.add_map('pk', 'ぴん')
    call t.add_map('pl', 'ぽん')
    call t.add_map('po', 'ぽ')
    "call t.add_map('pp', 'ぽう')
    call t.add_map('pq', 'ぱい')
    call t.add_map('pu', 'ぷ')
    call t.add_map('pv', 'ぴゅう')
    call t.add_map('pw', 'ぺい')
    call t.add_map('px', 'ぴょう')
    call t.add_map('pyu', 'ぴゅ')
    call t.add_map('pz', 'ぱん')
    call t.add_map('q', 'ん')
    call t.add_map('ra', 'ら')
    call t.add_map('rd', 'れん')
    call t.add_map('re', 'れ')
    call t.add_map('rh', 'るう')
    call t.add_map('ri', 'り')
    call t.add_map('rj', 'るん')
    call t.add_map('rk', 'りん')
    call t.add_map('rl', 'ろん')
    call t.add_map('rn', 'らん')
    call t.add_map('ro', 'ろ')
    call t.add_map('rp', 'ろう')
    call t.add_map('rq', 'らい')
    call t.add_map('rr', 'られ')
    call t.add_map('ru', 'る')
    call t.add_map('rv', 'りゅう')
    call t.add_map('rw', 'れい')
    call t.add_map('rx', 'りょう')
    call t.add_map('rya', 'りゃ')
    call t.add_map('ryh', 'りゅう')
    call t.add_map('ryj', 'りゅん')
    call t.add_map('ryl', 'りょん')
    call t.add_map('ryo', 'りょ')
    call t.add_map('ryp', 'りょう')
    call t.add_map('ryq', 'りゃい')
    call t.add_map('ryu', 'りゅ')
    call t.add_map('ryz', 'りゃん')
    call t.add_map('rz', 'らん')
    call t.add_map('sa', 'さ')
    call t.add_map('sd', 'せん')
    call t.add_map('se', 'せ')
    call t.add_map('sf', 'さい')
    call t.add_map('sh', 'すう')
    call t.add_map('si', 'し')
    call t.add_map('sj', 'すん')
    call t.add_map('sk', 'しん')
    call t.add_map('sl', 'そん')
    call t.add_map('sn', 'さん')
    call t.add_map('so', 'そ')
    call t.add_map('sp', 'そう')
    call t.add_map('sq', 'さい')
    call t.add_map('sr', 'する')
    "call t.add_map('ss', 'せい')
    call t.add_map('st', 'した')
    call t.add_map('su', 'す')
    call t.add_map('sv', 'しゅう')
    call t.add_map('sw', 'せい')
    call t.add_map('sx', 'しょう')
    call t.add_map('syi', 'すぃ')
    call t.add_map('syk', 'すぃん')
    call t.add_map('syp', 'しょう')
    call t.add_map('sz', 'さん')
    call t.add_map('ta', 'た')
    call t.add_map('tb', 'たび')
    call t.add_map('td', 'てん')
    call t.add_map('te', 'て')
    call t.add_map('tgh', 'てゅー')
    call t.add_map('tgi', 'てぃ')
    call t.add_map('tgj', 'とぅん')
    call t.add_map('tgk', 'てぃん')
    call t.add_map('tgp', 'とぅー')
    call t.add_map('tgu', 'とぅ')
    call t.add_map('th', 'つう')
    call t.add_map('ti', 'ち')
    call t.add_map('tj', 'つん')
    call t.add_map('tk', 'ちん')
    call t.add_map('tl', 'とん')
    "call t.add_map('tm', 'ため')
    call t.add_map('tn', 'たん')
    call t.add_map('to', 'と')
    call t.add_map('tp', 'とう')
    call t.add_map('tq', 'たい')
    call t.add_map('tr', 'たら')
    call t.add_map('tsa', 'つぁ')
    call t.add_map('tsd', 'つぇん')
    call t.add_map('tse', 'つぇ')
    call t.add_map('tsh', 'つう')
    call t.add_map('tsi', 'つぃ')
    call t.add_map('tsj', 'つん')
    call t.add_map('tsk', 'つぃん')
    call t.add_map('tsl', 'つぉん')
    call t.add_map('tso', 'つぉ')
    call t.add_map('tsq', 'つぁい')
    call t.add_map('tst', 'として')
    call t.add_map('tsu', 'つ')
    call t.add_map('tsz', 'つぁん')
    "call t.add_map('tt', 'たち')
    call t.add_map('tu', 'つ')
    call t.add_map('tw', 'てい')
    call t.add_map('tya', 'ちゃ')
    call t.add_map('tyh', 'ちゅー')
    call t.add_map('tyj', 'ちゅん')
    call t.add_map('tyq', 'ちゃい')
    call t.add_map('tyu', 'ちゅ')
    call t.add_map('tyz', 'ちゃん')
    call t.add_map('tz', 'たん')
    call t.add_map('u', 'う')
    call t.add_map('va', 'ヴぁ')
    call t.add_map('vd', 'ヴぇん')
    call t.add_map('ve', 'ヴぇ')
    call t.add_map('vh', 'ヴー')
    call t.add_map('vi', 'ヴぃ')
    call t.add_map('vj', 'ヴん')
    call t.add_map('vk', 'ヴぃん')
    call t.add_map('vl', 'ヴぉん')
    call t.add_map('vn', 'ヴぁん')
    call t.add_map('vo', 'ヴぉ')
    call t.add_map('vp', 'ヴぉう')
    call t.add_map('vq', 'ヴぁい')
    call t.add_map('vu', 'ヴ')
    call t.add_map('vv', 'ヴゅー')
    call t.add_map('vw', 'ヴぇい')
    call t.add_map('vyu', 'ヴゅ')
    call t.add_map('vz', 'ヴぁん')
    call t.add_map('wa', 'わ')
    call t.add_map('wd', 'うぇん')
    call t.add_map('we', 'うぇ')
    call t.add_map('whe', 'ゑ')
    call t.add_map('whi', 'ゐ')
    call t.add_map('who', 'うぉ')
    call t.add_map('wi', 'うぃ')
    call t.add_map('wk', 'うぃん')
    call t.add_map('wl', 'うぉん')
    call t.add_map('wn', 'わん')
    call t.add_map('wo', 'を')
    call t.add_map('wp', 'うぉー')
    call t.add_map('wq', 'わい')
    call t.add_map('wr', 'われ')
    call t.add_map('wso', 'うぉ')
    call t.add_map('wt', 'わた')
    call t.add_map('ww', 'うぇい')
    call t.add_map('wz', 'わん')
    call t.add_map('xa', 'しゃ')
    call t.add_map('xd', 'しぇん')
    call t.add_map('xe', 'しぇ')
    call t.add_map('xh', 'しゅう')
    call t.add_map('xi', 'し')
    call t.add_map('xj', 'しゅん')
    call t.add_map('xk', 'しん')
    call t.add_map('xl', 'しょん')
    call t.add_map('xn', 'しゃん')
    call t.add_map('xo', 'しょ')
    call t.add_map('xp', 'しょう')
    call t.add_map('xq', 'しゃい')
    call t.add_map('xu', 'しゅ')
    "call t.add_map('xw', 'しぇい')
    call t.add_map('xz', 'しゃん')
    call t.add_map('ya', 'や')
    call t.add_map('yd', 'いぇん')
    call t.add_map('ye', 'いぇ')
    call t.add_map('yf', 'ゆ')
    call t.add_map('yh', 'ゆう')
    call t.add_map('yj', 'ゆん')
    call t.add_map('yl', 'よん')
    call t.add_map('yo', 'よ')
    call t.add_map('yp', 'よう')
    call t.add_map('yq', 'やい')
    call t.add_map('yr', 'よる')
    call t.add_map('yu', 'ゆ')
    call t.add_map('yw', 'いぇい')
    call t.add_map('yz', 'やん')
    call t.add_map('za', 'ざ')
    call t.add_map('zc', 'ざ')
    call t.add_map('zd', 'ぜん')
    call t.add_map('ze', 'ぜ')
    call t.add_map('zh', 'ずう')
    call t.add_map('zi', 'じ')
    call t.add_map('zj', 'ずん')
    call t.add_map('zk', 'じん')
    call t.add_map('zl', 'ぞん')
    call t.add_map('zn', 'ざん')
    call t.add_map('zo', 'ぞ')
    call t.add_map('zp', 'ぞう')
    call t.add_map('zq', 'ざい')
    call t.add_map('zr', 'ざる')
    call t.add_map('zu', 'ず')
    call t.add_map('zv', 'ざい')
    call t.add_map('zw', 'ぜい')
    call t.add_map('zx', 'ぜい')
    call t.add_map('zz', 'ざん')
    call eskk#register_mode_table('hira', t)
    " }}}
    "{{{ rom_to_kata
    let t = eskk#table#new('rom_to_kata*', 'rom_to_kata')
    call t.add_map('-', 'ー')
    call t.add_map('~', '?')
    call t.add_map('.', '。')
    call t.add_map(',', '、')
    call t.add_map('/', '・')
    call t.add_map(':', 'ー')
    "call t.add_map(';', 'ッ')
    call t.add_map('tm', 'ッ')
    call t.add_map('[', '「')
    call t.add_map(']', '」')
    call t.add_map('a', 'ア')
    call t.add_map('ba', 'バ')
    call t.add_map('bd', 'ベン')
    call t.add_map('be', 'ベ')
    call t.add_map('bh', 'ブウ')
    call t.add_map('bi', 'ビ')
    call t.add_map('bj', 'ブン')
    call t.add_map('bk', 'ビン')
    call t.add_map('bl', 'ボン')
    call t.add_map('bn', 'バン')
    call t.add_map('bo', 'ボ')
    call t.add_map('bp', 'ボウ')
    call t.add_map('bq', 'バイ')
    call t.add_map('bt', 'ビト')
    call t.add_map('bu', 'ブ')
    call t.add_map('bv', 'ビュウ')
    call t.add_map('bw', 'ベイ')
    call t.add_map('bx', 'ビョウ')
    call t.add_map('bya', 'ビャ')
    call t.add_map('byd', 'ビェン')
    call t.add_map('bye', 'ビェ')
    call t.add_map('byh', 'ビュウ')
    call t.add_map('byj', 'ビュン')
    call t.add_map('byl', 'ビョン')
    call t.add_map('byn', 'ビャン')
    call t.add_map('byo', 'ビョ')
    call t.add_map('byp', 'ビョウ')
    call t.add_map('byq', 'ビャイ')
    call t.add_map('byu', 'ビュ')
    call t.add_map('byw', 'ビェイ')
    call t.add_map('byz', 'ビャン')
    call t.add_map('bz', 'バン')
    call t.add_map('ca', 'チャ')
    call t.add_map('cd', 'チェン')
    call t.add_map('ce', 'チェ')
    call t.add_map('cf', 'チェ')
    call t.add_map('ch', 'チュウ')
    call t.add_map('ci', 'チ')
    call t.add_map('cj', 'チュン')
    call t.add_map('ck', 'チン')
    call t.add_map('cl', 'チョン')
    call t.add_map('cn', 'チャン')
    call t.add_map('co', 'チョ')
    call t.add_map('cp', 'チョウ')
    call t.add_map('cq', 'チャイ')
    call t.add_map('cu', 'チュ')
    call t.add_map('cw', 'チェイ')
    call t.add_map('cz', 'チャン')
    call t.add_map('da', 'ダ')
    call t.add_map('dch', 'ドゥー')
    call t.add_map('dci', 'ディ')
    call t.add_map('dcj', 'ドゥン')
    call t.add_map('dck', 'ディン')
    call t.add_map('dcu', 'ドゥ')
    call t.add_map('dd', 'デン')
    call t.add_map('de', 'デ')
    call t.add_map('df', 'デ')
    call t.add_map('dga', 'ヂャ')
    call t.add_map('dge', 'ヂェ')
    call t.add_map('dgh', 'デュー')
    call t.add_map('dgi', 'ディ')
    call t.add_map('dgj', 'ヂュン')
    call t.add_map('dgl', 'ヂョン')
    call t.add_map('dgo', 'ヂョ')
    call t.add_map('dgq', 'ヂャイ')
    call t.add_map('dgu', 'ヂュ')
    call t.add_map('dgz', 'ヂャン')
    call t.add_map('dh', 'ヅウ')
    call t.add_map('di', 'ヂ')
    call t.add_map('dj', 'ヅン')
    call t.add_map('dk', 'ヂン')
    call t.add_map('dl', 'ドン')
    call t.add_map('dm', 'デモ')
    call t.add_map('dn', 'ダン')
    call t.add_map('do', 'ド')
    call t.add_map('dp', 'ドウ')
    call t.add_map('dq', 'ダイ')
    call t.add_map('dr', 'デアル')
    call t.add_map('ds', 'デス')
    call t.add_map('dt', 'ダチ')
    call t.add_map('du', 'ヅ')
    call t.add_map('dv', 'ヂュウ')
    call t.add_map('dw', 'デイ')
    call t.add_map('dx', 'ヂョウ')
    call t.add_map('dy', 'ディ')
    call t.add_map('dz', 'ダン')
    call t.add_map('e', 'エ')
    call t.add_map('fa', 'ファ')
    call t.add_map('fd', 'フェン')
    call t.add_map('fe', 'フェ')
    call t.add_map('fh', 'フウ')
    call t.add_map('fi', 'フィ')
    call t.add_map('fj', 'フン')
    call t.add_map('fk', 'フィン')
    call t.add_map('fl', 'フォン')
    call t.add_map('fn', 'ファン')
    call t.add_map('fo', 'フォ')
    call t.add_map('fp', 'フォー')
    call t.add_map('fq', 'ファイ')
    call t.add_map('fu', 'フ')
    call t.add_map('fv', 'フュー')
    call t.add_map('fw', 'フェイ')
    call t.add_map('fyh', 'フュー')
    call t.add_map('fyj', 'フュン')
    call t.add_map('fyu', 'フュ')
    call t.add_map('fz', 'ファン')
    call t.add_map('ga', 'ガ')
    call t.add_map('gd', 'ゲン')
    call t.add_map('ge', 'ゲ')
    call t.add_map('gh', 'グウ')
    call t.add_map('gi', 'ギ')
    call t.add_map('gj', 'グン')
    call t.add_map('gk', 'ギン')
    call t.add_map('gl', 'ゴン')
    call t.add_map('gn', 'ガン')
    call t.add_map('go', 'ゴ')
    call t.add_map('gp', 'ゴウ')
    call t.add_map('gq', 'ガイ')
    call t.add_map('gr', 'ガラ')
    call t.add_map('gt', 'ゴト')
    call t.add_map('gu', 'グ')
    call t.add_map('gv', 'ギュウ')
    call t.add_map('gw', 'ゲイ')
    call t.add_map('gx', 'ギョウ')
    call t.add_map('gya', 'ギャ')
    call t.add_map('gyd', 'ギェン')
    call t.add_map('gye', 'ギェ')
    call t.add_map('gyh', 'ギュウ')
    call t.add_map('gyj', 'ギュン')
    call t.add_map('gyl', 'ギョン')
    call t.add_map('gyn', 'ギャン')
    call t.add_map('gyo', 'ギョ')
    call t.add_map('gyp', 'ギョウ')
    call t.add_map('gyq', 'ギャイ')
    call t.add_map('gyu', 'ギュ')
    call t.add_map('gyw', 'ギェイ')
    call t.add_map('gyz', 'ギャン')
    call t.add_map('gz', 'ガン')
    call t.add_map('ha', 'ハ')
    call t.add_map('hd', 'ヘン')
    call t.add_map('he', 'ヘ')
    call t.add_map('hf', 'フ')
    call t.add_map('hga', 'ヒャ')
    call t.add_map('hgd', 'ヒェン')
    call t.add_map('hge', 'ヒェ')
    call t.add_map('hgh', 'ヒュウ')
    call t.add_map('hgj', 'ヒュン')
    call t.add_map('hgl', 'ヒョン')
    call t.add_map('hgn', 'ヒャン')
    call t.add_map('hgo', 'ヒョ')
    call t.add_map('hgp', 'ヒョウ')
    call t.add_map('hgq', 'ヒャイ')
    call t.add_map('hgu', 'ヒュ')
    call t.add_map('hgz', 'ヒャン')
    call t.add_map('hh', 'フウ')
    call t.add_map('hi', 'ヒ')
    call t.add_map('hj', 'フン')
    call t.add_map('hk', 'ヒン')
    call t.add_map('hl', 'ホン')
    call t.add_map('ho', 'ホ')
    call t.add_map('hp', 'ホウ')
    call t.add_map('hq', 'ハイ')
    call t.add_map('hr', 'ハラ')
    call t.add_map('ht', 'ヒト')
    call t.add_map('hu', 'フ')
    call t.add_map('hv', 'ヒュウ')
    call t.add_map('hw', 'ヘイ')
    call t.add_map('hx', 'ヒョウ')
    call t.add_map('hya', 'ヒャ')
    call t.add_map('hyd', 'ヒェン')
    call t.add_map('hye', 'ヒェ')
    call t.add_map('hyh', 'ヒュウ')
    call t.add_map('hyj', 'ヒュン')
    call t.add_map('hyl', 'ヒョン')
    call t.add_map('hyo', 'ヒョ')
    call t.add_map('hyp', 'ヒョウ')
    call t.add_map('hyq', 'ヒャイ')
    call t.add_map('hyu', 'ヒュ')
    call t.add_map('hyz', 'ヒャン')
    call t.add_map('hz', 'ハン')
    call t.add_map('i', 'イ')
    call t.add_map('ja', 'ジャ')
    call t.add_map('jd', 'ジェン')
    call t.add_map('je', 'ジェ')
    call t.add_map('jf', 'ジュ')
    call t.add_map('jh', 'ジュウ')
    call t.add_map('ji', 'ジ')
    call t.add_map('jj', 'ジュン')
    call t.add_map('jk', 'ジン')
    "call t.add_map('jl', 'ジョン')
    call t.add_map('jo', 'ジョ')
    call t.add_map('jp', 'ジョウ')
    call t.add_map('jq', 'ジャイ')
    call t.add_map('ju', 'ジュ')
    call t.add_map('jw', 'ジェイ')
    call t.add_map('jz', 'ジャン')
    call t.add_map('ka', 'カ')
    call t.add_map('kd', 'ケン')
    call t.add_map('ke', 'ケ')
    call t.add_map('kf', 'キ')
    call t.add_map('kga', 'キャ')
    call t.add_map('kgh', 'キュウ')
    call t.add_map('kgj', 'キュン')
    call t.add_map('kgl', 'キョン')
    call t.add_map('kgn', 'キャン')
    call t.add_map('kgo', 'キョ')
    call t.add_map('kgp', 'キョウ')
    call t.add_map('kgq', 'キャイ')
    call t.add_map('kgu', 'キュ')
    call t.add_map('kgz', 'キャン')
    call t.add_map('kh', 'クウ')
    call t.add_map('ki', 'キ')
    call t.add_map('kj', 'クン')
    "call t.add_map('kk', 'キン')
    call t.add_map('kl', 'コン')
    call t.add_map('km', 'カモ')
    call t.add_map('ko', 'コ')
    call t.add_map('kp', 'コウ')
    call t.add_map('kq', 'カイ')
    call t.add_map('kr', 'カラ')
    call t.add_map('kt', 'コト')
    call t.add_map('ku', 'ク')
    call t.add_map('kv', 'キュウ')
    call t.add_map('kw', 'ケイ')
    call t.add_map('kx', 'キョウ')
    call t.add_map('kz', 'カン')
    call t.add_map('la', 'ァ')
    call t.add_map('le', 'ェ')
    call t.add_map('li', 'ィ')
    call t.add_map('lka', 'ヵ')
    call t.add_map('lke', 'ヶ')
    call t.add_map('lo', 'ォ')
    call t.add_map('ltu', 'ッ')
    call t.add_map('lu', 'ゥ')
    call t.add_map('lwa', 'ヮ')
    call t.add_map('lya', 'ャ')
    call t.add_map('lye', 'ェ')
    call t.add_map('lyi', 'ィ')
    call t.add_map('lyo', 'ョ')
    call t.add_map('lyu', 'ュ')
    call t.add_map('ma', 'マ')
    call t.add_map('md', 'メン')
    call t.add_map('me', 'メ')
    call t.add_map('mf', 'ム')
    call t.add_map('mga', 'ミャ')
    call t.add_map('mgd', 'ミェン')
    call t.add_map('mge', 'ミェ')
    call t.add_map('mgh', 'ミュウ')
    call t.add_map('mgj', 'ミュン')
    call t.add_map('mgl', 'ミョン')
    call t.add_map('mgn', 'ミャン')
    call t.add_map('mgo', 'ミョ')
    call t.add_map('mgp', 'ミョウ')
    call t.add_map('mgq', 'ミャイ')
    call t.add_map('mgu', 'ミュ')
    call t.add_map('mgw', 'ミェイ')
    call t.add_map('mgz', 'ミャン')
    call t.add_map('mh', 'ムウ')
    call t.add_map('mi', 'ミ')
    call t.add_map('mj', 'ムン')
    call t.add_map('mk', 'ミン')
    call t.add_map('ml', 'モン')
    call t.add_map('mn', 'モノ')
    call t.add_map('mo', 'モ')
    call t.add_map('mp', 'モウ')
    call t.add_map('mq', 'マイ')
    call t.add_map('mr', 'マル')
    call t.add_map('ms', 'マス')
    call t.add_map('mt', 'マタ')
    call t.add_map('mu', 'ム')
    call t.add_map('mv', 'ミュウ')
    call t.add_map('mw', 'メイ')
    call t.add_map('mx', 'ミョウ')
    call t.add_map('mz', 'マン')
    call t.add_map('na', 'ナ')
    call t.add_map('nb', 'ネバ')
    call t.add_map('nd', 'ネン')
    call t.add_map('ne', 'ネ')
    call t.add_map('nf', 'ヌ')
    call t.add_map('nga', 'ニャ')
    call t.add_map('ngd', 'ニェン')
    call t.add_map('nge', 'ニェ')
    call t.add_map('ngh', 'ニュウ')
    call t.add_map('ngj', 'ニュン')
    call t.add_map('ngl', 'ニョン')
    call t.add_map('ngn', 'ニャン')
    call t.add_map('ngo', 'ニョ')
    call t.add_map('ngp', 'ニョウ')
    call t.add_map('ngq', 'ニャイ')
    call t.add_map('ngu', 'ニュ')
    call t.add_map('ngw', 'ニェイ')
    call t.add_map('ngz', 'ニャン')
    call t.add_map('nh', 'ヌウ')
    call t.add_map('ni', 'ニ')
    call t.add_map('nj', 'ヌン')
    call t.add_map('nk', 'ニン')
    call t.add_map('nl', 'ノン')
    call t.add_map('nn', 'ン')
    call t.add_map('no', 'ノ')
    call t.add_map('np', 'ノウ')
    call t.add_map('nq', 'ナイ')
    call t.add_map('nr', 'ナル')
    call t.add_map('nt', 'ニチ')
    call t.add_map('nu', 'ヌ')
    call t.add_map('nv', 'ニュウ')
    call t.add_map('nw', 'ネイ')
    call t.add_map('nx', 'ニョウ')
    call t.add_map('nz', 'ナン')
    call t.add_map('o', 'オ')
    call t.add_map('pa', 'パ')
    call t.add_map('pd', 'ペン')
    call t.add_map('pe', 'ペ')
    call t.add_map('pf', 'ポン')
    call t.add_map('pga', 'ピャ')
    call t.add_map('pgh', 'ピュウ')
    call t.add_map('pgj', 'ピュン')
    call t.add_map('pgl', 'ピョン')
    call t.add_map('pgn', 'ピャン')
    call t.add_map('pgo', 'ピョ')
    call t.add_map('pgp', 'ピョウ')
    call t.add_map('pgq', 'ピャイ')
    call t.add_map('pgu', 'ピュ')
    call t.add_map('pgz', 'ピャン')
    call t.add_map('ph', 'プウ')
    call t.add_map('pi', 'ピ')
    call t.add_map('pj', 'プン')
    call t.add_map('pk', 'ピン')
    call t.add_map('pl', 'ポン')
    call t.add_map('po', 'ポ')
    "call t.add_map('pp', 'ポウ')
    call t.add_map('pq', 'パイ')
    call t.add_map('pu', 'プ')
    call t.add_map('pv', 'ピュウ')
    call t.add_map('pw', 'ペイ')
    call t.add_map('px', 'ピョウ')
    call t.add_map('pyu', 'ピュ')
    call t.add_map('pz', 'パン')
    call t.add_map('q', 'ン')
    call t.add_map('ra', 'ラ')
    call t.add_map('rd', 'レン')
    call t.add_map('re', 'レ')
    call t.add_map('rh', 'ルウ')
    call t.add_map('ri', 'リ')
    call t.add_map('rj', 'ルン')
    call t.add_map('rk', 'リン')
    call t.add_map('rl', 'ロン')
    call t.add_map('rn', 'ラン')
    call t.add_map('ro', 'ロ')
    call t.add_map('rp', 'ロウ')
    call t.add_map('rq', 'ライ')
    call t.add_map('rr', 'ラレ')
    call t.add_map('ru', 'ル')
    call t.add_map('rv', 'リュウ')
    call t.add_map('rw', 'レイ')
    call t.add_map('rx', 'リョウ')
    call t.add_map('rya', 'リャ')
    call t.add_map('ryh', 'リュウ')
    call t.add_map('ryj', 'リュン')
    call t.add_map('ryl', 'リョン')
    call t.add_map('ryo', 'リョ')
    call t.add_map('ryp', 'リョウ')
    call t.add_map('ryq', 'リャイ')
    call t.add_map('ryu', 'リュ')
    call t.add_map('ryz', 'リャン')
    call t.add_map('rz', 'ラン')
    call t.add_map('sa', 'サ')
    call t.add_map('sd', 'セン')
    call t.add_map('se', 'セ')
    call t.add_map('sf', 'サイ')
    call t.add_map('sh', 'スウ')
    call t.add_map('si', 'シ')
    call t.add_map('sj', 'スン')
    call t.add_map('sk', 'シン')
    call t.add_map('sl', 'ソン')
    call t.add_map('sn', 'サン')
    call t.add_map('so', 'ソ')
    call t.add_map('sp', 'ソウ')
    call t.add_map('sq', 'サイ')
    call t.add_map('sr', 'スル')
    "call t.add_map('ss', 'セイ')
    call t.add_map('st', 'シタ')
    call t.add_map('su', 'ス')
    call t.add_map('sv', 'シュウ')
    call t.add_map('sw', 'セイ')
    call t.add_map('sx', 'ショウ')
    call t.add_map('syi', 'スィ')
    call t.add_map('syk', 'スィン')
    call t.add_map('syp', 'ショウ')
    call t.add_map('sz', 'サン')
    call t.add_map('ta', 'タ')
    call t.add_map('tb', 'タビ')
    call t.add_map('td', 'テン')
    call t.add_map('te', 'テ')
    call t.add_map('tgh', 'テュー')
    call t.add_map('tgi', 'ティ')
    call t.add_map('tgj', 'トゥン')
    call t.add_map('tgk', 'ティン')
    call t.add_map('tgp', 'トゥー')
    call t.add_map('tgu', 'トゥ')
    call t.add_map('th', 'ツウ')
    call t.add_map('ti', 'チ')
    call t.add_map('tj', 'ツン')
    call t.add_map('tk', 'チン')
    call t.add_map('tl', 'トン')
    "call t.add_map('tm', 'タメ')
    call t.add_map('tn', 'タン')
    call t.add_map('to', 'ト')
    call t.add_map('tp', 'トウ')
    call t.add_map('tq', 'タイ')
    call t.add_map('tr', 'タラ')
    call t.add_map('tsa', 'ツァ')
    call t.add_map('tsd', 'ツェン')
    call t.add_map('tse', 'ツェ')
    call t.add_map('tsh', 'ツウ')
    call t.add_map('tsi', 'ツィ')
    call t.add_map('tsj', 'ツン')
    call t.add_map('tsk', 'ツィン')
    call t.add_map('tsl', 'ツォン')
    call t.add_map('tso', 'ツォ')
    call t.add_map('tsq', 'ツァイ')
    call t.add_map('tst', 'トシテ')
    call t.add_map('tsu', 'ツ')
    call t.add_map('tsz', 'ツァン')
    "call t.add_map('tt', 'タチ')
    call t.add_map('tu', 'ツ')
    call t.add_map('tw', 'テイ')
    call t.add_map('tya', 'テャ')
    call t.add_map('tyh', 'テュー')
    call t.add_map('tyj', 'テュン')
    call t.add_map('tyq', 'テャイ')
    call t.add_map('tyu', 'テュ')
    call t.add_map('tyz', 'テャン')
    call t.add_map('tz', 'タン')
    call t.add_map('u', 'ウ')
    call t.add_map('va', 'ヴァ')
    call t.add_map('vd', 'ヴェン')
    call t.add_map('ve', 'ヴェ')
    call t.add_map('vh', 'ヴー')
    call t.add_map('vi', 'ヴィ')
    call t.add_map('vj', 'ヴン')
    call t.add_map('vk', 'ヴィン')
    call t.add_map('vl', 'ヴォン')
    call t.add_map('vn', 'ヴァン')
    call t.add_map('vo', 'ヴォ')
    call t.add_map('vp', 'ヴォウ')
    call t.add_map('vq', 'ヴァイ')
    call t.add_map('vu', 'ヴ')
    call t.add_map('vv', 'ヴュー')
    call t.add_map('vw', 'ヴェイ')
    call t.add_map('vyu', 'ヴュ')
    call t.add_map('vz', 'ヴァン')
    call t.add_map('wa', 'ワ')
    call t.add_map('wd', 'ウェン')
    call t.add_map('we', 'ウェ')
    call t.add_map('whe', 'ヱ')
    call t.add_map('whi', 'ヰ')
    call t.add_map('who', 'ウォ')
    call t.add_map('wi', 'ウィ')
    call t.add_map('wk', 'ウィン')
    call t.add_map('wl', 'ウォン')
    call t.add_map('wn', 'ワン')
    call t.add_map('wo', 'ヲ')
    call t.add_map('wp', 'ウォー')
    call t.add_map('wq', 'ワイ')
    call t.add_map('wr', 'ワレ')
    call t.add_map('wso', 'ウォ')
    call t.add_map('wt', 'ワタ')
    call t.add_map('ww', 'ウェイ')
    call t.add_map('wz', 'ワン')
    call t.add_map('xa', 'シャ')
    call t.add_map('xd', 'シェン')
    call t.add_map('xe', 'シェ')
    call t.add_map('xh', 'シュウ')
    call t.add_map('xi', 'シ')
    call t.add_map('xj', 'シュン')
    call t.add_map('xk', 'シン')
    call t.add_map('xl', 'ション')
    call t.add_map('xn', 'シャン')
    call t.add_map('xo', 'ショ')
    call t.add_map('xp', 'ショウ')
    call t.add_map('xq', 'シャイ')
    call t.add_map('xu', 'シュ')
    "call t.add_map('xw', 'シェイ')
    call t.add_map('xz', 'シャン')
    call t.add_map('ya', 'ヤ')
    call t.add_map('yd', 'イェン')
    call t.add_map('ye', 'イェ')
    call t.add_map('yf', 'ユ')
    call t.add_map('yh', 'ユウ')
    call t.add_map('yj', 'ユン')
    call t.add_map('yl', 'ヨン')
    call t.add_map('yo', 'ヨ')
    call t.add_map('yp', 'ヨウ')
    call t.add_map('yq', 'ヤイ')
    call t.add_map('yr', 'ヨル')
    call t.add_map('yu', 'ユ')
    call t.add_map('yw', 'イェイ')
    call t.add_map('yz', 'ヤン')
    call t.add_map('za', 'ザ')
    call t.add_map('zc', 'ザ')
    call t.add_map('zd', 'ゼン')
    call t.add_map('ze', 'ゼ')
    call t.add_map('zh', 'ズウ')
    call t.add_map('zi', 'ジ')
    call t.add_map('zj', 'ズン')
    call t.add_map('zk', 'ジン')
    call t.add_map('zl', 'ゾン')
    call t.add_map('zn', 'ザン')
    call t.add_map('zo', 'ゾ')
    call t.add_map('zp', 'ゾウ')
    call t.add_map('zq', 'ザイ')
    call t.add_map('zr', 'ザル')
    call t.add_map('zu', 'ズ')
    call t.add_map('zv', 'ザイ')
    call t.add_map('zw', 'ゼイ')
    call t.add_map('zx', 'ゼイ')
    call t.add_map('zz', 'ザン')
    call eskk#register_mode_table('kata', t)
    " }}}
endfunction
