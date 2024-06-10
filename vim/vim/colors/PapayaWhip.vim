" Vim color file
" Maintainer:   Gerald S. Williams
" Last Change:  2003 Apr 17

" A nice light background (you guessed it, PapayaWhip) that's relatively easy
" on the eyes yet very usable. Not nearly as "puffy" as peachpuff.
"
" Only values that differ from defaults are specified.

" NOTE: This colorscheme has been modified from the original. The changes are
" primarily to add (or modify) 256-color xterm support, but may include other
" changes also (e.g., bug fixes). Details can be found at:
" http://github.com/KevinGoodsell/vim-xterm-colors

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "PapayaWhip"

hi Normal guifg=#3f1f1f guibg=PapayaWhip ctermbg=230 ctermfg=235
hi NonText guibg=Moccasin guifg=Brown ctermfg=124 ctermbg=223
hi LineNr guibg=Moccasin ctermbg=223
hi DiffDelete guibg=LightRed guifg=Black ctermbg=217 ctermfg=16
hi DiffAdd guibg=LightGreen ctermbg=120 ctermfg=White
hi DiffChange guibg=LightCyan3 ctermbg=152 ctermfg=White
hi DiffText gui=NONE guibg=Gray80 ctermbg=252 ctermfg=Yellow cterm=NONE
hi Comment guifg=MediumBlue ctermfg=20
hi Constant guifg=DeepPink ctermfg=198
hi PreProc guifg=DarkMagenta ctermfg=90
hi StatusLine guibg=White guifg=#5f3705 cterm=bold ctermbg=231 ctermfg=94
hi StatusLineNC gui=None guibg=Gray ctermbg=250 cterm=None
hi VertSplit gui=None guibg=Gray ctermbg=250 cterm=None
hi Identifier guifg=#005f5f ctermfg=23
hi Statement ctermfg=DarkRed

hi Cursor guibg=fg guifg=bg ctermbg=fg ctermfg=bg
hi CursorColumn guibg=grey90 ctermbg=254
hi CursorLine gui=NONE guibg=grey90 ctermbg=254 cterm=NONE
hi DiffAdd guifg=NONE ctermfg=NONE
hi DiffChange guifg=NONE ctermfg=NONE
hi DiffDelete gui=bold cterm=bold
hi DiffText guifg=NONE ctermfg=NONE
hi Directory guifg=blue ctermfg=21
hi Error guibg=red guifg=white ctermbg=196 ctermfg=231
hi ErrorMsg guibg=red guifg=white ctermbg=196 ctermfg=231
hi FoldColumn guibg=grey guifg=darkblue ctermbg=250 ctermfg=18
hi Folded guibg=lightgrey guifg=darkblue ctermbg=252 ctermfg=18
hi Ignore guifg=bg ctermfg=bg
hi LineNr guifg=brown ctermfg=124
hi MatchParen guibg=cyan ctermbg=51
hi MoreMsg gui=bold guifg=seagreen cterm=bold ctermfg=29
hi NonText gui=bold cterm=bold
hi Pmenu guibg=lightmagenta ctermbg=219
hi PmenuSbar guibg=grey ctermbg=250
hi PmenuSel guibg=grey ctermbg=250
hi Question gui=bold guifg=seagreen cterm=bold ctermfg=29
hi Search guibg=yellow ctermbg=226
hi SignColumn guibg=grey guifg=darkblue ctermbg=250 ctermfg=18
hi Special guifg=slateblue ctermfg=62
hi SpecialKey guifg=blue ctermfg=21
hi SpellBad guibg=NONE ctermbg=217
hi SpellCap guibg=NONE ctermbg=153
hi SpellLocal guibg=NONE ctermbg=159
hi SpellRare guibg=NONE ctermbg=219
hi Statement gui=bold guifg=brown cterm=bold ctermfg=124
hi StatusLine gui=bold,reverse cterm=bold,reverse ctermfg=94
hi TabLine guibg=lightgrey guifg=NONE ctermbg=252 ctermfg=NONE
hi Title gui=bold guifg=magenta cterm=bold ctermfg=201
hi Todo guibg=yellow guifg=blue ctermbg=226 ctermfg=21
hi Type gui=bold guifg=seagreen cterm=bold ctermfg=29
hi Underlined guifg=slateblue ctermfg=62
hi Visual guibg=lightgrey ctermbg=252
hi WarningMsg guifg=red ctermfg=196
hi WildMenu guibg=yellow guifg=black ctermbg=226 ctermfg=16
hi lCursor guibg=fg guifg=bg ctermbg=fg ctermfg=bg
