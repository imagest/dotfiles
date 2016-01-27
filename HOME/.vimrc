set nocompatible

"================ Vundle portion begin =================="

" https://github.com/gmarik/Vundle.vim
filetype off  " required for Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" https://github.com/othree/html5.vim html5 plugin
Plugin 'othree/html5.vim'

" github.com/faith/vim-go
Plugin 'faith/vim-go'

Plugin 'ctags.vim'
"let g:go_fmt_command = "goimports"

Plugin 'Markdown'

" Plugin 'vim-scripts/TagHighlight'
" Plugin 'pathogen.vim'

" https://github.com/Valloric/YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" https://github.com/derekwyatt/vim-scala
Plugin 'derekwyatt/vim-scala'

" https://github.com/wlangstroth/vim-racket
Plugin 'racket.vim'

" LaTEX support
" https://github.com/lervag/vimtex
Plugin 'lervag/vimtex'

" Markdown support
" https://github.com/plasticboy/vim-markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" wakatime
Bundle 'wakatime/vim-wakatime'

" indexed search
"  https://github.com/henrik/vim-indexed-search
Bundle 'henrik/vim-indexed-search'



" CtrlP smart tabs plugin
" https://github.com/DavidEGx/ctrlp-smarttabs
" Plugin 'DavidEGx/ctrlp-smarttabs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To install plugins:
" launch vim and run :PluginInstall
" or from command line, $ vim +PluginInstall +qall

" To search plugins:
" launch vim and run :PluginSearch

"================ Vundle portion end=================="

" install ctrlP for vim:
" http://kien.github.io/ctrlp.vim/
" https://github.com/kien/ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim

" setting smart tab plugin setup
let g:ctrlp_extensions = ['smarttabs']



" typical stuff
set number
set ruler
set incsearch
set hlsearch
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set foldmethod=marker " retain fold markers after closing the files

" map Ctrl + C to copy to clipboard. In some system, use "*y
" use "*p to paste from clipboard.
vnoremap <C-c> "+y


colorscheme koehler

" utf-8 support; for French and Unicode Characters
set encoding=utf-8
set fileencodings=utf-8


"execute pathogen#infect()
syntax on

"set javascript_enable_domhtmlcss = 0;
"set b:javascript_fold = 1;
"set g:javascript_conceal = 0;
"set javascript_ignore_javaScriptdoc = 0;

" detect file type and set appropreate indent scheme(for html)
filetype indent on
" adding html, body, head, tbody to an incremential tag in addition to
" .vim/indent/html.vim
" Refer to: http://www.vim.org/scripts/script.php?script_id=2075
" or :help html-indent
let g:html_indent_inctags = "html,body,head,tbody" 

" http://www.morearty.com/blog/2013/01/22/fixing-vims-indenting-of-html-files/
autocmd FileType html setlocal indentkeys-=*<Return>

"autocmd BufReadPost *.rkt,*.rktl set filetype=scheme





" golang/YCM stuff
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" autoclose after complete
"let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

