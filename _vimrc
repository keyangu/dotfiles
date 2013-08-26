"neobundle.vimで管理しているpluginを読み込む
source $HOME/dotfiles/.vimrc.neobundle

"基本設定
source $HOME/dotfiles/.vimrc.basic
"StatusLine設定
source $HOME/dotfiles/.vimrc.statusline
"インデント設定
source $HOME/dotfiles/.vimrc.indent
"表示関連
source $HOME/dotfiles/.vimrc.apperance
"補完関連
source $HOME/dotfiles/.vimrc.completion


"検索時に大文字を含んでいたら大/小を区別
set smartcase


"挿入モードを解除したときにIME(日本語入力)を自動でOFF
:inoremap <ESC> <ESC>:set iminsert=0 <CR>

"Grep.vimを使うための設定
"let Grep_Path = 'D:/cygwin/bin/grep.exe'
"let Fgrep_Path = 'D:/cygwin/bin/grep.exe -F'
"let Egrep_Path = 'D:/cygwin/bin/grep.exe -E'
"let Grep_Find_Path = 'D:/cygwin/bin/find.exe'
"let Grep_Xargs_Path = 'D:/cygwin/bin/xargs.exe'
"let Grep_Shell_Quote_Char = ""

" inoファイルを開いた時にC構文で解釈する
au BufRead,BufNewFile *.ino set filetype=c

" Project.vim
" grepにvimgrepを使用する
let g:proj_flags = "imstv"

" TortoiseSVNをコマンドから実行 \td, \tl, \tr
" Save the current buffer and execute the Tortoise SVN interface's diff program
" map <unique> <silent> <leader>td :w<CR>:silent !"C:\Progra~1\TortoiseSVN\bin\TortoiseProc.exe /command:diff  /path:"%:p" /closeonend:0"<CR>
" Save the current buffer and execute the Tortoise SVN interface's log
" map <unique> <silent> <leader>tl :w<CR>:silent !"C:\Progra~1\TortoiseSVN\bin\TortoiseProc.exe /command:log   /path:"%:p" /closeonend:0"<CR>
" Save the current buffer and execute the Tortoise SVN interface's revision graph
" map <unique> <silent> <leader>tr :w<CR>:silent !"C:\Progra~1\TortoiseSVN\bin\TortoiseProc.exe /command:revisiongraph  epath:"%:p" /closeonend:0"<CR>
" Save the current buffer and execute the Tortoise SVN interface's blame program
" map <unique> <leader>tb :call TortoiseBlame()<CR>
"fu! TortoiseBlame()
"  " Save the buffer
"  silent execute(':w')
"  " Now run Tortoise to get the blame dialog to display
"  let filename = expand("%:p")
"  let linenum  = line(".")
"  silent execute('!C:\Progra~1\TortoiseSVN\bin\TortoiseProc.exe /command:blame /path:"' . filename . '" /line:' . linenum . ' /closeonend:0')
"endfunc

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



