scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:time

function! keyatest#init()
    let s:V = vital#of('vital')

    let s:DateTime = s:V.import('DateTIme')


    s:time = 
endfunction


function! keyatest#pdelta()
endfunction


function! keyatest#print()
    echo "こんにちはこんにちは"

    " http://qiita.com/rbtnn/items/deb569ebc94d5172a5e5
    let s:V = vital#of('vital')

    let s:Prelude = s:V.import('Prelude')
    let s:List = s:V.import('Data.List')
    let s:DateTime = s:V.import('DateTime')

    let d = {'A' : 1, 'C' : 3}
    echo string(d)
    call s:Prelude.set_dictionary_helper(d, "A,B,C", 0)
    echo string(d)

    let lst = [[1],[2,3]]
    echo s:List.flatten(lst)
    echo lst
    echo s:List.flatten([[1],[2,[3,4]]])

    let s:now = s:DateTime.now()
    echo s:now.unix_time()
endfunction



let &cpo = s:save_cpo
unlet s:save_cpo


