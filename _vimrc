
source $HOME/dotfiles/.vimrc.neobundle

"�o�b�N�A�b�v�t�@�C���f�B���N�g��
set backupdir=$HOME/vimbackup

"�t�@�C���ۑ��_�C�A���O�̏����f�B���N�g�����o�b�t�@�t�@�C����
set browsedir=buffer
"�X���b�v�t�@�C���p�̃f�B���N�g��
set directory=$HOME/vimbackup
"�s�ԍ��\��
set number
"�V�t�g�ړ���
set shiftwidth=4
"�������ɑ啶�����܂�ł������/�������
set smartcase
"�^�u�X�g�b�v
set tabstop=4

"�r�[�v��������(��ʃt���b�V����������͂������A�����Ȃ�)
set visualbell t_vb= 

"�}�����[�h�����������Ƃ���IME(���{�����)��������OFF
:inoremap <ESC> <ESC>:set iminsert=0 <CR>
"�J�[�\�����s���A�s���Ŏ~�܂�Ȃ��悤�ɂ���
set whichwrap=b,s,h,l,<,>,[,]
"Ruby�t�@�C���Ȃ�^�u��2��
autocmd FileType ruby :set shiftwidth=2
autocmd FileType ruby :set tabstop=2
"HTML�t�@�C���Ȃ�^�u��2��
autocmd FileType HTML :set shiftwidth=2
autocmd FileType HTML :set tabstop=2



"�⊮�I�v�V����
".�J�����g, w:�ʃE�B���h�E , b:�ʃo�b�t�@ , u:�ǂݍ���łȂ��o�b�t�@���X�g�̃o�b�t�@ , i:�C���N���[�h�����t�@�C�� , d:�C���N���[�h�t�@�C���̒�` , t:�^�O, k{directory}:�w��f�B���N�g��
"autocmd FileType * let g:AutoComplPop_CompleteOption = '.,w,b,u,i'
"autocmd FileType c let g:AutoComplPop_CompleteOption = '.,w,b,u,i,d'
"autocmd FileType ruby let g:AutoComplPop_CompleteOption = '.,w,b,u,t,i,k~/vimfiles/dict/ruby.dict'
"let g:AutoComplPop_IgnoreCaseOption = 1

"�⊮����Enter�������ƃ|�b�v�A�b�v�������ĉ��s
"�Ȃ���<C-Y>�ł��⊮�����悤�ɂȂ��Ă��܂����̂ŁAC-X�ɕύX
"inoremap <expr> <CR> pumvisible() ? "\<C-Y>\<CR>" : "\<CR>"
"inoremap <expr> <CR> pumvisible() ? "\<C-X>\<CR>" : "\<CR>"

"<TAB>�ŕ⊮
" {{{ Autocompletion using the TAB key
" This function determines, wether we are on the start of the line text (then tab indents) or
" if we want to try autocompletion
"function! InsertTabWrapper()
"    let col = col('.') - 1
"    if !col || getline('.')[col - 1] !~ '\k'
"            return "\<TAB>"
"    else
"            if pumvisible()
"                    return "\<C-N>"
"            else
"                    return "\<C-N>\<C-P>"
"            end
"    endif
"endfunction
" Remap the tab key to select action with InsertTabWrapper
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>
" }}} Autocompletion using the TAB key



filetype indent on
" Align����{����Ŏg�p���邽�߂̐ݒ�
" :let g:Align_xstrlen = 3 �����ɋ@�\���ĂȂ��̂ŁA��������
" DrChip���j���[���\���ɂ���
:let g:DrChipTopLvlMenu = ""

" �f�B���N�g��������e�f�B���N�g���Ɍ�������tags�t�@�C�����ċA�I�Ɍ���
" set tags+=tags;
" �J�����g�f�B���N�g�����牺���ċA�I�Ɍ���
" set tags+=./**/tags

"Grep.vim���g�����߂̐ݒ�
let Grep_Path = 'D:/cygwin/bin/grep.exe'
let Fgrep_Path = 'D:/cygwin/bin/grep.exe -F'
let Egrep_Path = 'D:/cygwin/bin/grep.exe -E'
let Grep_Find_Path = 'D:/cygwin/bin/find.exe'
let Grep_Xargs_Path = 'D:/cygwin/bin/xargs.exe'
let Grep_Shell_Quote_Char = ""

" �������W�X�^�ɓ���f�[�^���A*���W�X�^�ɂ������
set clipboard+=unnamed

" ���ϐ�work, desktop��ǉ�
let $WORK = "D:/workspace"
let $DESKTOP = "C:/Users/yanagi.BUG_HQ.000/desktop"

" �����Ƀ��X�g����Ă���t�@�C�����J�����Ƃ��Ɏ�����
" �J�����g�f�B���N�g�����t�@�C���̂���ꏊ�ɕύX����
" gnu global���g���Ƃ��Ɏז��ɂȂ�̂ŁA������OFF�ɂ��Ă݂�
"au   BufEnter *.c,*.h,*.rb,*.py,*.rhtml,*.html,*.erb,*.js   execute ":lcd " . expand("%:p:h") 

" ino�t�@�C�����J��������C�\���ŉ��߂���
au BufRead,BufNewFile *.ino set filetype=c

" Project.vim
" grep��vimgrep���g�p����
let g:proj_flags = "imstv"

" TortoiseSVN���R�}���h������s \td, \tl, \tr
" Save the current buffer and execute the Tortoise SVN interface's diff program
map <unique> <silent> <leader>td :w<CR>:silent !"C:\Progra~1\TortoiseSVN\bin\TortoiseProc.exe /command:diff  /path:"%:p" /closeonend:0"<CR>
" Save the current buffer and execute the Tortoise SVN interface's log
map <unique> <silent> <leader>tl :w<CR>:silent !"C:\Progra~1\TortoiseSVN\bin\TortoiseProc.exe /command:log   /path:"%:p" /closeonend:0"<CR>
" Save the current buffer and execute the Tortoise SVN interface's revision graph
map <unique> <silent> <leader>tr :w<CR>:silent !"C:\Progra~1\TortoiseSVN\bin\TortoiseProc.exe /command:revisiongraph  epath:"%:p" /closeonend:0"<CR>
" Save the current buffer and execute the Tortoise SVN interface's blame program
map <unique> <leader>tb :call TortoiseBlame()<CR>
fu! TortoiseBlame()
  " Save the buffer
  silent execute(':w')
  " Now run Tortoise to get the blame dialog to display
  let filename = expand("%:p")
  let linenum  = line(".")
  silent execute('!C:\Progra~1\TortoiseSVN\bin\TortoiseProc.exe /command:blame /path:"' . filename . '" /line:' . linenum . ' /closeonend:0')
endfunc

"�J���t�@�C���̉��s�R�[�h�������F������
set fileformats=unix,dos,mac
"�J���t�@�C���̕����R�[�h�������F������
set encoding=utf-8
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8

"Gtags(global)���g�p���邽�߂̃V���[�g�J�b�g
map <C-g> :Gtags
map <C-i> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>

colorscheme slate


