" Startup {{{1 ====================
augroup MyAutoCmd
    autocmd!
augroup END
command! -nargs=* Autocmd autocmd MyAutoCmd <args>
command! -nargs=* AutocmdFT autocmd MyAutoCmd FileType <args>

set shellslash
" }}}

" NeoBundle {{{1 ====================
if has('vim_starting')
    set nocompatible
    if has('win32') || has('win64')
        set runtimepath+=~/vimfiles/bundle/neobundle.vim/
        call neobundle#rc(expand('~/vimfiles/bundle/'))
    else
        set runtimepath+=~/.vim/bundle/neobundle.vim/
        call neobundle#rc(expand('~/.vim/bundle/'))
    endif
endif

" Let NeoBundle manage NeoBundle
" NeoBundleをNeoBundleで管理する場合はNeoBundleFetch必須
NeoBundleFetch 'Shougo/neobundle.vim'

" Use neobundle standard recipes.
NeoBundle 'Shougo/neobundle-vim-recipes'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
" vimproc : vimから非同期実行。vimshellで必要、neobundleでも推奨。
NeoBundle 'Shougo/vimproc', {
    \ 'build' : {
    \     'windows' : 'make -f make_mingw32.mak',
    \     'cygwin' : 'make -f make_cygwin.mak',
    \     'mac' : 'make -f make_mac.mak',
    \     'unix' : 'make -f make_unix.mak',
    \    },
    \ }

" operator, textobj ==================== {{{2
" vim-operator-user : 簡単にoperatorを定義できるようにする
NeoBundle 'kana/vim-operator-user'

" vim-operator-search : 範囲内の検索を行うoperator
" http://d.hatena.ne.jp/osyo-manga/20131019/1382191487
NeoBundle 'osyo-manga/vim-operator-search'

" operator-camelize : camel-caseへの変換
NeoBundle 'operator-camelize'

" textobj-user : 簡単にVimエディタのテキストオブジェクトをつくれる
NeoBundle 'kana/vim-textobj-user'

" vim-textobj-plugins : いろんなものをtext-objectにする(obsolate)
" NeoBundle 'thinca/vim-textobj-plugins.git'

" vim-textobj-syntax : syntax hilightされたものをtext-objectに
" ay, iy
NeoBundle 'kana/vim-textobj-syntax.git'

" vim-textobj-lastpat : 最後に検索されたパターンをtext-objectに
" a/, i/, a?, i?
NeoBundle 'kana/vim-textobj-lastpat.git'

NeoBundle 'kana/textobj-line.git'

" vim-textobj-indent : インデントされたものをtext-objectに
" ai, ii, aI, iI
NeoBundle 'kana/vim-textobj-indent.git'

" vim-textobj-function : 関数の中身をtext-objectに
" af, if
NeoBundle 'kana/vim-textobj-function.git'

" vim-textobj-fold : 折りたたまれたアレをtext-objectに
NeoBundle 'kana/vim-textobj-fold.git'

" NeoBundle 'textobj-rubyblock'

" vim-textobj-entire : buffer全体をtext-objectに
" ae, ie
NeoBundle 'textobj-entire'

" 「foo」 or 【bar】などをtext-objectに
NeoBundle 'textobj-jabraces'

" コメントの中身をtext-objectに
" ac, ic
" NeoBundle 'textobj-comment'

" operator, textobj }}}

" Unite ==================== {{{2
NeoBundle 'Shougo/unite.vim'
"NeoBundle 'tsukkee/unite-help'
NeoBundle 'Shougo/unite-help'
NeoBundle 'Shougo/unite-outline'
"NeoBundle 'Sixeight/unite-grep'
NeoBundle 'thinca/vim-unite-history'
NeoBundle 'tsukkee/unite-tag'
NeoBundle 'choplin/unite-vim-hacks'
NeoBundle 'osyo-manga/unite-fold'
NeoBundle 'ujihisa/unite-colorscheme'
"NeoBundle 'Shougo/neomru.vim'
"}}}

" ColorSchema{{{2
  " color schema 256
NeoBundle 'desert256.vim'
NeoBundle 'mrkn256.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'yuroyoro/yuroyoro256.vim'
NeoBundle '29decibel/codeschool-vim-theme'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'altercation/solarized'
NeoBundle 'vim-scripts/newspaper.vim'
" }}}

" ステータスラインをかっこ良くするvim-airline
" フォントの修正と変更が必要
NeoBundle 'bling/vim-airline'

" undo履歴を追える (need python support)
NeoBundle 'Gundo'

" neocomplcache.vim : Vim的補完環境
" NeoBundle 'Shougo/neocomplcache'
" Vim7.3.885以上、+lua でビルドした Vim なら neocomplete のほうがいいらしいよ
" LinuxのVimはソースから自分でビルドしたほうが新しい物を使えるよ
NeoBundle 'Shougo/neocomplete.vim'

" neosnippet
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

" various langueages snippets
NeoBundle 'honza/vim-snippets'

" vimfiler
NeoBundle 'Shougo/vimfiler.vim', {
    \ 'depends': ['Shougo/unite.vim'],
    \ }

" sonictemplate-vim
NeoBundle 'mattn/sonictemplate-vim'

" codic-vim
NeoBundle 'koron/codic-vim'
NeoBundle 'rhysd/unite-codic.vim'

" vim-smartword : 単語移動がスマートな感じで
" NeoBundle 'smartword'

" camelcasemotion : CamelCaseやsnake_case単位でのワード移動
"NeoBundle 'camelcasemotion'

" <Leader><Leader>w/fなどで、motion先をhilightする
"NeoBundle 'EasyMotion'

" matchit.vim : 「%」による対応括弧へのカーソル移動機能を拡張
NeoBundle 'matchit.zip'

" open-browser.vim : カーソルの下のURLを開くor単語を検索エンジンで検索
NeoBundle 'tyru/open-browser.vim'

" Pydiction : Python用入力補完
"NeoBundle 'rkulla/pydiction'

" GoLang
" GoのVimプラギンをNeoBundleで管理する - 四角革命前夜
" http://d.hatena.ne.jp/sasaplus1/20120708/1341720437
"NeoBundle 'go', {'type' : 'nosync'}
"NeoBundle 'gocode', {'type' : 'nosync'}

" JavaScript
" NeoBundle 'JavaScript-syntax'

" python
"NeoBundle 'yuroyoro/vim-python'

" syntax, error {{{
" syntaxとかエラーとかを表示してくれるあたり
" quickrun.vim : 編集中のファイルを簡単に実行できるプラグイン
NeoBundle 'thinca/vim-quickrun'

" syntax checking plugins exist for eruby, haml, html, javascript, php, python, ruby and sass.
NeoBundle 'scrooloose/syntastic'

" エラーがある場所をhilight
" NeoBundle 'errormarker.vim'
"}}}

" coffeescript {{{
" syntax + 自動コンパイル
NeoBundle 'kchmck/vim-coffee-script'
" js BDDツール
"NeoBundle 'claco/jasmine.vim'
" }}}

" vimからGit操作する
NeoBundle 'tpope/vim-fugitive'

" 様々な移動を '[', ']' + キーで行う
NeoBundle 'tpope/vim-unimpaired'

" git-vim: Plugin files for calling git functions from inside Vim and Syntax files for git displays
"NeoBundle 'motemen/git-vim'

" vimdoc 日本語
NeoBundle 'yuroyoro/vimdoc_ja'

" vimshell : vimのshell
NeoBundle 'Shougo/vimshell.git'

" gtags.vim : GNU Globalで生成したgtagsをvimから触るプラグイン
NeoBundle 'vim-scripts/gtags.vim'

" DumbBuf.vim : quickbufっぽくbufferを管理。 "<Leader>b<Space>でBufferList
"NeoBundle 'DumbBuf'

" minibufexpl.vim : タブエディタ風にバッファ管理ウィンドウを表示
"NeoBundle 'minibufexpl.vim'

" 最新のnetrwが使いづらすぎるので136に固定
" VimFilerに慣れたら移行
NeoBundle 'netrw.vim', '136'

" エンコード処理
"NeoBundle 'banyan/recognize_charcode.vim'

"NeoBundle 'taglist.vim'

" VimからSubversion操作したいな
"NeoBundle 'vcscommand.vim'

" ディレクトリを指定して、ディレクトリ内の差分を表示する
"NeoBundle 'DirDiff.vim'

" ビジュアルモードで選択したテキストで*検索する
NeoBundle 'thinca/vim-visualstar'

" インデント量の違いをハイライト表示する
" テーマとハイライト色を吟味しないと逆に見づらい…
"NeoBundle 'nathanaelkane/vim-indent-guides'

" Vim内で計算処理を行う(+Python)
"NeoBundle 'gregsexton/VimCalc'

" 閲覧部分のフレームワーク化
NeoBundle 'thinca/vim-ref'

" ファイルのテンプレートを選択できるplugin
" NeoBundle 'qtmplsel.vim'

" sonictemplate-vim
NeoBundle 'mattn/sonictemplate-vim'

" vim-gocode
NeoBundle 'Blackrush/vim-gocode'

" webapi-vim
NeoBundle 'mattn/webapi-vim'

" gist.vim
NeoBundle 'mattn/gist-vim'

" ProjectLocal.vim
" http://blog.supermomonga.com/articles/vim/projectlocal-vim-released.html
NeoBundle 'supermomonga/projectlocal.vim'

" hateblo.vim Vimからはてなブログの編集ができる
NeoBundle 'moznion/hateblo.vim'

" vim-metarw メタ情報を読み書きするための土台, hateblo.vimから使用
" Windowsの場合、mattnさんのforkを使用
NeoBundle 'mattn/vim-metarw'

NeoBundle 'mattn/vim-metarw-gdrive'

" はてなダイアリーの投稿、管理ができる
" 個人的にはシンタックスのみ利用させてもらう
NeoBundle 'https://github.com/motemen/hatena-vim'

" Excite翻訳で日<-->英翻訳する
NeoBundle 'mattn/excitetranslate-vim'

" vim-versions
NeoBundle 'hrsh7th/vim-versions.git'

" project.vim
" NeoBundle 'project.vim'

" コンテキストによって自動的にファイルタイプが変わる
" コンテキストが切り替わった時にWORDの範囲指定がおかしくなるのでちょっと保留
"NeoBundle 'Shougo/context_filetype.vim'

" vim-precious
" http://d.hatena.ne.jp/osyo-manga/20130612/1371046408
"NeoBundle 'osyo-manga/vim-precious'

"NeoBundle 'osyo-manga/vim-anzu'

" threes
NeoBundle 'thinca/vim-threes'

" quickrunの拡張プラグイン
NeoBundle 'osyo-manga/shabadou.vim'

NeoBundle 'fuenor/qfixhowm'

" 任意にハイライトさせることができる
NeoBundle 't9md/vim-quickhl'

" リスタートする
NeoBundle 'tyru/restart.vim'

" 'f'による移動を強化する
NeoBundle 'rhysd/clever-f.vim'

NeoBundle 'rbtnn/vimconsole.vim'

NeoBundle 'vim-jp/vital.vim'

NeoBundle 's3rvac/vim-syntax-redminewiki'

NeoBundle 'rhysd/vim-go-impl'

NeoBundleLazy 'majutsushi/tagbar' , {
    \ 'autoload': {
    \   'commands': ['TagbarToggle'],
    \ }}

NeoBundleLazy 'davidhalter/jedi-vim', {
    \ 'autoload': {
    \   'filetypes': ['python', 'python3', 'djangohtml'],
    \ },
    \ 'build': {
    \   'windows': 'pip install jedi',
    \   'unix': 'pip install jedi',
    \ }}
let s:hooks = neobundle#get_hooks('jedi-vim')
function! s:hooks.on_source(bundle)
    " Jedi-vimに勝手に設定を変えさせない
    let g:jedi#auto_vim_configuration = 0
    " 補完の最初の項目は選択しない
    let g:jedi#popup_select_first = 0
    " quickrun回避
    let g:jedi#rename_command = '<Leader>R'
    " gundo回避
    let g:jedi#goto_assignments_command = '<Leader>G'
endfunction

NeoBundleLazy 'vim-scripts/TaskList.vim', {
    \ 'autoload': {
    \   'mappings': ['<Plug>TaskList'],
    \ }}

" 自作プラグインのテスト
"NeoBundle 'vim-keyatest'

NeoBundle 'vim-keyatest', {
\       'base' : '~/vimfiles/bundle',
\       'type' : 'nosync',
\   }

filetype plugin indent on

" Installation check.
NeoBundleCheck

if !has('vim_starting')
  " Call on_source hook when reloading .vimrc.
  call neobundle#call_hook('on_source')
endif

" NeoBundle }}}

" Basic Options ==================== {{{1
if exists('&ambiwidth')
    set ambiwidth=double
endif
let mapleader = ","              " キーマップリーダー(defaultは'\')
set scrolloff=2                  " スクロール時の余白確保
set textwidth=0                  " 一行に長い文章を書いていても自動折り返しをしない
set nowrap                       " 折り返ししない
set nobackup                     " バックアップ取らない
set autoread                     " 他で書き換えられたら自動で読み直す
set noswapfile                   " スワップファイル作らない
set hidden                       " 編集中でも他のファイルを開けるようにする
set backspace=indent,eol,start   " バックスペースでなんでも消せるように
"set formatoptions=lmoq           " テキスト整形オプション，マルチバイト系を追加
set browsedir=buffer             " Exploreの初期ディレクトリ
set whichwrap=b,s,h,l,<,>,[,]    " カーソル移動を行頭、行末で止まらないようにする
set showcmd                      " コマンドをステータス行に表示
set showmode                     " 現在のモードを表示
"set viminfo='50,<1000,s100,\"50  " viminfoファイルの設定
"set modelines=0                  " モードラインは無効
" cのポインタ参照("->")等でbellが鳴るので、bell関連の設定に注意
set matchpairs& matchpairs+=<:>  " カッコの組に<>を追加
set noerrorbells " エラーメッセージに伴うベルを発生させない
" 以下の設定をする場合は t_vbを.gvimrcに書かないと動作しないかも
set visualbell t_vb=             " ビープをならさない, 画面フラッシュもしない

set clipboard& clipboard+=unnamed  " OSのクリップボードを使用する
"set clipboard=unnamedplus

" ターミナルでマウスを使用できるようにする
set mouse=a
set guioptions+=a
set ttymouse=xterm2

set helpheight=12               " helpウィンドウを開いた時の高さ
set helpfile=$VIMRUNTIME/doc/help.txt
set grepprg=pt                  " grepにptを使用する
set undodir=~/vimfiles/undo     " undoファイルの作成先

set undodir=~/vimfiles/undodir

" 挿入モードでCtrl+pを押すとクリップボードの内容を貼り付けられるようにする
" imap <C-p>  <ESC>"*pa
" imap <C-p>  <ESC>pa

" Ev/Rvでvimrcの編集と反映
command! Ev edit $MYVIMRC
command! Rv source $MYVIMRC
" .vimrcを保存した時は読み込みし直す(.vimrcの規模にもよるがちょっと重い)
Autocmd BufWritePost *vimrc source $MYVIMRC
" .gvimrcを保存した時は読み込みし直す
Autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC

" Cd コマンドで現在開いているファイルのディレクトリに移動する
command! Cd cd %:h

" Bv で ~/vimfiles/bundle を開く
command! Bv edit ~/vimfiles/bundle


" 試してみたいことがあった時の.vimrc.trialを開く
"command! Tv edit ~/dotfiles/.vimrc.trial

" EDFvで~/dotfilesの編集
command! EDFv edit ~/dotfiles

" <Leader>t + ? で各種設定をトグル
nnoremap [toggle] <Nop>
nmap <Leader>t [toggle]
nnoremap <silent> [toggle]t :setl expandtab!<CR>:setl expandtab?<CR>
nnoremap <silent> [toggle]w :setl wrap!<CR>:setl wrap?<CR>

" ファイルタイプ判定をon
filetype plugin on

" GoLangのpluginをruntime pathへ
if has('vim_starting')
    filetype off
    filetype plugin indent off
    if $GOROOT != ''
        set rtp+=$GOROOT/misc/vim
    endif
    exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
    filetype plugin indent on
    syntax on
endif

" SConstructファイルを開いた時にpythonで解釈する
au BufRead,BufNewFile SConstruct set filetype=python
" coffeescript判定
au BufRead,BufNewFile,BufReadPre *.coffee set filetype=coffee

"Gtags(global)を使用するためのショートカット
nnoremap <C-g> :Gtags
nnoremap <C-i> :Gtags -f %<CR>
nnoremap <C-@> :GtagsCursor<CR>
"map <C-n> :cn<CR>
"map <C-p> :cp<CR>

" }}}

" 表示 Apperance ==================== {{{1
set showmatch         " 括弧の対応をハイライト
set number            " 行番号表示
set list              " 不可視文字表示
set listchars=tab:>.,trail:_,extends:>,precedes:< " 不可視文字の表示形式
set display=uhex      " 印字不可能文字を16進数で表示

" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

" カーソル行をハイライト
"set cursorline
" カレントウィンドウにのみ罫線を引く
"augroup cch
"  Autocmd! cch
"  Autocmd WinLeave * set nocursorline
"  Autocmd WinEnter,BufRead * set cursorline
"augroup END

hi clear CursorLine
hi CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=black

" コンソール画面復元に関する設定。'restorescreen'を参照
"let &t_ti = &t_ti . "\e[?6h\e[?69h"
"let &t_te = "\e[?691\e[?61" . &t_te

" 'scroll-region'に関する設定。使用しているターミナルに応じて設定が必要と思われ
"let &t_CV = "\e[%i%p1%d;%p2%ds"
"let &t_CS = "y"

" Linuxのターミナルからvimを使う際のフォント設定
if has('unix')
  set guifont=Ricty\ for\ Powerline\ 10
  set guifontwide=Ricty\ 10
  set ambiwidth=double
endif

" コマンド実行中は再描画しない
" set lazyredraw
" 高速ターミナル接続を行う
" ウィンドウのスクロール時に再描画する
" set ttyfast
" }}}

" カラー関連 Colors =================== {{{1
" colorscheme
colorscheme yuroyoro256

"colorscheme codeschool
"source ~/dotfiles/.vimrc.color
"colorscheme keyangu256

if &term =~ "xterm-256color" || "screen-256color"
" 256色
  set t_Co=256
  set t_Sf=[3%dm
  set t_Sb=[4%dm
elseif &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
  set t_Co=16
  set t_Sf=[3%dm
  set t_Sb=[4%dm
elseif &term =~ "xterm-color"
  set t_Co=8
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

" 使用しているターミナルが"xterm-color"なのに上のifelseがちゃんと
" 動いていないので、強制的に256色表示
set t_Co=256
set t_Sf=[3%dm
set t_Sb=[4%dm

" ハイライト on
syntax enable
" 補完候補の色づけ for vim7
" hi Pmenu ctermbg=255 ctermfg=0 guifg=#000000 guibg=#999999
" hi PmenuSel ctermbg=blue ctermfg=black
hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c
" hi PmenuSbar ctermbg=0 ctermfg=9
" hi PmenuSbar ctermbg=255 ctermfg=0 guifg=#000000 guibg=#FFFFFF

" }}}

" 補完・履歴 Complete ==================== {{{1

set wildmenu               " コマンド補完を強化
set wildchar=<tab>         " コマンド補完を開始するキー
set wildmode=list:longest,full     " リスト表示，最長マッチ
set history=1024           " コマンド・検索パターンの履歴数
set complete+=k            " 補完に辞書ファイル追加

" ファイル/ディレクトリ名補完時に無視するリスト
set wildignore&
set wildignore+=*.sw?                                   " vim swap files
set wildignore+=*.bak,*.bk,*.?~,*.??~,*.???~,*.~        " backup files
set wildignore+=*.jar                                   " Java archives
set wildignore+=*.pyc                                   " python byte code
set wildignore+=*.stats                                 " Pylint status

" Ex-modeでの<C-p><C-n>をzshのヒストリ補完っぽくする
cnoremap <C-p> <Up>
cnoremap <Up>  <C-p>
cnoremap <C-n> <Down>
cnoremap <Down>  <C-n>

" 補完 neocomplcache ==================== {{{2

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
" neocomplecacheを自動的にロックするバッファ名のパターン
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" -入力による候補番号の表示
let g:neocomplcache_enable_quick_match = 1
"ポップアップメニューで表示される候補の数。初期値は100
let g:neocomplcache_max_list = 20

" XXX 重いかもしれない設定
	" camle caseを有効化。大文字を区切りとしたワイルドカードのように振る舞う
	let g:neocomplcache_enable_camel_case_completion = 0
	" _(アンダーバー)区切りの補完を有効化
	let g:neocomplcache_enable_underbar_completion = 0

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
	let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Define dictionary.
if !has('win32') && !has('win64')
	let g:neocomplcache_dictionary_filetype_lists = {
		\ 'default' : '',
		\ 'vimshell' : $HOME.'/.vimshell_hist',
		\ 'scheme' : $HOME.'/.gosh_completions',
		\ 'c' : $HOME.'/.vim/dict/c.dict',
		\ 'javascript' : $HOME.'/.vim/dict/javascript.dict',
		\ 'vm' : $HOME.'/.vim/dict/vim.dict'
		\ }
else
	let g:neocomplcache_dictionary_filetype_lists = {
		\ 'default' : '',
		\ 'vimshell' : $HOME.'.vimshell_hist',
		\ 'scheme' : $HOME.'.gosh_completions',
		\ 'c' : $HOME.'vimfiles\dict\c.dict',
		\ 'javascript' : $HOME.'vimfiles\dict\javascript.dict',
		\ 'vm' : $HOME.'vimfiles\dict\vim.dict'
		\ }
endif

"インクルードパスの指定
if !has('win32') && !has('win64')
	let g:neocomplcache_include_paths = {
		\ 'c'    : '.,/usr/include'
		\ }
endif

" Plugin key-mappings.
" <C-g>補完をキャンセルする
inoremap <expr><C-g>     neocomplcache#undo_completion()
" <C-l>補完候補の中で共通する部分までを補完する(shell like)
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
" <C-y>で選択中の候補を確定する
inoremap <expr><C-y>  neocomplcache#close_popup()
" <C-e>で補完をキャンセルしてポップアップをキャンセルする
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" AutoComplPop みたいに展開時に1つめを自動選択する
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
"AutocmdFT css setlocal omnifunc=csscomplete#CompleteCSS
"AutocmdFT html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"AutocmdFT javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"AutocmdFT python setlocal omnifunc=pythoncomplete#Complete
"AutocmdFT xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
"let g:neocomplcache_omni_patterns.php =
"\ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
"let g:neocomplcache_omni_patterns.c =
"\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
"let g:neocomplcache_omni_patterns.c =
"\ '[^.[:digit:] *\t]\%(\.\)\%(\h\w*\)\?'
"let g:neocomplcache_omni_patterns.cpp =
"\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_omni_patterns.perl =
\ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

" NeoComplCache }}}

" 補完 neocomplete ==================== {{{2
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
" neocomplecacheを自動的にロックするバッファ名のパターン
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
if !has('win32') && !has('win64')
	let g:neocomplete#sources#dictionary#dictionaries = {
		\ 'default' : '',
		\ 'vimshell' : $HOME.'/.vimshell_hist',
		\ 'scheme' : $HOME.'/.gosh_completions',
		\ 'c' : $HOME.'/.vim/dict/c.dict',
		\ 'javascript' : $HOME.'/.vim/dict/javascript.dict',
		\ 'vim' : $HOME.'/.vim/dict/vim.dict'
		\ }
else
	let g:neocomplete#sources#dictionary#dictionaries = {
		\ 'default' : '',
		\ 'vimshell' : $HOME.'.vimshell_hist',
		\ 'scheme' : $HOME.'.gosh_completions',
		\ 'c' : $HOME.'vimfiles\dict\c.dict',
		\ 'javascript' : $HOME.'vimfiles\dict\javascript.dict',
		\ 'vim' : $HOME.'vimfiles\dict\vim.dict'
		\ }
endif

" -入力による候補番号の表示
"let g:neocomplete#enable_quick_match = 1
"ポップアップメニューで表示される候補の数。初期値は100
let g:neocomplete#max_list = 20

" XXX 重いかもしれない設定
	" camle caseを有効化。大文字を区切りとしたワイルドカードのように振る舞う
	let g:neocomplete#enable_camel_case = 0
	" _(アンダーバー)区切りの補完を有効化
	"let g:neocomplete#enable_underbar_completion = 0

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
	let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

"インクルードパスの指定
"if !has('win32') && !has('win64')
"	let g:neocomplete#include_paths = {
"		\ 'c'    : '.,/usr/include'
"		\ }
"endif

" Plugin key-mappings.
" <C-g>補完をキャンセルする
inoremap <expr><C-g>     neocomplete#undo_completion()
" <C-l>補完候補の中で共通する部分までを補完する(shell like)
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" <C-y>で選択中の候補を確定する
inoremap <expr><C-y>  neocomplete#close_popup()
" <C-e>で補完をキャンセルしてポップアップをキャンセルする
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop みたいに展開時に1つめを自動選択する
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

set completeopt& completeopt=menuone

" Enable omni completion.
AutocmdFT css setlocal omnifunc=csscomplete#CompleteCSS
AutocmdFT html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
AutocmdFT javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" pythonはjediの補完関数を使う
"AutocmdFT python setlocal omnifunc=pythoncomplete#Complete
AutocmdFT xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
"let g:neocomplete#omni_patterns.php =
"\ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
"let g:neocomplete#sources#omni#input_patterns.c =
"\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
"let g:neocomplete#omni_patterns.c =
"\ '[^.[:digit:] *\t]\%(\.\)\%(\h\w*\)\?'
"let g:neocomplete#omni_patterns.cpp =
"\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl =
\ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

" golang用
let g:neocomplete#sources#omni#input_patterns.go =
\ '[^.[:digit:] *\t]\.\w*'

" NeoComplete }}}

" Jedi-vimとNeoCompleteの連携設定 {{{
" オムニ補完時に最初の候補を自動選択しないようにしたい
" http://dackdive.hateblo.jp/entry/2014/08/13/130000
" http://kozo2.hatenablog.com/entry/2014/01/22/050714
AutocmdFT python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
" let g:jedi#auto_vim_configuration = 0

if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif

let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
"let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'
" }}}

" Complete }}}

" 編集関連 Edit ==================== {{{1

" insertモードを抜けるとIMEオフ
set noimdisable
set iminsert=0 imsearch=0
set noimcmdline
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

if has('unix')
  " ========== linuxで日本語入力しやすくする ===========
  " https://sites.google.com/site/fudist/Home/vim-nihongo-ban/vim-japanese/ime-control#instal://sites.google.com/site/fudist/Home/vim-nihongo-ban/vim-japanese/ime-control#install
  set runtimepath+=~/data/im_control.vim-master
  inoremap <silent> <C-j> <C-r>=IMState('FixMode')<CR>
  "PythonによるIBus制御指定(IBus1.5は非対応)
  let IM_CtrlIBusPython = 1
  " <ESC>押下後のIM切替開始までの反応が遅い場合はttimeoutlenを短く設定してみてください(ミリ秒)
  set timeout timeoutlen=3000 ttimeoutlen=100
endif

" yeでそのカーソル位置にある単語をレジスタに追加
nmap ye ;let @"=expand("<cword>")<CR>
" Visualモードでのpで選択範囲をレジスタの内容に置き換える
"vnoremap p <Esc>;let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

" コンマの後に自動的にスペースを挿入
" inoremap , ,<Space>

" XMLの閉タグを自動挿入
" AutocmdFT Filetype xml inoremap <buffer> </ </<C-x><C-o>

"  Insert mode中で単語単位/行単位の削除をアンドゥ可能にする
inoremap <C-u>  <C-g>u<C-u>
inoremap <C-w>  <C-g>u<C-w>

" :Ptでインデントモード切替
command! Pt :set paste!

" インサートモード中に<C-o>でyankした内容をputする
inoremap <C-o> <ESC>:<C-U>YRPaste 'p'<CR>i

" y9 ydで行末までヤンク
nmap y9 y$
nmap yd y$
" y0 ykで行頭までヤンク
nmap y0 y^
nmap yk y^

" カーソルから行頭まで削除
nnoremap <silent> <C-d> d0

" ノーマルモードでEnterを押すと改行挿入
" 大して使ってないし、QFで<CR>しても :.cc してくれないので削除
"nnoremap <CR> o<ESC>

" カーソルから行頭まで削除(インサートモード)
inoremap <silent> <C-k> <Esc>lc^
" カーソルから行末まで削除(インサートモード)
inoremap <silent> <C-d> <Esc>lc$
" カーソルから行頭までヤンク(インサートモード)
inoremap <silent> <C-y>e <Esc>ly0<Insert>
" カーソルから行末までヤンク(インサートモード)
inoremap <silent> <C-y>0 <Esc>ly$<Insert>

" 括弧を自動補完
"もう少しインテリジェントじゃないと厳しいかもね
"inoremap { {}<LEFT>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>
"vnoremap { "zdi^V{<C-R>z}<ESC>
"vnoremap [ "zdi^V[<C-R>z]<ESC>
"vnoremap ( "zdi^V(<C-R>z)<ESC>
"vnoremap " "zdi^V"<C-R>z^V"<ESC>
"vnoremap ' "zdi'<C-R>z'<ESC>

" 保存時に行末の空白を除去する
" Autocmd BufWritePre * :%s/\s\+$//ge
" 保存時にtabをスペースに変換する
" Autocmd BufWritePre * :%s/\t/  /ge

" 日時の自動入力
inoremap <expr> ,df strftime('%Y/%m/%d %H:%M:%S')
inoremap <expr> ,dd strftime('%Y/%m/%d')
inoremap <expr> ,dt strftime('%H:%M:%S')

" コマンドラインで <C-X>dt と押すとYYYYMMDDと展開する
cnoremap <expr> <C-X>dt strftime('%Y%m%d')

" foldは各FiltTypeにお任せる
" set foldmethod=syntax
" 折りたたみは全て展開した状態で開始する
" set foldlevelstart=99
" .vimはmarker
" AutocmdFT vim :set foldmethod=marker

" <leader>j でJSONをformat
" http://wozozo.hatenablog.com/entry/2012/02/08/121504
"map <Leader>j !python -m json.tool<CR>

" quickfixウィンドウではq/ESCで閉じる
"AutocmdFT qf nnoremap <buffer> q :ccl<CR>
"AutocmdFT qf nnoremap <buffer> <ESC> :ccl<CR>

"" cwでquickfixウィンドウの表示をtoggleするようにした
"function! s:toggle_qf_window()
"  for bufnr in range(1,  winnr('$'))
"    if getwinvar(bufnr,  '&buftype') ==# 'quickfix'
"      execute 'ccl'
"      return
"    endif
"  endfor
"  execute 'botright cw'
"endfunction
"nnoremap <silent> cw :call <SID>toggle_qf_window()<CR>

" backspace設定
" オートインデントのタブや空白を削除、改行を削除、
" 挿入区間の始めで削除
" (insertを抜けて、再度insertした時に、以前insertした
"  文字を消せるようにする)
set backspace=indent,eol,start

" <C-a>, <C-x>で行う加減算で、8進数は考慮しない
set nrformats-=octal

" ビジュアルモードで指定して>, < を行った後、ビジュアルモードを継続する
" インデントの微調整に便利
vnoremap < <gv
vnoremap > >gv

" インサートモードを抜けるときにnopasteをセットする
Autocmd InsertLeave *set nopaste

" editing }}}

" エンコーディング関連 Encoding ==================== {{{1

" 内部エンコーディングをUTF-8にする
set encoding=utf-8

"開くファイルの文字コードを自動認識する
"set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis

" 改行コード認識
if has('win32') || has('win64')
	set ffs=dos,unix,mac  " 改行文字を自動認識
else
	set ffs=unix,dos,mac  " 改行文字を自動認識
endif

" cvsの時は文字コードをeuc-jpに設定
"AutocmdFT cvs :set fileencoding=euc-jp
" 以下のファイルの時は文字コードをutf-8に設定
"AutocmdFT svn :set fileencoding=utf-8
AutocmdFT js :set fileencoding=utf-8
AutocmdFT coffee :set fileencoding=utf-8
AutocmdFT css :set fileencoding=utf-8
AutocmdFT html :set fileencoding=utf-8
"AutocmdFT xml :set fileencoding=utf-8
"AutocmdFT java :set fileencoding=utf-8
"AutocmdFT scala :set fileencoding=utf-8
AutocmdFT go :set fileencoding=utf-8

" ワイルドカードで表示するときに優先度を低くする拡張子
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" 指定文字コードで強制的にファイルを開く
command! Cp932 edit ++enc=cp932
command! Eucjp edit ++enc=euc-jp
command! Iso2022jp edit ++enc=iso-2022-jp
command! Utf8 edit ++enc=utf-8
command! Jis Iso2022jp
command! Sjis Cp932
" 指定改行コードで強制的にファイルを開く
command! Unix edit ++ff=unix
command! Dos edit ++ff=dos

" }}}

" インデント Indent ==================== {{{1

set autoindent   " 自動でインデント
"set paste        " ペースト時にautoindentを無効に(onにするとautocomplpop.vimが動かない)
set smartindent  " 新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする。
set cindent      " Cプログラムファイルの自動インデントを始める

" softtabstopはTabキー押し下げ時の挿入される空白の量，0の場合はtabstopと同じ，BSにも影響する
"set tabstop=2 shiftwidth=2 softtabstop=0

"ファイルタイプの検索を有効にする
filetype plugin on
"そのファイルタイプにあわせたインデントを利用する
filetype indent on
" これらのftではインデントを無効に
"AutocmdFT php filetype indent off

AutocmdFT apache     setlocal sw=4 sts=4 ts=4
AutocmdFT aspvbs     setlocal sw=4 sts=4 ts=4
AutocmdFT c          setlocal sw=4 sts=4 ts=4
AutocmdFT cpp        setlocal sw=4 sts=4 ts=4
AutocmdFT cs         setlocal sw=4 sts=4 ts=4
AutocmdFT css        setlocal sw=2 sts=2 ts=2
AutocmdFT diff       setlocal sw=4 sts=4 ts=4
AutocmdFT eruby      setlocal sw=4 sts=4 ts=4
AutocmdFT go         setlocal sw=4 sts=4 ts=4
AutocmdFT html       setlocal sw=2 sts=2 ts=2
AutocmdFT java       setlocal sw=4 sts=4 ts=4
AutocmdFT javascript setlocal sw=4 sts=4 ts=4 expandtab
AutocmdFT coffee     setlocal sw=4 sts=4 ts=4 expandtab
AutocmdFT perl       setlocal sw=4 sts=4 ts=4
AutocmdFT php        setlocal sw=4 sts=4 ts=4
AutocmdFT python     setlocal sw=4 sts=4 ts=4 noexpandtab
AutocmdFT ruby       setlocal sw=2 sts=2 ts=2
AutocmdFT haml       setlocal sw=2 sts=2 ts=2
AutocmdFT sh         setlocal sw=4 sts=4 ts=4
AutocmdFT sql        setlocal sw=4 sts=4 ts=4
AutocmdFT vb         setlocal sw=4 sts=4 ts=4
AutocmdFT vim        setlocal sw=4 sts=4 ts=4 expandtab
AutocmdFT wsh        setlocal sw=4 sts=4 ts=4
AutocmdFT xhtml      setlocal sw=4 sts=4 ts=4
AutocmdFT xml        setlocal sw=4 sts=4 ts=4
AutocmdFT yaml       setlocal sw=2 sts=2 ts=2
AutocmdFT zsh        setlocal sw=4 sts=4 ts=4
AutocmdFT scala      setlocal sw=2 sts=2 ts=2

" indent }}}

" 移動設定 Move ==================== {{{1

" カーソルを表示行で移動する。論理行移動は<C-n>,<C-p>
"nnoremap h <Left>
nnoremap j gj
vnoremap j gj
nnoremap gj j
vnoremap gj j

nnoremap k gk
vnoremap k gk
nnoremap gk k
vnoremap gk k

"nnoremap l <Right>
"nnoremap <Down> gj
"nnoremap <Up>   gk

" 0, 9で行頭、行末へ
"nmap 1 0
"nmap 0 ^
"nmap 9 $

" insert mode での移動
inoremap  <C-9> <END>
inoremap  <C-0> <HOME>

" インサートモードでもhjklで移動（Ctrl押すけどね）
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-h> <Left>
"inoremap <C-l> <Right>

"<space>j, <space>kで画面送り
"noremap <Space>j <C-f>
"noremap <Space>k <C-b>

" spacex2で次のbufferへ。back-spacex2で前のbufferへ
"nmap <Space><Space> ;MBEbn<CR>
"nmap <BS><BS> ;MBEbp<CR>

" F2で前のバッファ
map <F2> <ESC>;bp<CR>
" F3で次のバッファ
map <F3> <ESC>;bn<CR>
" F4でバッファを削除する
"map <F4> <ESC>:bnext \| bdelete #<CR>
command! Bw :bnext \| bdelete #

"フレームサイズを怠惰に変更する
"テンキーの+-で今のフレームサイズを調整する
map <kPlus> <C-W>+
map <kMinus> <C-W>-

" 前回終了したカーソル行に移動
Autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

" 最後に編集された位置に移動
nnoremap gb '[
nnoremap gp ']

" 対応する括弧に移動
nnoremap ( %
nnoremap ) %

" 最後に変更されたテキストを選択する
nnoremap gc  `[v`]
vnoremap gc <C-u>normal gc<Enter>
onoremap gc <C-u>normal gc<Enter>

" カーソル位置の単語をyankする
nnoremap vy vawy

" 矩形選択で自由に移動する
set virtualedit+=block

"ビジュアルモード時vで行末まで選択
vnoremap v $h

" CTRL-hjklでウィンドウ移動
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" git-diff-aware version of gf commands.
" http://labs.timedia.co.jp/2011/04/git-diff-aware-gf-commands-for-vim.html
"nnoremap <expr> gf  <SID>do_git_diff_aware_gf('gf')
"nnoremap <expr> gF  <SID>do_git_diff_aware_gf('gF')
"nnoremap <expr> <C-w>f  <SID>do_git_diff_aware_gf('<C-w>f')
"nnoremap <expr> <C-w><C-f>  <SID>do_git_diff_aware_gf('<C-w><C-f>')
"nnoremap <expr> <C-w>F  <SID>do_git_diff_aware_gf('<C-w>F')
"nnoremap <expr> <C-w>gf  <SID>do_git_diff_aware_gf('<C-w>gf')
"nnoremap <expr> <C-w>gF  <SID>do_git_diff_aware_gf('<C-w>gF')

function! s:do_git_diff_aware_gf(command)
  let target_path = expand('<cfile>')
  if target_path =~# '^[ab]/'  " with a peculiar prefix of git-diff(1)?
    if filereadable(target_path) || isdirectory(target_path)
      return a:command
    else
      " BUGS: Side effect - Cursor position is changed.
      let [_, c] = searchpos('\f\+', 'cenW')
      return c . '|' . 'v' . (len(target_path) - 2 - 1) . 'h' . a:command
    endif
  else
    return a:command
  endif
endfunction

" }}}

" プラグインごとの設定 Plugins ==================== {{{1

"{{{ restart.vim

"Restart時にg:restartedを1にしておく
command! MyRestart Restart --cmd "let g:restarted = 1"
abbreviate Rs MyRestart

" 既存の環境変数にパスを足し込むなどの処理は、Restartする度に追加されてしまうので、
" Restart時に変数を定義して、その変数があれば重複で処理しないようにする
" http://d.hatena.ne.jp/osyo-manga/20130831/1377941465
"
" if exists("g:restarted")
"   let $PATH = $PATH . ";hogehoge"
" endif
"
let g:restart_sessionoptions
    \ = 'blank,buffers,curdir,folds,help,localoptions,tabpages'

"}}}

"------------------------------------
" taglist.Vim {{{
"------------------------------------
" 関数一覧
set tags=tags
"set tags+=~/.tags
"let Tlist_Ctags_Cmd = '/Applications/MacVim.app/Contents/MacOS/ctags' " ctagsのパス
let Tlist_Show_One_File = 1               " 現在編集中のソースのタグしか表示しない
let Tlist_Exit_OnlyWindow = 1             " taglistのウィンドーが最後のウィンドーならばVimを閉じる
" let Tlist_Use_Right_Window = 1            " 右側でtaglistのウィンドーを表示
let Tlist_Enable_Fold_Column = 1          " 折りたたみ
"let Tlist_Auto_Open = 1                   " 自動表示
let Tlist_Auto_Update = 1
let Tlist_WinWidth = 30
"map <silent> <leader>tl :Tlist<CR>        " taglistを開くショットカットキー
nmap <F7> :CMiniBufExplorer<CR>:TrinityToggleTagList<CR>:TMiniBufExplorer<CR>
nmap <Leader>tl :CMiniBufExplorer<CR>:TrinityToggleTagList<CR>:TMiniBufExplorer<CR>

" }}}

"------------------------------------
" unite.vim {{{
"------------------------------------
" The prefix key.
nnoremap    [unite]   <Nop>
nmap    <Space>u [unite]

nnoremap [unite]u  :<C-u>Unite -no-split<Space>

" 全部乗せ
nnoremap <silent> [unite]a  :<C-u>UniteWithCurrentDir -no-split -buffer-name=files buffer file_mru bookmark file<CR>
" ファイル一覧
nnoremap <silent> [unite]f  :<C-u>Unite -no-split -buffer-name=files file<CR>
" バッファ一覧
nnoremap <silent> [unite]b  :<C-u>Unite -no-split buffer_tab<CR>
" 常用セット
nnoremap <silent> [unite]u  :<C-u>Unite -no-split buffer file_mru<CR>
" 最近使用したファイル一覧
nnoremap <silent> [unite]m  :<C-u>Unite -no-split file_mru<CR>
" 現在のバッファのカレントディレクトリからファイル一覧
nnoremap <silent> [unite]d  :<C-u>UniteWithBufferDir -no-split file<CR>
" snippet一覧
nnoremap <silent> [unite]s  :<C-u>Unite snippet<CR>
" ヤンク履歴を有効にする
let g:unite_source_history_yank_enable = 1
nnoremap <silent> [unite]y  :<C-u>Unite -silent history/yank<CR>
" Line
nnoremap <silent> [unite]/        :<C-u>Unite -buffer-name=search line -start-insert -no-quit<CR>

" unite plugin setting {{{
" unite-outline
nnoremap <silent> [unite]o  :<C-u>Unite -silent outline -vertical -winwidth=40 -no-start-insert -buffer-name=outline<CR>
" }}}

" unite grep に pt(The Platinum Searcher)を使う
nnoremap <silent> [unite]g :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
"if executable('pt')
"  let g:unite_source_grep_command = 'pt'
"  let g:unite_source_grep_default_ops = '--nogroup --nocolor'
"  let g:unite_source_grep_recursive_opt = ''
"endif

" from basyura/unite-rails
" nnoremap <silent> [unite]rm  :<C-u>Unite -no-split rails/model<CR>
" nnoremap <silent> [unite]rc  :<C-u>Unite -no-split rails/controller<CR>
" nnoremap <silent> [unite]rv  :<C-u>Unite -no-split rails/view<CR>
" nnoremap <silent> [unite]rl  :<C-u>Unite -no-split rails/lib<CR>
" nnoremap <silent> [unite]rj  :<C-u>Unite -no-split rails/javascript<CR>
" nnoremap <silent> [unite]rs  :<C-u>Unite -no-split rails/spec<CR>

" post-grepで使えそうなものがあれば使う
if executable('ag')
  " Use ag in unite grep source.
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts =
  \ '--line-numbers --nocolor --nogroup --hidden --ignore ' .
  \  '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
  let g:unite_source_grep_recursive_opt = ''
elseif executable('pt')
  " Use pt in unite grep source.
  " https://github.com/monochromegane/the_platinum_searcher
  let g:unite_source_grep_command = 'pt'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('ack-grep')
  " Use ack in unite grep source.
  let g:unite_source_grep_command = 'ack-grep'
  let g:unite_source_grep_default_opts =
  \ '--no-heading --no-color -k -H'
  let g:unite_source_grep_recursive_opt = ''
endif


AutocmdFT unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
  " Overwrite settings.

  " ESCキーを2回押すと終了する
  nmap <buffer> <ESC>      <Plug>(unite_exit)
  nmap <buffer> <ESC><ESC> <Plug>(unite_exit)
  imap <buffer> jj      <Plug>(unite_insert_leave)
  nnoremap <silent><buffer> <C-k> :<C-u>call unite#mappings#do_action('preview')<CR>
  imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)
  " Start insert.
  let g:unite_enable_start_insert = 1

  " ウィンドウを分割して開く
  nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('split')
  inoremap <silent> <buffer> <expr> <C-l> unite#do_action('split')

  " ウィンドウを縦に分割して開く
  nnoremap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')
  inoremap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')
endfunction"}}}

let g:unite_source_file_mru_limit = 200

" unite-plugins
cnoremap UH Unite help<Enter>
cnoremap UO Unite outline<Enter>

" }}}

"------------------------------------
" NERD_commenter.vim {{{
"------------------------------------
" コメントの間にスペースを空ける
"let NERDSpaceDelims = 1
"<Leader>xでコメントをトグル(NERD_commenter.vim)
"map <Leader>x, c<space>
"未対応ファイルタイプのエラーメッセージを表示しない
"let NERDShutUp=1
"}}}

"------------------------------------
" EasyMotion {{{
"------------------------------------
" ホームポジションに近いキーを使う
"let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
" 「'」 + 何かにマッピング
"let g:EasyMotion_leader_key="'"
" 1 ストローク選択を優先する
"let g:EasyMotion_grouping=1
" カラー設定変更
"hi EasyMotionTarget ctermbg=red ctermfg=white
"hi EasyMotionShade  ctermbg=blue ctermfg=white
"}}}

"------------------------------------
" DumbBuf.vim {{{
"------------------------------------
"<Leader>b<Space>でBufferList
"let dumbbuf_hotkey = '<Leader>b<Space>'
"let dumbbuf_mappings = {
"    \ 'n': {
"        \'<Esc>': { 'opt': '<silent>', 'mapto': ':<C-u>close<CR>' }
"    \}
"\}
"let dumbbuf_single_key  = 1
"let dumbbuf_updatetime  = 1    " &updatetimeの最小値
"let dumbbuf_wrap_cursor = 0
"let dumbbuf_remove_marked_when_close = 1
"}}}

"------------------------------------
" neosnippet.vim {{{
"------------------------------------
" スニペットを入力して以下のキーで展開
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
xmap <C-l>     <Plug>(neosnippet_start_unite_snippet_target)

" 複数キーワードあるものはTABで移っていける
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)"
 \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)"
 \: "\<TAB>"

" Enable snipMate compatibility feature
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/neosnippets, ~/dotfiles/snippet'

" }}}

"------------------------------------
" vim-indent-guides {{{
"------------------------------------
nnoremap <silent> <Space>id :<C-u>IndentGuidesToggle<Enter>
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 4
let g:indent_guides_guide_size = 1
Autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red ctermbg=3
Autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
if 'dark' == &background
    hi IndentGuidesOdd  ctermbg=black
    hi IndentGuidesEven ctermbg=darkgrey
else
    hi IndentGuidesOdd  ctermbg=white
    hi IndentGuidesEven ctermbg=lightgrey
endif

" }}}

"------------------------------------
" quickrun.vim {{{
"------------------------------------
" 実行にvimprocを使用する
" updatetime が一時的に書き換えられるので注意
let g:quickrun_config = {
	\ "_" : {
	\		"runner" : "vimproc",
	\		"runner/vimproc/updatetime" : 40,
	\		"outputter/buffer/split" : ":botright 10",
	\		"outputter/error/success" : "buffer",
	\		"outputter/error/error" : "quickfix",
	\	},
    \ "go" : {
    \       "command" : "run",
    \       "exec" : ["go %c %s %a"],
    \   },
	\}

" <C-c> で実行を強制終了させる
" quickrun.vim が実行していない場合には <C-c> を呼び出す
nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>"

" }}}

"------------------------------------
" vim-indent-guides {{{
"------------------------------------
" vim起動時にvim-indent-guidesを有効にする
"let g:indent_guides_enable_on_vim_startup = 1
" 色付けは自動
"let g:indent_guides_auto_colors = 1
" ガイドをスタートするインデントの量
"let g:indent_guides_start_level = 2

"}}}

"------------------------------------
" Pydiction {{{
"------------------------------------
if has('win32') || has('win64')
	let g:pydiction_location = '~/vimfiles/bundle/pydiction/complete-dict'
else
	let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
endif
"}}}

"------------------------------------
" Syntastic {{{
"------------------------------------
" ファイルを開いた時はチェックしない
let g:syntastic_check_on_open = 0
" 保存時はチェック
let g:syntastic_check_on_save = 1
" sytastic_mode_map
let g:syntastic_mode_map = { 'mode' : 'passive',
			\ 'active_filetypes' : ['javascript', 'go'],
			\ 'passive_filetypes' : []
			\}
" エラー行をsignで表示する
let g:syntastic_enable_signs = 1
" 可能ならhighligt表示する
let g:syntastic_enable_highlighting = 1
" エラーがあったら自動的にロケーションリスト開いたり閉じたりする
let g:syntastic_auto_loc_list=1
" エラー時のロケーションリストの高さ
let g:syntastic_loc_list_height = 6

" C言語はgccで構文解析
" let g:syntastic_c_checkers = ['gcc']
" Javascriptはjshintを使う
let g:syntastic_javascript_checkers = ['jshint']

" :Synで:SyntasticCheckコマンドを実行
command! Syn SyntasticCheck
" :Syntで:SyntasticToggleModeコマンドを実行
command! Synt SyntasticToggleMode

"}}}

"------------------------------------
" Align {{{
"------------------------------------
" 日本語用設定
let g:Align_xstrlen = 3
" "DrChip"メニューを表示しない
let g:DrChipTopLvlMenu = ''

"}}}

"------------------------------------
" vim-operator-search {{{
"------------------------------------
nmap <Space>s <Plug>(operator-search)
" 関数内の検索を行う
" require - https://github.com/kana/vim-textobj-function
nmap <Space>/ <Plug>(operator-search)if

" }}}

" gist.vim {{{
let g:gist_show_privates = 1
let g:gist_post_private = 1
" }}}

" tagbar {{{
nnoremap <F8> :TagbarToggle<CR>
" }}}

" vim-anzu {{{
"nnoremap n <Plug>(anzu-n-with-echo)
"nnoremap N <Plug>(anzu-N-with-echo)
"nnoremap * <Plug>(anzu-star-with-echo)
"nnoremap # <Plug>(anzu-sharp-with-echo)

"nnoremap <Esc><Esc> <Plug>(anzu-clear-search-status)

"set statusline=%{anzu#search_status()}

"}}}

" {{{ vim-quickhl
nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)
xmap <Space>M <Plug>(quickhl-manual-reset)

nmap <Space>j <Plug>(quickhl-cword-toggle)
nmap <Space>] <Plug>(quickhl-tag-toggle)
map H <Plug>(operator-quickhl-manual-this-motion)
" }}}

" {{{  restart-vim
" :Restart したときに復元する内容
let g:restart_sessionoptions
    \ = 'blank,buffers,curdir,folds,help,localoptions,tabpages'
" }}}

" {{{  vim-coffee-script
" 保存時に自動でコンパイル
Autocmd BufWritePost *.coffee silent make!
" }}}

" {{{ VimFiler
" VimFilerを規定のファイラにする
let g:vimfiler_as_default_explorer=1
nnoremap <Leader>e :VimFilerExplorer<CR>

" Like Textmate icons.
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'
" }}}

" {{{ TaskList
nmap <Leader>k <Plug>TaskList
" }}}

" }}}

" QFixHowm ==================== {{{1
if has('win32') || has('win64')

	" メモの保存先
	let howm_dir              = 'W:/howm'
	let howm_filename         = '%Y/%m/%Y-%m-%d-%H%M%S.txt'

	" 休日定義ファイル
	let QFixHowm_HolidayFile  = '~/vimfiles/bundle/qfixhowm/misc/holiday/Sche-Hd-0000-00-000000.utf8'

	let mygrepprg             = 'agrep.vim'
	" let mygrepprg             = 'pt'
	let MyGrep_cygwin17       = 1

	" textwidthの再設定
	au Filetype qfix_memo setlocal textwidth=0

elseif has('unix')

	" メモの保存先
	let howm_dir              = '~/data/howm'
	let howm_filename         = '%Y/%m/%Y-%m-%d-%H%M%S.txt'

	let QFixHowm_OpenURIcmd = "call system('chromium-browser %s &')"
endif

" 休日定義ファイル
let QFixHowm_HolidayFile  = '~/vimfiles/bundle/qfixhowm/misc/holiday/Sche-Hd-0000-00-000000.utf8'

" キーマップリーダー
let QFixHowm_Key = 'g'

" 環境にかかわらず、utf-8, CrLfにする
let howm_fileencoding     = 'utf-8'
let howm_fileformat       = 'dos'

" QFixHowmのファイルタイプ
let QFixHowm_FileType     = 'qfix_memo'

" 複数のエンコーディングでGrepする
let MyGrep_MultiEncoding  = 1
let MyGrep_MultiEncodingList = ['utf-8', 'cp932']

" }}}

" 検索設定 Search ==================== {{{1

set wrapscan   " 最後まで検索したら先頭へ戻る
set ignorecase " 大文字小文字無視
set smartcase  " 検索文字列に大文字が含まれている場合は区別して検索する
set incsearch  " インクリメンタルサーチ
set hlsearch   " 検索文字をハイライト
"Escの2回押しでハイライト消去
nmap <ESC><ESC> ;nohlsearch<CR><ESC>

"選択した文字列を検索
vnoremap <silent> // y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
"選択した文字列を置換
vnoremap /r "xy;%s/<C-R>=escape(@x, '\\/.*$^~[]')<CR>//gc<Left><Left><Left>

"s*置換後文字列/g<Cr>でカーソル下のキーワードを置換
nnoremap <expr> s* ':%substitute/\<' . expand('<cword>') . '\>/'

" Ctrl-iでヘルプ
"nnoremap <C-i>  :<C-u>help<Space>
" カーソル下のキーワードをヘルプでひく
"nnoremap <C-i><C-i> :<C-u>help<Space><C-r><C-w><Enter>

" :Gb <args> でGrepBufferする
"command! -nargs=1 Gb :GrepBuffer <args>
" カーソル下の単語をGrepBufferする
"nnoremap <C-g><C-b> :<C-u>GrepBuffer<Space><C-r><C-w><Enter>

" :Gr <args>でカレントディレクトリ以下を再帰的にgrepする
"command! -nargs=1 Gr :Rgrep <args> *<Enter><CR>
" カーソル下の単語をgrepする
"nnoremap <silent> <C-g><C-r> :<C-u>Rgrep<Space><C-r><C-w> *<Enter><CR>

"let Grep_Skip_Dirs = '.svn .git'
"let Grep_Skip_Files = '*.bak *~'

" }}}

" ステータスライン StatusLine ==================== {{{1
" airlineの設定も含む

set laststatus=2 " 常にステータスラインを表示

"カーソルが何行目の何列目に置かれているかを表示する
set ruler

if has('win32') || has('win64')
  " Windowsの場合
  " フォントパッチが動かないので
  " Inconsolata+メイリオのフォントのまま
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_linecolumn_prefix = '␊ '
  let g:airline_linecolumn_prefix = '␤ '
  let g:airline_linecolumn_prefix = '¶ '
  "let g:airline#extensions#branch#symbol = '⎇ '
  "let g:airline#extensions#paste#symbol = 'ρ'
  "let g:airline#extensions#paste#symbol = 'Þ'
  "let g:airline#extensions#paste#symbol = '∥'
  "let g:airline#extensions#whitespace#symbol = 'Ξ'
else
  " Linuxの場合、vim-powerlineでパッチを当てたフォントを使う
  let g:airline_powerline_fonts=1
  let g:airline_symbols = {}
  let g:airline_left_sep = '⮀'
  let g:airline_left_alt_sep = '⮁'
  let g:airline_right_sep = '⮂'
  let g:airline_right_alt_sep = '⮃'
  let g:airline_symbols.branch = '⭠'
  let g:airline_symbols.readonly = '⭤'
  let g:airline_symbols.linenr = '⭡'
endif

" airline extension whitespace
  " enable/disable detection of whitespace errors.
  " スペースの取り扱いエラー検知ON
  let g:airline#extensions#whitespace#enabled = 1

  " customize the whitespace symbol.
  " エラー検知時に表示するシンボル
  let g:airline#extensions#whitespace#symbol = '!'

  " configure which whitespace checks to enable.
  " チェックする内容
  " indent : tabとスペースの混合indent
  " trailing : 行末のスペース
  " let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing' ]
  let g:airline#extensions#whitespace#checks = [ 'trailing' ]

  " configure whether a message should be displayed.
  " エラー検知時のメッセージ表示ON
  let g:airline#extensions#whitespace#show_message = 1

  " configure the formatting of the warning messages.
  " エラー検知時に表示するメッセージ(%sは問題の起きている行)
  let g:airline#extensions#whitespace#trailing_format = 'trailing[%s]'
  "let g:airline#extensions#whitespace#mixed_indent_format = 'mixed-indent[%s]'

" vim-powerlineでフォントにパッチを当てないなら以下をコメントアウト
"let g:Powerline_symbols = 'fancy'

"自動的に QuickFix リストを表示する
Autocmd QuickfixCmdPost make,grep,grepadd,vimgrep,vimgrepadd cwin
Autocmd QuickfixCmdPost lmake,lgrep,lgrepadd,lvimgrep,lvimgrepadd lwin

" }}}

" タグ関連 Tags ==================== {{{1
" set tags
if has("autochdir")
  " 編集しているファイルのディレクトリに自動で移動
  set autochdir
  set tags=tags;
else
  set tags=./tags,./../tags,./*/tags,./../../tags,./../../../tags,./../../../../tags,./../../../../../tags
endif

" }}}

" 独自コマンド定義 Command {{{1
command! OpenBrowserCurrent execute "OpenBrowser" expand("%:p")

function! OpenModifiableQF()
    cw
    set modifiable
    set nowrap
endfunction

Autocmd QuickfixCmdPost vimgrep call OpenModifiableQF()
" }}}

" その他 Misc ==================== {{{1

" ;でコマンド入力( ;と:を入れ替え)
noremap ; :
noremap : ;

" }}}

" memo {{{
" insert mode でjjでesc
"inoremap jj <Esc>
" http://ac-mopp.blogspot.jp/2014/02/vimrc.html
"-----------------------------------------------------------------------------------"
" Mappings                                                                          |
"-----------------------------------------------------------------------------------"
" コマンド        | ノーマル | 挿入 | コマンドライン | ビジュアル | 選択 | 演算待ち |
" map  / noremap  |    @     |  -   |       -        |     @      |  @   |    @     |
" nmap / nnoremap |    @     |  -   |       -        |     -      |  -   |    -     |
" vmap / vnoremap |    -     |  -   |       -        |     @      |  @   |    -     |
" omap / onoremap |    -     |  -   |       -        |     -      |  -   |    @     |
" xmap / xnoremap |    -     |  -   |       -        |     @      |  -   |    -     |
" smap / snoremap |    -     |  -   |       -        |     -      |  @   |    -     |
" map! / noremap! |    -     |  @   |       @        |     -      |  -   |    -     |
" imap / inoremap |    -     |  @   |       -        |     -      |  -   |    -     |
" cmap / cnoremap |    -     |  -   |       @        |     -      |  -   |    -     |
"-----------------------------------------------------------------------------------"
"}}}

" Finally {{{1 ====================
NeoBundleCheck
"}}}

"source ~/dotfiles/.vimrc.test

" vim: expandtab softtabstop=4 shiftwidth=4 foldmethod=marker
