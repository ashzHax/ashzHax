" Events that breaks file opening: BufReadCmd
autocmd BufNewFile,BufRead,BufReadPost *.html set filetype=html
autocmd StdinReadPre,StdinReadPost *.html set filetype=html
