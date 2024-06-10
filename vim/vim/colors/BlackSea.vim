" Vim color file
" Maintainer:   Gerald S. Williams
" Last Change:  2007 Jun 13

" This is a dark version/opposite of "seashell". The cterm version of this is
" very similar to "evening".
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
let g:colors_name = "BlackSea"

hi Normal guibg=Black guifg=seashell ctermfg=231 ctermbg=16
hi NonText guifg=LavenderBlush ctermfg=255
hi DiffDelete guibg=DarkRed guifg=Black ctermbg=88 ctermfg=16
hi DiffAdd guibg=DarkGreen ctermbg=22 ctermfg=White
hi DiffChange guibg=Gray30 ctermbg=239 ctermfg=White
hi DiffText gui=NONE guibg=DarkCyan ctermbg=30 ctermfg=Yellow cterm=NONE
hi Comment guifg=LightBlue ctermfg=152
hi PreProc ctermfg=Magenta
hi StatusLine guibg=#1f001f guifg=DarkSeaGreen cterm=NONE ctermfg=108 ctermbg=233
hi StatusLineNC guifg=Gray ctermfg=250
hi VertSplit guifg=Gray ctermfg=250
hi Type gui=NONE cterm=NONE
hi Identifier guifg=Cyan ctermfg=51
hi Statement guifg=brown3 ctermfg=167
hi Search guibg=Gold3 ctermfg=White ctermbg=178
hi Folded guibg=gray20 ctermbg=236
hi FoldColumn guibg=gray10 ctermbg=234

" Original values:
"hi Constant guifg=DeepPink ctermfg=198
"hi PreProc guifg=Magenta ctermfg=201

hi Constant guifg=#ffa0a0 ctermfg=217
hi Cursor guibg=fg guifg=bg ctermbg=fg ctermfg=bg
hi CursorColumn guibg=grey40 ctermbg=241
hi CursorLine gui=NONE guibg=grey40 ctermbg=241 cterm=NONE
hi DiffAdd guifg=NONE ctermfg=NONE
hi DiffChange guifg=NONE ctermfg=NONE
hi DiffDelete gui=bold cterm=bold
hi DiffText guifg=NONE ctermfg=NONE
hi Directory guifg=cyan ctermfg=51
hi Error guibg=red guifg=white ctermbg=196 ctermfg=231
hi ErrorMsg guibg=red guifg=white ctermbg=196 ctermfg=231
hi FoldColumn guifg=cyan ctermfg=51
hi Folded guifg=cyan ctermfg=51
hi Identifier gui=NONE cterm=NONE
hi Ignore guifg=bg ctermfg=bg
hi LineNr guifg=yellow ctermfg=226
hi MatchParen guibg=darkcyan ctermbg=30
hi MoreMsg gui=bold guifg=seagreen cterm=bold ctermfg=29
hi NonText gui=bold cterm=bold
hi Pmenu guibg=magenta ctermbg=201
hi PmenuSbar guibg=grey ctermbg=250
hi PmenuSel guibg=darkgrey ctermbg=248
hi PreProc guifg=#ff80ff ctermfg=213
hi Question gui=bold guifg=green cterm=bold ctermfg=46
hi Search guifg=black ctermfg=16
hi SignColumn guibg=grey guifg=cyan ctermbg=250 ctermfg=51
hi Special guifg=orange ctermfg=214
hi SpecialKey guifg=cyan ctermfg=51
hi SpellBad guibg=NONE ctermbg=88
hi SpellCap guibg=NONE ctermbg=19
hi SpellLocal guibg=NONE ctermbg=30
hi SpellRare guibg=NONE ctermbg=90
hi Statement gui=bold cterm=bold
hi StatusLine gui=bold,reverse cterm=bold,reverse
hi TabLine guibg=darkgrey guifg=NONE ctermbg=248 ctermfg=NONE
hi Title gui=bold guifg=magenta cterm=bold ctermfg=201
hi Todo guibg=yellow guifg=blue ctermbg=226 ctermfg=21
hi Type guifg=#60ff60 ctermfg=83
hi Underlined guifg=#80a0ff ctermfg=111
hi Visual guibg=darkgrey ctermbg=248
hi WarningMsg guifg=red ctermfg=196
hi WildMenu guibg=yellow guifg=black ctermbg=226 ctermfg=16
hi lCursor guibg=fg guifg=bg ctermbg=fg ctermfg=bg
