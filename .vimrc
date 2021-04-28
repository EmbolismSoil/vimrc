call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-scripts/taglist.vim',{'tag': '4.5'}
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Yggdroot/indentLine'
Plug 'tell-k/vim-autopep8'
Plug 'scrooloose/nerdcommenter'
Plug 'tomasr/molokai'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'altercation/solarized'
Plug 'nvie/vim-flake8'
Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'python-mode/python-mode'
Plug  'vim-scripts/python_fold'
Plug 'vim-airline/vim-airline'
Plug 'endel/vim-github-colorscheme'
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'yuttie/hydrangea-vim'
Plug 'wakatime/vim-wakatime'
Plug 'vim-scripts/eclipse.vim'
Plug 'vim-scripts/summerfruit256.vim' 
Plug 'zivyangll/git-blame.vim'
Plug 'sonph/onehalf'
Plug 'ayu-theme/ayu-vim'
"Plug 'bling/vim-bufferline'
Plug 'zivyangll/git-blame.vim'
Plug 'rhysd/vim-clang-format'
Plug 'funorpain/vim-cpplint'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'zefei/vim-wintabs'
Plug 'zefei/vim-wintabs-powerline'
Plug 'jiangmiao/auto-pairs'
Plug 'jdsimcoe/abstract.vim'
Plug 'cseelus/vim-colors-lucid'
Plug 'skywind3000/asyncrun.vim'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'tamago324/LeaderF-filer'
Plug 'tenfyzhong/vim-gencode-cpp'
Plug 'vim-scripts/a.vim'
Plug 'antoyo/vim-licenses'
call plug#end()

let g:airline_theme='onehalfdark'
"

set background=dark
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu
"colorscheme onehalfdark
" set the select color of vim 
hi IncSearch term=standout ctermfg=0 ctermbg=3
hi CursorColumn term=standout ctermfg=0 ctermbg=3
hi StatusLine term=standout ctermfg=0 ctermbg=3
set number
set nocompatible
set backspace=indent,eol,start
set hidden
set cmdheight=2
set updatetime=300

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

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <silent>fs  <Plug>(coc-format-selected)
nmap <silent>cf :ClangFormat<CR>
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

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
augroup filetype
    autocmd! BufRead,BufNewFile BUILD set filetype=blade
augroup end

nnoremap <silent> <F2> :NERDTree<CR>
let g:coc_disable_startup_warning = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_theme = "github"

set hlsearch        "高亮搜索项"
set cursorline      "突出显示当前行"

"打开文件是默认不折叠代码
set foldlevelstart=99
"缩进指示线"
let g:indentLine_char='┊'
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 1
let g:indentLine_showFirstIndentLevel = 1 
let g:indentLine_color_term = 239           

nmap <leader>qf :CocDiagnostics<CR>

nnoremap <Leader>gb :<C-u>call gitblame#echo()<CR>

let g:DoxygenToolkit_authorName="brooksli"
nmap <leader>da :DoxAuthor<CR>
nmap <leader>dc :Dox<CR>

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

map <C-H> <Plug>(wintabs_previous)
map <C-L> <Plug>(wintabs_next)
map <C-T>c <Plug>(wintabs_close)
map <C-T>u <Plug>(wintabs_undo)
map <C-T>o <Plug>(wintabs_only)
map <C-W>c <Plug>(wintabs_close_window)
map <C-W>o <Plug>(wintabs_only_window)
command! Tabc WintabsCloseVimtab
command! Tabo WintabsOnlyVimtab

let g:asyncrun_open = 8
"let g:Lf_PreviewInPopup = 1
let g:Lf_WindowPosition = 'popup'
nmap <leader>ff :LeaderfFunctionAll<CR>
nmap <leader>ft :LeaderfBufTagAll<CR>
nmap <leader>gt :Leaderf gtags<CR>
let g:Lf_GtagsAutoGenerate = 1
let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = '/usr/local/share/gtags/gtags.conf'

"for terminal
nmap <leader>vt :vert terminal<CR>

set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=-1

"for license
let g:licenses_copyright_holders_name = 'Lee, Conley <743703241@qq.com>'
let g:licenses_authors_name = 'Lee, Conley <743703241@qq.com>'
