" Events that breaks file opening: BufReadCmd
autocmd BufNewFile,BufRead,BufReadPost *.js set filetype=javascript
autocmd StdinReadPre,StdinReadPost *.js set filetype=javascript
