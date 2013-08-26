
source $HOME/dotfiles/.vimrc.neobundle

"バックアップファイルディレクトリ
set backupdir=$HOME/vimbackup

"ファイル保存ダイアログの初期ディレクトリをバッファファイルに
set browsedir=buffer
"スワップファイル用のディレクトリ
set directory=$HOME/vimbackup
"行番号表示
set number
"シフト移動幅
set shiftwidth=4
"検索時に大文字を含んでいたら大/小を区別
set smartcase
"タブストップ
set tabstop=4

"ビープ音を消す(画面フラッシュも消えるはずだが、消えない)
set visualbell t_vb= 

"挿入モードを解除したときにIME(日本語入力)を自動でOFF
:inoremap <ESC> <ESC>:set iminsert=0 <CR>
"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
"Rubyファイルならタブ幅2に
autocmd FileType ruby :set shiftwidth=2
autocmd FileType ruby :set tabstop=2
"HTMLファイルならタブ幅2に
autocmd FileType HTML :set shiftwidth=2
autocmd FileType HTML :set tabstop=2



"補完オプション
".カレント, w:別ウィンドウ , b:別バッファ , u:読み込んでないバッファリストのバッファ , i:インクルードされるファイル , d:インクルードファイルの定義 , t:タグ, k{directory}:指定ディレクトリ
"autocmd FileType * let g:AutoComplPop_CompleteOption = '.,w,b,u,i'
"autocmd FileType c let g:AutoComplPop_CompleteOption = '.,w,b,u,i,d'
"autocmd FileType ruby let g:AutoComplPop_CompleteOption = '.,w,b,u,t,i,k~/vimfiles/dict/ruby.dict'
"let g:AutoComplPop_IgnoreCaseOption = 1

"補完中にEnterを押すとポップアップを消して改行
"なぜか<C-Y>でも補完されるようになってしまったので、C-Xに変更
"inoremap <expr> <CR> pumvisible() ? "\<C-Y>\<CR>" : "\<CR>"
"inoremap <expr> <CR> pumvisible() ? "\<C-X>\<CR>" : "\<CR>"

"<TAB>で補完
" {{{ Autocompletion using the TAB key
" This function determines, wether we are on the start of the line text (then tab indents) or
" if we want to try autocompletion
"function! InsertTabWrapper()
"    let col = col('.') - 1
"    if !col || getline('.')[col - 1] !~ '\k'
"            return "\<TAB>"
"    else
"            if pumvisible()
"                    return "\<C-N>"
"            else
"                    return "\<C-N>\<C-P>"
"            end
"    endif
"endfunction
" Remap the tab key to select action with InsertTabWrapper
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>
" }}} Autocompletion using the TAB key



filetype indent on
" Alignを日本語環境で使用するための設定
" :let g:Align_xstrlen = 3 完璧に機能してないので、メモだけ
" DrChipメニューを非表示にする
:let g:DrChipTopLvlMenu = ""

" ディレクトリ内から親ディレクトリに向かってtagsファイルを再帰的に検索
" set tags+=tags;
" カレントディレクトリから下を再帰的に検索
" set tags+=./**/tags

"Grep.vimを使うための設定
let Grep_Path = 'D:/cygwin/bin/grep.exe'
let Fgrep_Path = 'D:/cygwin/bin/grep.exe -F'
let Egrep_Path = 'D:/cygwin/bin/grep.exe -E'
let Grep_Find_Path = 'D:/cygwin/bin/find.exe'
let Grep_Xargs_Path = 'D:/cygwin/bin/xargs.exe'
let Grep_Shell_Quote_Char = ""

" 無名レジスタに入るデータを、*レジスタにも入れる
set clipboard+=unnamed

" 環境変数work, desktopを追加
let $WORK = "D:/workspace"
let $DESKTOP = "C:/Users/yanagi.BUG_HQ.000/desktop"

" ここにリストされているファイルを開いたときに自動で
" カレントディレクトリをファイルのある場所に変更する
" gnu globalを使うときに邪魔になるので、試しにOFFにしてみる
"au   BufEnter *.c,*.h,*.rb,*.py,*.rhtml,*.html,*.erb,*.js   execute ":lcd " . expand("%:p:h") 

" inoファイルを開いた時にC構文で解釈する
au BufRead,BufNewFile *.ino set filetype=c

" Project.vim
" grepにvimgrepを使用する
let g:proj_flags = "imstv"

" TortoiseSVNをコマンドから実行 \td, \tl, \tr
" Save the current buffer and execute the Tortoise SVN interface's diff program
map <unique> <silent> <leader>td :w<CR>:silent !"C:\Progra~1\TortoiseSVN\bin\TortoiseProc.exe /command:diff  /path:"%:p" /closeonend:0"<CR>
" Save the current buffer and execute the Tortoise SVN interface's log
map <unique> <silent> <leader>tl :w<CR>:silent !"C:\Progra~1\TortoiseSVN\bin\TortoiseProc.exe /command:log   /path:"%:p" /closeonend:0"<CR>
" Save the current buffer and execute the Tortoise SVN interface's revision graph
map <unique> <silent> <leader>tr :w<CR>:silent !"C:\Progra~1\TortoiseSVN\bin\TortoiseProc.exe /command:revisiongraph  epath:"%:p" /closeonend:0"<CR>
" Save the current buffer and execute the Tortoise SVN interface's blame program
map <unique> <leader>tb :call TortoiseBlame()<CR>
fu! TortoiseBlame()
  " Save the buffer
  silent execute(':w')
  " Now run Tortoise to get the blame dialog to display
  let filename = expand("%:p")
  let linenum  = line(".")
  silent execute('!C:\Progra~1\TortoiseSVN\bin\TortoiseProc.exe /command:blame /path:"' . filename . '" /line:' . linenum . ' /closeonend:0')
endfunc

"開くファイルの改行コードを自動認識する
set fileformats=unix,dos,mac
"開くファイルの文字コードを自動認識する
set encoding=utf-8
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8

"Gtags(global)を使用するためのショートカット
map <C-g> :Gtags
map <C-i> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>

colorscheme slate


