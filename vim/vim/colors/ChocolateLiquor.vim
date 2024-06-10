" Vim color file
" Maintainer:   Gerald S. Williams
" Last Change:  2007 Jun 13

" This started as a dark version (perhaps opposite is a better term) of
" PapayaWhip, but took on a life of its own. Easy on the eyes, but still has
" good contrast. Not bad on a color terminal, either (especially if yours
" default to PapayaWhip text on a ChocolateLiquor/#3f1f1f background).
"
" Only values that differ from defaults are specified.

" NOTE: This colorscheme has been modified from the original. The changes are
" primarily to add (or modify) 256-color xterm support, but may include other
" changes also (e.g., bug fixes). Details can be found at:
" http://github.com/KevinGoodsell/vim-xterm-colors

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "ChocolateLiquor"

hi Normal guibg=#3f1f1f guifg=PapayaWhip ctermfg=230 ctermbg=235
hi NonText guibg=#1f0f0f guifg=Brown2 ctermfg=203 ctermbg=233
hi LineNr guibg=#1f0f0f guifg=Brown2 ctermbg=233 ctermfg=203
hi DiffDelete guibg=DarkRed guifg=White ctermbg=88 ctermfg=231
hi DiffAdd guibg=DarkGreen guifg=White ctermbg=22 ctermfg=231
hi DiffText gui=NONE guibg=DarkCyan guifg=Yellow ctermbg=30 ctermfg=226 cterm=NONE
hi DiffChange guibg=DarkCyan guifg=White ctermbg=30 ctermfg=231
hi Constant ctermfg=Red
hi Comment guifg=LightBlue3 ctermfg=110
hi PreProc guifg=Plum ctermfg=182
hi StatusLine guibg=White guifg=Sienna4 cterm=NONE ctermfg=95 ctermbg=231
hi StatusLineNC gui=NONE guifg=Black guibg=Gray ctermbg=250 ctermfg=16 cterm=NONE
hi VertSplit guifg=Gray ctermfg=250
hi Search guibg=Gold3 ctermfg=Blue ctermbg=178
hi Type gui=NONE guifg=DarkSeaGreen2 cterm=NONE ctermfg=157
hi Statement gui=NONE guifg=Gold3 cterm=NONE ctermfg=178
hi FoldColumn guibg=#1f0f0f ctermfg=Cyan ctermbg=233
hi Folded guibg=grey20 ctermfg=Cyan ctermbg=236

hi Constant guifg=#ffa0a0 ctermfg=217
hi Cursor guibg=fg guifg=bg ctermbg=fg ctermfg=bg
hi CursorColumn guibg=grey40 ctermbg=241
hi CursorLine gui=NONE guibg=grey40 ctermbg=241 cterm=NONE
hi DiffDelete gui=bold cterm=bold
hi Directory guifg=cyan ctermfg=51
hi Error guibg=red guifg=white ctermbg=196 ctermfg=231
hi ErrorMsg guibg=red guifg=white ctermbg=196 ctermfg=231
hi FoldColumn guifg=cyan ctermfg=51
hi Folded guifg=cyan ctermfg=51
hi Identifier gui=NONE guifg=#40ffff cterm=NONE ctermfg=87
hi Ignore guifg=bg ctermfg=bg
hi MatchParen guibg=darkcyan ctermbg=30
hi MoreMsg gui=bold guifg=seagreen cterm=bold ctermfg=29
hi NonText gui=bold cterm=bold
hi Pmenu guibg=magenta ctermbg=201
hi PmenuSbar guibg=grey ctermbg=250
hi PmenuSel guibg=darkgrey ctermbg=248
hi Question gui=bold guifg=green cterm=bold ctermfg=46
hi Search guifg=black ctermfg=16
hi SignColumn guibg=grey guifg=cyan ctermbg=250 ctermfg=51
hi Special guifg=orange ctermfg=214
hi SpecialKey guifg=cyan ctermfg=51
hi SpellBad guibg=NONE ctermbg=88
hi SpellCap guibg=NONE ctermbg=19
hi SpellLocal guibg=NONE ctermbg=30
hi SpellRare guibg=NONE ctermbg=90
hi StatusLine gui=bold,reverse cterm=bold,reverse ctermfg=95
hi TabLine guibg=darkgrey guifg=NONE ctermbg=248 ctermfg=NONE
hi Title gui=bold guifg=magenta cterm=bold ctermfg=201
hi Todo guibg=yellow guifg=blue ctermbg=226 ctermfg=21
hi Underlined guifg=#80a0ff ctermfg=111
hi Visual guibg=darkgrey ctermbg=248
hi WarningMsg guifg=red ctermfg=196
hi WildMenu guibg=yellow guifg=black ctermbg=226 ctermfg=16
hi lCursor guibg=fg guifg=bg ctermbg=fg ctermfg=bg
