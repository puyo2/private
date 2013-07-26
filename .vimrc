"##########
"#�������#
"##########

"ʸ��������
:set encoding=utf-8
:set fileencodings=utf-8,ucs-bom,iso-2022-jp,euc-jp,cp932,latin1

"vimrc���Խ����뤿��Υ��硼�ȥ��åȥ���
nnoremap <Space>. :<C-u>edit $MYVIMRC<Enter>
nnoremap <Space>s. :<C-u>source $MYVIMRC<Enter>

"�ե����륿���פ�����
filetype plugin indent on

"##########
"#ɽ����Ϣ#
"##########

"���顼�������ޤ�����
colorscheme desert
"����Ĥ���
syntax enable 
"�ֹ��Ĥ���
set number
"�����Ƚ�����Ĥ���
set cursorline
set cursorcolumn
"�Ĥ���̤����Ϥ��줿�Ȥ����б������̤�ɽ������
set showmatch
"��̤Υϥ��饤�Ȼ��֤���ꤹ��(1/10��asdf)
set matchtime=3

"##########
"#��ư���#
"##########

"����������Ƭ�������ǻߤޤ�ʤ��褦�ˤ���
set whichwrap=b,s,h,l,<,>,[,]

"���⡼�ɤǥޥ�����ͭ����
set mouse=a

"##########
"#���ϴ�Ϣ#
"##########

"�������ԤΥ���ǥ�Ȥ򸽺ߤιԤ�Ʊ���ˤ���
set autoindent

"���֤�����˶���ʸ���������
set expandtab
"tabstop     (ts)  �ե��������<Tab>ʸ����Ÿ������ʸ����
"shiftwidth  (sw)  ��ưŪ�������������
"softtabstop (sts) �����ܡ��ɤ�<Tab>�����򲡤����������������������
set ts=4 sw=4 sts=0

"�Хå����ڡ����ε�ư����
set backspace=indent,eol,start

"##########
"#�����Ȥ�#
"##########

" Esc Esc �ǥϥ��饤��OFF
nnoremap <Esc><Esc> :<C-u>set nohlsearch<Return>
"������ե��������Ƭ�إ롼�פ��ʤ�
set nowrapscan
"������Ǥ⸡����̤�ɽ���ʥ��󥯥��󥿥륵������
set incsearch
"����������ʸ����ʸ������̤��ʤ�
set ignorecase
"����������ʸ����ޤ�Ǥ�������/�������
set smartcase

"�䴰��ǽ�˸����ɽ������
set wildmenu

"##########
"#�����ѹ�#
"##########

noremap ; :
noremap! ; :
noremap : ;
noremap! : ;
inoremap <C-j> <ESC>
