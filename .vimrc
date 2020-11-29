set nocompatible              " be iMproved, required
filetype off                  " required

set nocompatible
syntax enable
set t_Co=256
set laststatus=2
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
"colorscheme tokyonight
colorscheme onehalflight 
let g:airline_theme='onehalflight'
"colorscheme github


set guicursor=n-c-v:ver50-ncvCursor
call plug#begin('~/.vim/plugged')
" 在这里面输入安装的插件
" Vundle 本身就是一个插件
"Plug 'Valloric/YouCompleteMe'
"Plug 'prabirshrestha/async.vim'
"Plug 'prabirshrestha/vim-lsp'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'tell-k/vim-autopep8'
Plug 'scrooloose/nerdcommenter'
Plug 'tomasr/molokai'
"Plug 'tenfyzhong/CompleteParameter.vim'
"Plug 'davidhalter/jedi-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'altercation/solarized'
Plug 'nvie/vim-flake8'
"Plug 'w0rp/ale'
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'tomtom/tlib_vim'
"Plug 'honza/vim-snippets'
"Plug 'drmingdrmer/xptemplate'
Plug 'python-mode/python-mode'
"Plug 'iamcco/mathjax-support-for-mkdp'
"Plug 'iamcco/markdown-preview.vim'
Plug 'vim-scripts/taglist.vim'
Plug  'vim-scripts/python_fold'
Plug 'vim-airline/vim-airline'
Plug 'endel/vim-github-colorscheme'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'yuttie/hydrangea-vim'
"Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sonph/onehalf', {'tag': '0.1.3'}
Plug 'ghifarit53/tokyonight-vim'
Plug 'sonph/onehalf'
call plug#end()

"filetype plugin indent on
filetype plugin on

"let g:lightline.colorscheme='onehalfdark'
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
let NERDTreeChDirMode=0
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
"set guifont=Source\ Code\ Pro\ for\ Powerline:h12
"set guifont=Ubuntu\ Mono:h12
"set guifont=Source\ Code\ Pro\ for\ Powerline:h13
set noshowmode

map <c-f> :Autopep8<CR>
let g:pymode_options = 0
let g:pymode_python = 'python3'
"开启python所有的语法高亮
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_virtualenv = 1
"let g:pymode_virtualenv_path = 'E:\code\finace_creadit_card\venv'

let g:pymode_lint = 0
"修改后保存时进行检查
let g:pymode_lint_on_write = 0
"编辑时进行检查
let g:pymode_lint_on_fly = 0
let g:pymode_lint_cwindow = 0

"set autochdir
let Tlist_Auto_Open = 0
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

set laststatus=2
autocmd FileType json syntax match Comment +\/\/.\+$+
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" " Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

"" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nmap <silent>fm <Plug>(coc-format) 
augroup mygroup
  autocmd!
    " Setup formatexpr specified filetype(s).
      autocmd FileType typescript,json,cc,c++ setl formatexpr=CocAction('formatSelected')
        " Update signature help on jump placeholder
      autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

"" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
augroup filetype
autocmd! BufRead,BufNewFile BUILD set filetype=blade
augroup end

nmap <leader>qf :CocDiagnostics<CR>
