set nocompatible              " be iMproved, required
filetype off                  " required

set nocompatible
syntax enable
"set t_Co=256
"let g:solarized_termcolors=256
set background=dark
call togglebg#map("<F5>")
"set background=light
colorscheme monokai



set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('/home/ubuntu/.vim/bundle')

" 在这里面输入安装的插件
" Vundle 本身就是一个插件
Plugin 'gmarik/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'maralla/completor.vim'
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
Plugin 'nvie/vim-flake8'
"Plugin 'msanders/snipmate.vim'
Plugin 'w0rp/ale'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'drmingdrmer/xptemplate'
Plugin 'python-mode/python-mode'
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin  'vim-scripts/python_fold'
Plugin 'vim-airline/vim-airline'
Plugin 'endel/vim-github-colorscheme'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

call vundle#end()
"filetype plugin indent on
filetype plugin on

set number
set nowrap  "设置不折行"
set cindent     "设置C样式的缩进格式"
set tabstop=4   "设置table长度"
set shiftwidth=4        "同上"
set showmatch   "显示匹配的括号"
set scrolloff=5     "距离顶部和底部5行"
set laststatus=2    "命令行为两行"
set fenc=utf-8      "文件编码"
set fileencoding=utf-8
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
let NERDTreeShowHidden=1
let NERDTreeWinSize=25

"缩进指示线"
let g:indentLine_char='|'
let g:indentLine_enabled = 1
let g:indentLine_showFirstIndentLevel = 1 
let g:indentLine_color_term = 239           
""autopep8设置"
let g:autopep8_disable_show_diff=1
let g:autopep8_max_line_length=120

map <F8> :Autopep8<CR>

"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup

set laststatus=2 
set guifont=Source\ Code\ Pro\ for\ Powerline:h12
"set guifont=Ubuntu\ Mono:h12
"set guifont=Source\ Code\ Pro\ for\ Powerline:h13
set noshowmode

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
"let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
nnoremap <leader>jd :LspDefinition<CR>
nnoremap <leader>jr :LspReferences<CR>

"let g:jedi#completions_enabled = 0
"
"inoremap <silent><expr> ( complete_parameter#pre_complete("()")
"smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
"imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
"smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
"imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)

map <c-left> <c-w>h
map <c-right> <c-w>l
map <c-down> <c-w>j
map <c-up> <c-w>k

"let g:indent_guides_enable_on_vim_startup = 1 
"let g:indent_guides_start_level = 1           
"let g:indent_guides_guide_size = 1            
"let g:indent_guides_tab_guides = 0            

map <c-f> :Autopep8<CR>
let g:pymode_options = 1
let g:pymode_python = 'python'
"开启python所有的语法高亮
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_run_bind = "<leader>r"
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_virtualenv = 1
"let g:pymode_virtualenv_path = 'E:\code\finace_creadit_card\venv'

let g:pymode_lint = 0
"修改后保存时进行检查
let g:pymode_lint_on_write = 0
"编辑时进行检查
let g:pymode_lint_on_fly = 0
let g:pymode_lint_cwindow = 0

let g:xptemplate_key = '<c-l>'
let g:xptemplate_nav_next = '<c-l>'

let g:ale_set_quickfix = 1

let g:mkdp_auto_open = 1
let g:mkdp_auto_close = 1
let g:mkdp_open_to_the_world = 1

map <c-n> :bp<CR>
map <c-m> :bn<CR>
map <c-x> :close<CR>

map <c-t> :TlistToggle<CR>
set tags=tags;
set autochdir
let Tlist_Auto_Open = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Show_One_File = 1

set foldmethod=indent
set fileformat=unix "设置以unix的格式保存文件"


let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#fugitiveline#enabled = 1

let g:airline#extensions#branch#enabled = 1  
let g:airline#extensions#branch#vcs_priority = ["git", "mercurial"]
let g:airline#extensions#branch#format = 2
let g:airline#extensions#branch#displayed_head_limit = 10


" Pylint configuration file
let g:pymode_lint_config = '$VIM/.pylint.rc'
let g:pymode_options_max_line_length=120

map <s-h> :bp<CR>
map <s-l> :bn<CR>

map <leader>gd :Gvdiff<CR>
map <leader>gs :Gstatus<CR>

map <leader>mk :MarkdownPreview<CR>

if executable('pyls')
    au User lsp_setup call lsp#register_server({ 'name': 'pyls', 'cmd': {server_info->['pyls']}, 'whitelist': ['python'] })
endif
let g:completor_python_binary = '/usr/bin/python3'
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

let g:completor_complete_options = 'menuone,noselect'
