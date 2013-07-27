"▼  neobundle
"--------------------------------------------------------------------------
set nocompatible 
filetype off
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif
" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
""NeoBundle 'https://bitbucket.org/kovisoft/slimv'

filetype plugin indent on     " required!
filetype indent on
syntax on


"▼  unite.vim
"--------------------------------------------------------------------------
"unite.vimをinsertモードで起動
let g:unite_enable_start_insert = 1
nnoremap    [unite]   <Nop>
nmap    <Leader>f [unite]
 
" unite.vim 起動時のremap 
nnoremap <silent> [unite]f :<C-u>Unite<Space>buffer<CR>
nnoremap <silent> [unite]n :<C-u>Unite<Space>file<CR>
nnoremap <silent> [unite]b :<C-u>Unite<Space>bookmark<CR>
nnoremap <silent> [unite]m :<C-u>Unite<Space>file_mru<CR>
nnoremap <silent> [unite]o :<C-u>Unite<Space>outline<CR>
nnoremap <silent> [unite]r :<C-u>UniteWithBufferDir file<CR>
 

"▼  neocomplcache
"--------------------------------------------------------------------------
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

 " Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Select with <TAB>
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

let g:neocomplcache_ctags_arguments_list = {
  \ 'perl' : '-R -h ".pm"'
  \ }

let g:neocomplcache_snippets_dir = "~/.vim/snippets"
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default'    : '',
    \ 'perl'       : $HOME . '/.vim/dict/perl.dict'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'


"▼  表示関連
"--------------------------------------------------------------------------
"文字コード
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,iso-2022-jp,euc-jp,cp932,latin1

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
"括弧のハイライト時間を指定する(1/10秒)
set matchtime=3

"ステータスラインの設定
set statusline=%t\%=[%{&ff}]\[%{&fileencoding}]
"ステータスライン表示位置(下から)
set laststatus=2

"空白文字の可視化
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

if has("syntax")
    syntax on
 
    " PODバグ対策
    syn sync fromstart
 
    function! ActivateInvisibleIndicator()
        "下の行の"　"は全角スペース
        syntax match InvisibleJISX0208Space "　" display containedin=ALL
        highlight InvisibleJISX0208Space term=underline ctermbg=Blue guibg=darkgray gui=underline
    endfunction
 
    augroup invisible
        autocmd! invisible
        autocmd BufNew,BufRead * call ActivateInvisibleIndicator()
    augroup END
endif


"▼  移動操作
"--------------------------------------------------------------------------
"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]


"▼  入力関連
"--------------------------------------------------------------------------
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


"▼  検索とか
"--------------------------------------------------------------------------
" ハイライトON
set hlsearch
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


"キー変更
"--------------------------------------------------------------------------
"英字キーボードを使いやすくする
noremap ; :
noremap! ; :
noremap : ;
noremap! : ;

"--------------------------------------------------------------------------
"ファイルタイプ関連を有効にする
filetype plugin indent on
