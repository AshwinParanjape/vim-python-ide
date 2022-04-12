" This will mark extra whitespace as bad and probably color it red.
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" UTF-8 Support (useful with Python 3)
set encoding=utf-8

" make your code look pretty
let python_highlight_all=1
syntax on

"  On OS X, you can access your system clipboard with this line:
set clipboard=unnamed
