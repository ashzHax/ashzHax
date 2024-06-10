" Events that breaks file opening: BufReadCmd
autocmd BufNewFile,BufRead,BufReadPost *.yml set filetype=yaml
autocmd StdinReadPre,StdinReadPost *.yml set filetype=yaml
