" count boot second
" Version: 0.1
" Author : keyangu <>
" License: MIT License

if exists('g:loaded_keyatest')
    finish
endif
let g:loaded_keyatest = 1

let s:save_cpo = &cpo
set cpo&vim

call keyatest#init()
command! KeyaTimeDelta
            \   call keyatest#pdelta()
command! KeyaTest
            \   call keyatest#print()

let &cpo = s:save_cpo
unlet s:save_cpo

