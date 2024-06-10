" Events that breaks file opening: BufReadCmd
autocmd BufNewFile,BufRead,BufReadPost *.c set filetype=c
autocmd StdinReadPre,StdinReadPost *.c set filetype=c
