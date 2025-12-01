" Events that breaks file opening: BufReadCmd
autocmd BufNewFile,BufRead,BufReadPost *.txt set filetype=text
autocmd StdinReadPre,StdinReadPost *.txt set filetype=text
