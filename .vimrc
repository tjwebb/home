" pathogen
execute pathogen#infect()

" syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:graphql_tag_names = ['gql', 'graphql']
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['tslint', 'tsc']
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

filetype on
filetype plugin on

" backspace
set backspace=2

set modeline

" basics
syntax on
let g:gruvbox_termcolors=16
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set nocompatible
set nonumber
set ts=2
set sw=2
"set smartindent
set wrap!
set hlsearch
set expandtab
set hidden
set backup

" mappings
map <C-O>   :vs<CR><C-W><C-W>:e .<CR>
map	<C-n>   :set invnumber<CR>
map ..      <C-W><C-W><CR>
map ,,      <C-W>1<C-W><CR>	
map	<S-l>   <S-Right>
map	<S-h>   <S-Left>
map	<C-p>   :let @/ = ""<CR>

" tab-like buffer navigation
map <C-t>   :tabnew<CR>:e .<CR>
map <C-h>   :tabp<CR>
map <C-l>   :tabn<CR>

"map 11 !eslint --fix %

" tabify
map tt      gg=G

" wrap selection in /*, */
vmap  * 			<Esc>`>a*/<CR><Esc>`<i<CR>/*<Esc>
" wrap selection in ( )
vmap  ( 			<Esc>`>a)<Esc>`<i(<Esc>

" indentation functions
function! GnuIndent()
  set cindent
  set cindent shiftwidth=2
  set textwidth=80
  set comments=sl:/*,mb:*,elx:*/
  set cinoptions+={1s,>2s,e2s,n-1s,^-1s
  set expandtab
  set smarttab
  set shiftwidth=2
  set ts=2
  " yell if longer than 80 chars
  highlight OverLength ctermfg=darkred
  match OverLength /\%81v.*/
endfunction

function! XmlIndent()
  set ts=2
  set sw=2
endfunction

function! MakeFileIndent()
  set noexpandtab
endfunction

" filetype directives
au FileType xml call XmlIndent()
au FileType xquery call XmlIndent()
au BufEnter /pintos/src/* call GnuIndent() 
au BufEnter makefile call MakeFileIndent() 
au BufRead,BufNewFile *bash* let g:is_bash=1

" javascript
"au BufNewFile,BufRead *.json   	set filetype=javascript

" erlang stuff
au BufNewFile,BufRead *.esp         set filetype=html

" Drupal stuff
au BufNewFile,BufRead *.module      set filetype=php
au BufNewFile,BufRead *.install     set filetype=php
au BufNewFile,BufRead *.info        set filetype=php
au BufNewFile,BufRead *.inc         set filetype=php

" libx stuff
au BufNewFile,BufRead *.mod         set filetype=javascript

" zk stuff
au BufNewFile,BufRead *.zul         set filetype=xml

" less syntax
au BufNewFile,BufRead *.less        set filetype=less

" Java Stuff
let java_highlight_all=1
let java_allow_cpp_keywords=1

" Groovy
au BufNewFile,BufRead *.gradle      set filetype=groovy

au BufNewFile,BufRead *.cob         set filetype=cobol
au BufNewFile,BufRead *.cbl         set filetype=cobol
au BufNewFile,BufRead *.cpy         set filetype=cobol
au BufNewFile,BufRead *.cobol       set filetype=cobol

" show cursor position
set ruler
set rulerformat=%50(%c%V\ %p%%%)

"nmap :fix 1G=G
"imap :fix <ESC>1G=Ga

" cobol
au BufNewFile,BufRead *.cob set filetype=cobol
au BufNewFile,BufRead *.cbl set filetype=cobol
au BufNewFile,BufRead *.cpy set filetype=cobol
au BufNewFile,BufRead *.cobol set filetype=cobol

autocmd FileType cobol set sw=4 sts=4 et sta tw=72
let g:cobol_syntax_checker_cobc_compiler_option = '-F'
let g:cobol_syntax_checker_check_on_read = 0
let g:cobol_syntax_checker_check_on_write = 1 
let g:cobol_syntax_checker_loc_auto_open_close = 0
setlocal indentexpr=
setlocal noautoindent
setlocal nocindent
setlocal nosmartindent

" markdown
let vim_markdown_preview_github=1
