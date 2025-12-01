" Events that breaks file opening: BufReadCmd
autocmd BufNewFile,BufRead,BufReadPost *.cpp set filetype=cpp
autocmd StdinReadPre,StdinReadPost *.cpp set filetype=cpp
