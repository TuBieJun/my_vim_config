set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" 状态栏美化
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"主题
Plugin 'morhetz/gruvbox'

"目录树
Plugin 'preservim/nerdtree'
map tt :NERDTreeToggle<CR>

"语法检查
Plugin 'dense-analysis/ale'
let g:ale_linters = {'python':['pylint'],'c': ['cc'],'cpp':['cc']}
let g:ale_linters_explicit = 1

"自动补全
Plugin 'maralla/completor.vim'
let g:completor_python_binary = '/data/liteng/my_software/anaconda3/bin/python3'
let g:complete_clang_binary = '/data/liteng/my_software/clang+llvm-7.0.0-x86_64-linux-sles11.3/bin/clang'
let g:completor_complete_options = 'menuone,noselect'
let g:completor_auto_trigger = 0

inoremap <expr> <C-n> pumvisible() ? "<C-N>" : "<C-R>=completor#do('complete')<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
noremap <silent> <leader>d :call completor#do('definition')<CR>
noremap <silent> <leader>c :call completor#do('doc')<CR>
noremap <silent> <leader>f :call completor#do('format')<CR>
noremap <silent> <leader>s :call completor#do('hover')<CR>

"自动括号
Plugin 'jiangmiao/auto-pairs'

" WDL高亮
Plugin 'broadinstitute/vim-wdl'

call vundle#end()
filetype plugin indent on
