@echo off

rem
rem 設定ファイルのセットアップ
rem

rem このバッチが存在するフォルダをカレントに
pushd %0\..
cls

copy .\.vimrc %HOME%
copy .\.gvimrc %HOME%
copy .\.vim %HOME%

pause
exit
