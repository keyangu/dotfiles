"neobundle.vimで管理しているpluginを読み込む
source ~/dotfiles/.vimrc.neobundle

"基本設定
source ~/dotfiles/.vimrc.basic
"StatusLine設定
source ~/dotfiles/.vimrc.statusline
"インデント設定
source ~/dotfiles/.vimrc.indent
"表示関連
source ~/dotfiles/.vimrc.apperance
"補完関連
source ~/dotfiles/.vimrc.completion
"Tags関連
source ~/dotfiles/.vimrc.tags
"検索関連
source ~/dotfiles/.vimrc.search
"移動関連
source ~/dotfiles/.vimrc.moving
" Color関連
" .gvimrcから呼び出す
"source ~/dotfiles/.vimrc.colors
"編集関連
source ~/dotfiles/.vimrc.editing
"エンコーディング関連
source ~/dotfiles/.vimrc.encoding
"その他
source ~/dotfiles/.vimrc.misc
" トライアル中のあれこれ
source ~/dotfiles/.vimrc.trial
"プラグインに依存する設定
"一部のプラグインは専用の.vimrcを用意してそちらで設定
source ~/dotfiles/.vimrc.plugins_setting

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

"Gtags(global)を使用するためのショートカット
map <C-g> :Gtags
map <C-i> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>

