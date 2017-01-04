set softtabstop=4
set nowrap
set encoding=utf8
set shiftwidth=4
set expandtab
set autoindent
set enc=utf-8
"PV eliminar anoying beep
set vb
"PV mostrar el comando que se esta tipeando
set showcmd
"PV mouse in term version
set mouse=a
"PV fix backspace in term
set backspace=indent,eol,start
"PV fix yank paste in terminal
set clipboard=unnamed
"PV set ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on


"PV remapeo de tabs para navegar entre tabs
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

set ruler
colorscheme gruvbox
set background=light

"Indent guides seems nice also but for js and python
let g:indent_guides_enable_on_vim_startup = 1

"PV poner configuraciones específicas solo para javascript por ejemplo
autocmd FileType javascript set softtabstop=2
autocmd FileType javascript set tabstop=2
autocmd FileType javascript set shiftwidth=2
autocmd FileType javascript set hlsearch

"PV nerdtree needed
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"PV adding skeletons
let skeletons#autoRegister = 1

"PV JsBeautify()
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

"PV add skeleton autoregister
let skeletons#autoRegister = 1
let skeletons#skeletonsDir = "~/.vim/bundle/vim-skeletons/skeletons"

"PV vim-css-color
set t_Co=256

"PV powerline con vim: https://gist.github.com/wm/4750511
"set rtp+=/Users/patovala/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim

if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Meslo\ LG\ S\ for\ Powerline
    endif
endif
set laststatus=2

"PV auto strip whitespaces
autocmd BufWritePre * StripWhitespace

"PV pymode is doing slow the experience, disable ropevim
let g:pymode_rope=0

"PV control-p http://ctrlpvim.github.io/ctrlp.vim/#installation
set runtimepath^=~/.vim/bundle/ctrlp.vim

"PV from here: https://invert.svbtle.com/using-vim-as-a-password-manager
set cm=blowfish
