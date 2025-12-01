" Events that breaks file opening: BufReadCmd
autocmd BufNewFile,BufRead,BufReadPost *.java set filetype=java
autocmd StdinReadPre,StdinReadPost *.java set filetype=java
