scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! keyatest#print()
    echo "こんにちはこんにちは"
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo


