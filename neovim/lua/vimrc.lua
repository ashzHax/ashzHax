-- =============================================================================
--
--   ashz's personal NeoVim configuration
--   # https://github.com/ashzHax/ashzHax
--
-- =============================================================================
--
--   Basic Value Configuration
--
-- =============================================================================
-- {{{
-- In a key map, whatever action is mapped to a key <leader>,
-- that tag will replaced by this value
-- Note: Configured at lazy.lua
--vim.cmd("let mapleader = \"\\\"\"")

-- In a key map, whatever action is mapped to a key <localleader>,
-- that tag will replaced by this value
-- Note: Configured at lazy.lua
--vim.cmd("let maplocalleader = \"\\\"\"")

-- Show line number on the side
vim.cmd("set number")

-- Default width of the number column
vim.cmd("set numberwidth=3")

-- Maximum length of text before breaking line
-- Disabled because I don't want auto line breaking
vim.cmd("set textwidth=0")

-- Length of text from the right border before auto line breaking
-- Disabled because I don't want auto line breaking
vim.cmd("set wrapmargin=0")

-- Wrap text longer than the window line
vim.cmd("set wrap")

-- Round indent to multiple of 'shiftwidth'
vim.cmd("set shiftround")

-- Number of spaces to use for each step of (auto)indent
-- Smaller is better because more text can be seen within max buffer length
vim.cmd("set shiftwidth=2")

-- Number of spaces a tab counts for when opening a file
vim.cmd("set tabstop=2")

-- Number of spaces that a tab counts for when performing editing operation
vim.cmd("set softtabstop=2")

-- In insert mode, use the appropriate number of spaces for tabs
vim.cmd("set expandtab")

-- When searching using a pattern, the case of normal letters are ignored
vim.cmd("set ignorecase")

-- Highlight all matching pattern
vim.cmd("set hlsearch")

-- Highlight matching pattern while typing the pattern
vim.cmd("set incsearch")

-- Do smart auto-indenting when starting a new line based on a few conditions
vim.cmd("set smartindent")

-- A tab in the front of a line inserts blanks according to 'shiftwidth' value
vim.cmd("set smarttab")

-- The starting fold level when a new buffer is opened
-- 0 will close all folds
vim.cmd("set foldlevelstart=0")

-- The folding 'mode' of the current window
vim.cmd("set foldmethod=marker")

-- The start and end fold markers, separated by a comma
-- Won't modify default value, consider making a plugin later regarding this
vim.cmd("set foldmarker={{{,}}}")

-- The minimal amount of lines required before auto-folding
vim.cmd("set foldminlines=3")

-- When to show statusline
-- Personally like to have it always shown
vim.cmd("set laststatus=2")

-- Highlight matching brackets
vim.cmd("set showmatch")

-- Show a custom array of the following on tabs
-- TODO: mess around with this value at large scale
vim.cmd("set listchars=tab:[-,eol:X")

-- Disabled, because I want colored background instead of characters
vim.cmd("set nolist")

-- Disable selected word being highlighted on start
vim.cmd("nohlsearch")

-- Configure NeoVim font
vim.cmd("set guifont=0xProto\\ Nerd\\ Font\\ Mono:h12")

-- }}}
-- ==============================================================================
--
--   Abbreviations
--
-- ==============================================================================
-- {{{
-- Spelling fix
vim.cmd("iabbrev waht what")
vim.cmd("iabbrev tehn then")
vim.cmd("iabbrev adn and")

-- Quick insert (should always be at appropriate 'ftplugin' file)
vim.cmd("iabbrev c_debug printf(”[%s():%d] []”, __func__, __LINE__);")
vim.cmd("iabbrev k_debug printk(KERN_DEBUG”[%s():%d] []”, __func__, __LINE__);")

-- }}}
-- ==============================================================================
--
--   Custom Commands
--
-- ==============================================================================
-- {{{
-- For accidental shift input when writing file
vim.cmd("command! W w")

-- For accidental shift input when closing file
vim.cmd("command! Q q")

-- }}}
-- ==============================================================================
--
--   Mapping
--
-- ==============================================================================
-- {{{
-- Open(Edit) the '.vimrc' file on a split
vim.cmd("nnoremap <leader>ev :silent! vsplit $MYVIMRC<cr>")

-- Source the '.vimrc' file
vim.cmd("nnoremap <leader>sv :silent! source $MYVIMRC<cr>")

-- Select current word and warp it in quotes
vim.cmd("nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel")

-- Select current word and warp it in double quotes
vim.cmd("nnoremap <leader>\" viw<esc>a\"<esc>bi\"<esc>lel")

-- Open previous file
vim.cmd("noremap <C-s> <esc>:execute \"vi \" . bufname(\"#\")<cr>")

-- Go to the previous tab
vim.cmd("noremap <C-h> <esc>:tabprev<cr>")

-- Go to the next tab
vim.cmd("noremap <C-l> <esc>:tabnext<cr>")

-- Open a new, empty tab
vim.cmd("noremap <C-n> <esc>:tabnew<cr>")

-- Open a split, with the current directory as target
vim.cmd("nnoremap <leader>ss <esc>:vsplit ./<cr>")

-- Query c-scope mappings (Reference :help cs)
-- Since c-scope is not installed, ignore all related mappings
---- Find this C symbol
--vim.cmd("nnoremap <C-\\>s :cs find s")
---- Find this definition
--vim.cmd("nnoremap <C-\\>g :cs find g")
---- Find functions called by this function
--vim.cmd("nnoremap <C-\\>d :cs find d")
---- Find functions calling this function
--vim.cmd("nnoremap <C-\\>c :cs find c")
---- Find this text string
--vim.cmd("nnoremap <C-\\>t :cs find t")
---- Find this egrep pattern
--vim.cmd("nnoremap <C-\\>e :cs find e")
---- Find this file
--vim.cmd("nnoremap <C-\\>f :cs find f")
---- Find files #including this file
--vim.cmd("nnoremap <C-\\>i :cs find i")
---- Find places where this symbol is assigned a value
--vim.cmd("nnoremap <C-\\>a :cs find a")

-- VCSVimDiff show, and toggle Tlist
-- vim.cmd("nnoremap \\cv <esc>:TlistClose<cr><esc>:VCSVimDiff<cr>")

-- Copy a line to system clipboard
vim.cmd("vnoremap <C-x>c \"*y")

-- Paste system clipboard to current position
vim.cmd("noremap <C-x>v \"*p")

-- }}}
-- ==============================================================================
--
--   Auto Commands
--
-- ==============================================================================
-- {{{
-- Commenting based on file type
-- Consider spliting these to file type packages
vim.cmd("augroup ft_commenting\
  autocmd!\
  autocmd FileType c          nnoremap <buffer> <leader>c I//<esc>\
  autocmd FileType php        nnoremap <buffer> <leader>c I//<esc>\
  autocmd FileType vim        nnoremap <buffer> <leader>c I\"<esc>\
  autocmd FileType python     nnoremap <buffer> <leader>c I#<esc>\
  autocmd FileType javascript nnoremap <buffer> <leader>c I//<esc>\
  autocmd FileType lua        nnoremap <buffer> <leader>c I--<esc>\
augroup END")

-- vim.cmd("augroup ft_tab_shiftwidth\
--   autocmd!\
--   autocmd FileType php set shiftwidth=4\
--   autocmd FileType php set tabstop=4\
--   autocmd FileType php set softtabstop=4\
-- augroup END")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "php",
  command = "setlocal shiftwidth=4 tabstop=4 softtabstop=4",
})
-- }}}
