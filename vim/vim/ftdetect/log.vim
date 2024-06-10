" Events that breaks file opening: BufReadCmd
autocmd BufNewFile,BufRead,BufReadPost *.log set filetype=log
autocmd StdinReadPre,StdinReadPost *.log set filetype=log
