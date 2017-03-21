@echo off

rem
rem 設定ファイルのセットアップ
rem

rem このバッチが存在するフォルダをカレントに
pushd %0\..
cls

del %HOME%\.vimrc
del %HOME%\.gvimrc

rem ハードリンクを作ることでdotfiles下のファイルに変更が及ぶようにする
mklink /H %HOME%\.vimrc .\.vimrc
mklink /H %HOME%\.gvimrc .\.gvimrc
rem mklink /D %HOME%\vimfiles .\vimfiles

pause
exit
