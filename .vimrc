"##########
"#初期設定#
"##########

"文字コード
:set encoding=utf-8
:set fileencodings=utf-8,ucs-bom,iso-2022-jp,euc-jp,cp932,latin1

"vimrcを編集するためのショートカットキー
nnoremap <Space>. :<C-u>edit $MYVIMRC<Enter>
nnoremap <Space>s. :<C-u>source $MYVIMRC<Enter>

"ファイルタイプの選択
filetype plugin indent on

"##########
"#表示関連#
"##########

"カラースキーマの設定
colorscheme desert
"色をつける
syntax enable 
"番号をつける
set number
"横線と縦線をつける
set cursorline
set cursorcolumn
"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch
"括弧のハイライト時間を指定する(1/10秒asdf)
set matchtime=3

"##########
"#移動操作#
"##########

"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

"全モードでマウスを有効化
set mouse=a

"##########
"#入力関連#
"##########

"新しい行のインデントを現在の行と同じにする
set autoindent

"タブの代わりに空白文字を入れる
set expandtab
"tabstop     (ts)  ファイル中の<Tab>文字を展開する文字数
"shiftwidth  (sw)  自動的に挿入される量
"softtabstop (sts) キーボードで<Tab>キーを押した時に挿入される空白の量
set ts=4 sw=4 sts=0

"バックスペースの挙動改善
set backspace=indent,eol,start

"##########
"#検索とか#
"##########

" Esc Esc でハイライトOFF
nnoremap <Esc><Esc> :<C-u>set nohlsearch<Return>
"検索をファイルの先頭へループしない
set nowrapscan
"入力中でも検索結果を表示（インクリメンタルサーチ）
set incsearch
"検索時に大文字小文字を区別しない
set ignorecase
"検索時に大文字を含んでいたら大/小を区別
set smartcase

"補完機能に候補を表示する
set wildmenu

"##########
"#キー変更#
"##########

noremap ; :
noremap! ; :
noremap : ;
noremap! : ;
inoremap <C-j> <ESC>
