" Events that breaks file opening: BufReadCmd
autocmd BufNewFile,BufRead,BufReadPost *.rs set filetype=rust
autocmd StdinReadPre,StdinReadPost *.rs set filetype=rust
