if has('win32') || has('win64')
  " フォント名に日本語を使う場合、一時的に文字コードをcp932にする
  set encoding=cp932
  set guifont=Inconsolata:h11:w6
  "set guifont=Ricty:h12
  "set guifont=Consolas:h10.5
  "set guifontwide=あずきフォント:h11:cSHIFTJIS
  "set ambiwidth=double
  " 文字コードを元に戻す
  set encoding=utf-8
else
  "set guifont=Ricty\ for\ Powerline\ 10
  set guifont=Inconsolata:h11:w6
  set guifontwide=Ricty\ 10
  set ambiwidth=double
endif

" 内部エンコードをutf-8にすると、Win版のUI部分が文字化けしたので以下対処
" 最新版では不要かもしれない
source $VIMRUNTIME/delmenu.vim
set langmenu=ja_jp.utf-8
source $VIMRUNTIME/menu.vim

"-------------------------------------------------------------------------------
" カラー関連 Colors
"-------------------------------------------------------------------------------

" colorscheme
colorscheme yuroyoro256
"colorscheme codeschool

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

" set t_vb はgvimrcで設定しないと有効にならない環境があるのでこちらでも設定
set t_vb=

" メニューとツールアイコンを非表示にする
set guioptions-=T
set guioptions-=m
