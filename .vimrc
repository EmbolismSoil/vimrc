set nocompatible              " be iMproved, required
filetype off                  " required

set nocompatible
syntax enable
"set t_Co=256
let g:solarized_termcolors=256
set background=dark
call togglebg#map("<F5>")
"set background=light
colorscheme solarized
"colorscheme molokai



set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 在这里面输入安装的插件
" Vundle 本身就是一个插件
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tell-k/vim-autopep8'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tomasr/molokai'
Plugin 'tenfyzhong/CompleteParameter.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'altercation/solarized'


call vundle#end()
filetype plugin indent on

set number
set nowrap  "设置不折行"
set fileformat=unix "设置以unix的格式保存文件"
set cindent     "设置C样式的缩进格式"
set tabstop=4   "设置table长度"
set shiftwidth=4        "同上"
set showmatch   "显示匹配的括号"
set scrolloff=5     "距离顶部和底部5行"
set laststatus=2    "命令行为两行"
set fenc=utf-8      "文件编码"
set backspace=2
"set mouse=a     "启用鼠标"
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase      "忽略大小写"
set incsearch
set hlsearch        "高亮搜索项"
set expandtab     "不允许扩展table"
set whichwrap+=<,>,h,l
set autoread
set cursorline      "突出显示当前行"
"set cursorcolumn        "突出显示当前列"
set foldmethod=indent
set foldlevel=99
set mouse=nv

"F2开启和关闭树"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"显示书签"
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"窗口大小"
let NERDTreeWinSize=25

"缩进指示线"
let g:indentLine_char='|'
let g:indentLine_enabled = 1
let g:indentLine_showFirstIndentLevel = 1 
let g:indentLine_color_term = 239           
""autopep8设置"
let g:autopep8_disable_show_diff=1
map <F8> :Autopep8<CR>

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

set laststatus=2 
set guifont=Source\ Code\ Pro\ for\ Powerline:h12 
set noshowmode

let g:ycm_global_ycm_extra_conf = '/home/lee/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

map <c-left> <c-w>h
map <c-right> <c-w>l
map <c-down> <c-w>j
map <c-up> <c-w>k

"let g:indent_guides_enable_on_vim_startup = 1 
"let g:indent_guides_start_level = 1           
"let g:indent_guides_guide_size = 1            
"let g:indent_guides_tab_guides = 0            