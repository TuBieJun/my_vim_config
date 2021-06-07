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
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
let g:completor_complete_options = 'menuone,noselect,preview'
let g:completor_auto_trigger = 1

noremap <silent> <leader>d :call completor#do('definition')<CR>
noremap <silent> <leader>c :call completor#do('doc')<CR>
noremap <silent> <leader>f :call completor#do('format')<CR>
noremap <silent> <leader>s :call completor#do('hover')<CR>

" Markdown 支持
Plugin 'https://github.com.cnpmjs.org/godlygeek/tabular'
Plugin 'https://github.com.cnpmjs.org/plasticboy/vim-markdown'
Plugin 'https://github.com.cnpmjs.org/instant-markdown/vim-instant-markdown', {'rtp': 'after'}

" 主题集合
Plugin 'https://github.com.cnpmjs.org/flazz/vim-colorschemes'


"自动括号
Plugin 'jiangmiao/auto-pairs'
let g:AutoPairsShortcutToggle = '<C-p>'
" WDL高亮
Plugin 'broadinstitute/vim-wdl'

call vundle#end()
filetype plugin indent on
