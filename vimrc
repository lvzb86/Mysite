set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" 请在此句下添加插件------------
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wakatime/vim-wakatime'		" waka
Plugin 'vim-airline/vim-airline'	" 状态栏
Plugin 'scrooloose/nerdtree'		" 树形目录
Plugin 'Yggdroot/indentLine'		" 缩进指示线
Plugin 'scrooloose/nerdcommenter'	" 方便的写注释
Plugin 'tell-k/vim-autopep8'		" 自动格式化工具
Plugin 'jiangmiao/auto-pairs'		" 括号引号自动补全
Plugin 'ctrlpvim/ctrlp.vim'			" 定位工程中某个文件
Plugin 'luochen1990/rainbow'		" 彩虹色括号增强版
Plugin 'dyng/ctrlsf.vim'			" 工程中全局搜索特定字符
Plugin 'majutsushi/tagbar'			" 显示文件中的类函数和变量
Plugin 'vim-scripts/indentpython.vim'	" 支持PythonPep8自动缩进
Plugin 'davidhalter/jedi-vim'		" 换成这插件实属无奈，再试试看
"Plugin 'Valloric/YouCompleteMe'		" 史上最难安装的插件，放弃了
" 请在此句上添加插件------------
call vundle#end()
filetype plugin indent on			" 自动识别文件类型，文件类型脚本，缩进定义文件
"-------------------------------
syntax on							" 开启语法高亮
let python_highlight_all=1			" python高亮
set magic							" 这玩意儿俺也不知道干嘛用
set nu								" 显示行号
set guifont=Monaco:h12				" 设置字体
set tabstop=4						" 设置tab长度
set shiftwidth=4					" 统一缩进4
set softtabstop=4					" 删除tab为4
set smarttab						" 行和段开始使用制表符
set noexpandtab						" 不适用空格代替制表符
set showmatch						" 显示匹配的括号
set backspace=2						" 增强删除
set mouse=a							" 启用鼠标
set selection=exclusive
set selectmode=mouse,key
set ignorecase						" 搜索忽略大小写
set hlsearch						" 高亮搜索项
set cursorline						" 突出显示当前行
"set cursorcolumn					" 突出显示当前列
set encoding=utf-8					" 解码utf-8
set fenc=utf-8						" 文件编码
set splitbelow						" 分割布局
set splitright						" 分割布局
set autoindent						" 自动对齐
set smartindent						" 智能对齐
set langmenu=zn_CN.UTF-8			" 菜单语言
set helplang=cn						" 语言设置
set confirm							" 在处理未保存或只读文件的时候，弹出确认框
set autowrite						" 切换时自动保存当前文件
set autochdir						" 自动切换当前目录为当前文件所在目录
set wildmenu						" 增强模式中命令行自动完成操作
set foldenable						" 允许折叠
set foldmethod=syntax				" 语法折叠
set foldcolumn=0					" 折叠区域宽度
set foldlevel=1						" 折叠层数为1
set foldclose=all					" 设置自动关闭折叠
set completeopt=longest,menu		" 智能补全
set scrolloff=3						" 光标移动到顶部和底部时保持3行的距离
set laststatus=2					" 显示状态栏
set ruler							" 光标位置显示在状态栏中
set showcmd							" 在状态行显示目前所执行的命令，未完成的命令也会显示出来


" 分割布局快捷键设置
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" 标识不必要的空白字符
"au BufRead,BufNewfile *.py, *.pyw, *.c, *.h, match BadWhitespace /\s\+$/

" Python代码缩进 PEP8风格
"au BufNewFile,Bufread *.py
	"\ set tabstop=4
	"\ set softtabstop=4
	"\ set shiftwidth=4
	"\ set textwidth=79
	"\ set expandtab
	"\ set autoindent
	"\ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
	\ set tabstop=2
	\ set softtabstop=2
	\ set shiftwidth=2

" 自动补全括号 已被插件auto-pairs取代
":inoremap ( ()<ESC>i
":inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {<CR>}<ESC>O
":inoremap } <c-r>=ClosePair('}')<CR>
":inoremap [ []<ESC>i
":inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap < <><ESC>i
":inoremap > <c-r>=ClosePair('>')<CR>
":inoremap " ""<ESC>i
":inoremap ' ''<ESC>i
"function! ClosePair(char)
	"if getline('.')[col('.') - 1] == a:char
		"return "\<Right>"
	"else
		"return a:char
	"endif
"endfunction

" NeraTree 配置
" 快捷键设置
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
let NERDTreeShowBookmarks=1						" 显示书签
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']	" 设置忽略文件类型
let NERDTreeWinSize=25							" 窗口大小

" indentLine 配置
let g:indentLine_char='|'
let g:indentLine_enabled=1

" autopep8 配置
let g:autopep8_disable_show_diff=1

" nercommenter 快捷键设置
map <F4> <leader>ci <CR>

" CtrlSF 快捷键设置
map f <Plug>CtrlSFPrompt
map F <Plug>CtrlSFQuickfixPronpt

" Tagbar 快捷键设置
map <F6> :TagbarToggle<CR>

" airline 配置
let g:airline_theme="angr"
let g:airline#extensions#tabline#enabled=1		" 启用顶部tabline
let g:airline#extensions#tabline#left_sep=' '	" 顶部tabline显示方式
let g:airline#extensions#tabline#left_alt_sep='|'

" rainbow 配置
let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}

" jedi代码补全配置
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

" YouCompleteMe代码补全设置
"set runtimepath+=~/.vim/bundle/YouCompleteMe
"let g:ycm_collect_identifiers_from_tags_files = 1           		" 开启 YCM 基于标签引擎
"let g:ycm_collect_identifiers_from_comments_and_strings = 1 		" 注释与字符串中的内容也用于补全
"let g:syntastic_ignore_files=[".*\.py$"]
"let g:ycm_seed_identifiers_with_syntax = 1                  		" 语法关键字补全
"let g:ycm_complete_in_comments = 1
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  		" 映射按键, 没有这个会拦截掉tab, 导致其他插件的tab不能用.
"let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
"let g:ycm_complete_in_comments = 1                          		" 在注释输入中也能补全
"let g:ycm_complete_in_strings = 1                           		" 在字符串输入中也能补全
"let g:ycm_collect_identifiers_from_comments_and_strings = 1 		" 注释和字符串中的文字也会被收入补全
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_show_diagnostics_ui = 0                           		" 禁用语法检查
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" |            " 回车即选中当前项
"nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|     " 跳转到定义处
"let g:ycm_min_num_of_chars_for_completion=2                 		" 从第2个键入字符就开始罗列匹配项
