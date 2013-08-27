@echo off

rem
rem 設定ファイルのセットアップ
rem

rem このバッチが存在するフォルダをカレントに
pushd %0\..
cls

copy .\_vimrc %HOME%
copy .\_gvimrc %HOME%

pause
exit
