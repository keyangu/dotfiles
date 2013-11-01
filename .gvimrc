if has('win32') || has('win64')
  set guifont=Inconsolata:h10.5
else
  set guifont=Ricty\ for\ Powerline\ 10
  set guifontwide=Ricty\ 10
  set ambiwidth=double
endif

" 内部エンコードをutf-8にすると、Win版のUI部分が文字化けしたので以下対処
" 最新版では不要かもしれない
source $VIMRUNTIME/delmenu.vim
set langmenu=ja_jp.utf-8
source $VIMRUNTIME/menu.vim

" Win GUI版は .gvimrc から呼び出してあげないとちゃんと動かない
source ~/dotfiles/.vimrc.colors

" visual bell を無効化する
" 画面端で移動しようとした時のビカビカが目に悪そうなので...
set novisualbell

