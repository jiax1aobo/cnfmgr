syntax on

" Split
set sb
set spr
" Number
set nu
set rnu
" Table
set ts=4 " tabstop
"set expandtab
set et
set ls=2
" Cursor
set cul
set ruler

" LSP plug
packadd lsp

" Clangd language server
call LspAddServer([#{
	\ name: 'clangd',
	\ filetype: ['c', 'cpp'],
	\ path: '/usr/bin/clangd',
	\ args: ['--background-index', '--clang-tidy']
\ }])

" LSP configuration
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"

" Lexplore
"inoremap <c-b> <esc>:Lexplore<cr>:vertical resize 30<cr>
"nnoremap <c-b> <esc>:Lexplore<cr>:vertical resize 30<cr>
inoremap <c-b> <esc>:Lexplore<cr>
nnoremap <c-b> <esc>:Lexplore<cr>

" Resize Window
"inoremap <c-p>j <esc>:res -1<cr>
"inoremap <c-p>k <esc>:res +1<cr>
"inoremap <c-p>h <esc>:res -1<cr>
"inoremap <c-p>l <esc>:res +1<cr>
