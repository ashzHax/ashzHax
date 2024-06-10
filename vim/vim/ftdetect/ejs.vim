" Events that breaks file opening: BufReadCmd
autocmd BufNewFile,BufRead,BufReadPost *.ejs set filetype=html
autocmd StdinReadPre,StdinReadPost *.ejs set filetype=html
