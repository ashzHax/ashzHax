" Events that breaks file opening: BufReadCmd
autocmd BufNewFile,BufRead,BufReadPost *.vim set filetype=vim
autocmd StdinReadPre,StdinReadPost *.vim set filetype=vim
