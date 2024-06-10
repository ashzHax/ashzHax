" Vim color file
" A version of nuvola.vim colorscheme, original by Dr. J. Pfefferl
" I changed some colors and added some highlights for C and Vim 7

" vim: tw=0 ts=4 sw=4
" Maintainer:  Christian Habermann
" Email:       christian( at )habermann-net( point )de
" Version:     1.2
" History:     1.2: nicer colors for paren matching
"              1.1: Vim 7 support added (completion, spell checker, paren, tabs)
"              1.0: initial version
"
" NOTE: This colorscheme has been modified from the original. The changes are
" primarily to add (or modify) 256-color xterm support, but may include other
" changes also (e.g., bug fixes). Details can be found at:
" http://github.com/KevinGoodsell/vim-xterm-colors

" Intro {{{1
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "habiLight"

" Normal {{{1
hi Normal ctermfg=16 ctermbg=231 guifg=black guibg=#F9F5F9

" Search {{{1
hi IncSearch cterm=UNDERLINE ctermfg=16 ctermbg=221 gui=UNDERLINE guifg=Black guibg=#FFE568
hi Search term=reverse cterm=NONE ctermfg=16 ctermbg=221 gui=NONE guifg=Black guibg=#FFE568

" Messages {{{1
hi ErrorMsg gui=BOLD guifg=#EB1513 guibg=NONE ctermbg=NONE cterm=BOLD ctermfg=160
hi! link WarningMsg ErrorMsg
hi ModeMsg gui=BOLD guifg=#0070ff guibg=NONE ctermbg=NONE cterm=BOLD ctermfg=27
hi MoreMsg guibg=NONE guifg=seagreen ctermbg=NONE ctermfg=29
hi! link Question MoreMsg

" Split area {{{1
hi StatusLine term=BOLD,reverse cterm=BOLD ctermfg=231 ctermbg=75 gui=BOLD guibg=#56A0EE guifg=white
hi StatusLineNC gui=NONE guibg=#56A0EE guifg=#E9E9F4 ctermbg=75 cterm=NONE ctermfg=255
hi! link VertSplit StatusLineNC
hi WildMenu gui=UNDERLINE guifg=#56A0EE guibg=#E9E9F4 ctermbg=255 cterm=UNDERLINE ctermfg=75

" Diff {{{1
hi DiffText   gui=NONE guifg=#f83010 guibg=#ffeae0 ctermbg=255 cterm=NONE ctermfg=202
hi DiffChange gui=NONE guifg=#006800 guibg=#d0ffd0 ctermbg=194 cterm=NONE ctermfg=22
hi DiffDelete gui=NONE guifg=#2020ff guibg=#c8f2ea ctermbg=194 cterm=NONE ctermfg=21
hi! link DiffAdd DiffDelete

" Cursor {{{1
hi Cursor       gui=none guifg=black guibg=orange ctermbg=214 cterm=none ctermfg=16
"hi lCursor      gui=NONE guifg=#f8f8f8 guibg=#8000ff ctermbg=93 cterm=NONE ctermfg=231
hi CursorIM     gui=NONE guifg=#f8f8f8 guibg=#8000ff ctermbg=93 cterm=NONE ctermfg=231

" Fold {{{1
hi Folded gui=NONE guibg=#B5EEB5 guifg=black ctermbg=157 cterm=NONE ctermfg=16
"hi FoldColumn gui=NONE guibg=#9FD29F guifg=black ctermbg=151 cterm=NONE ctermfg=16
hi! link FoldColumn Folded

" Other {{{1
hi Directory    gui=NONE guifg=#0000ff guibg=NONE ctermbg=NONE cterm=NONE ctermfg=21
hi LineNr       gui=NONE guifg=#8080a0 guibg=NONE ctermbg=NONE cterm=NONE ctermfg=103
hi NonText      gui=BOLD guifg=#4000ff guibg=#EFEFF7 ctermbg=255 cterm=BOLD ctermfg=57
"hi SpecialKey   gui=NONE guifg=#A35B00 guibg=NONE ctermbg=NONE cterm=NONE ctermfg=130
hi Title        gui=BOLD guifg=#1014AD guibg=NONE ctermbg=NONE cterm=BOLD ctermfg=19
hi Visual term=reverse ctermfg=16 ctermbg=153 gui=NONE guifg=Black guibg=#BDDFFF cterm=NONE
hi VisualNOS term=reverse ctermfg=16 ctermbg=153 gui=UNDERLINE guifg=Black guibg=#BDDFFF cterm=UNDERLINE

" Syntax group {{{1
hi Comment term=BOLD ctermfg=30 guifg=darkcyan
hi Constant term=UNDERLINE ctermfg=125 guifg=#B91F49
hi Error term=REVERSE ctermfg=231 ctermbg=196 guibg=Red guifg=White
hi Identifier term=UNDERLINE ctermfg=21 guifg=Blue
hi Number   term=UNDERLINE ctermfg=34 gui=NONE guifg=#00C226 cterm=NONE
hi PreProc term=UNDERLINE ctermfg=26 guifg=#1071CE
hi Special term=BOLD ctermfg=196 guifg=red2
hi Statement term=BOLD ctermfg=202 gui=NONE guifg=#F06F00 cterm=NONE
hi Tag term=BOLD ctermfg=22 guifg=DarkGreen
hi Todo term=STANDOUT ctermbg=226 ctermfg=21 guifg=Blue guibg=Yellow
hi Type term=UNDERLINE ctermfg=21 gui=NONE guifg=Blue cterm=NONE
hi! link String	Constant
hi! link Character	Constant
hi! link Boolean	Constant
hi! link Float		Number
hi! link Function	Identifier
hi! link Conditional	Statement
hi! link Repeat	Statement
hi! link Label		Statement
hi! link Operator	Statement
hi! link Keyword	Statement
hi! link Exception	Statement
hi! link Include	PreProc
hi! link Define	PreProc
hi! link Macro		PreProc
hi! link PreCondit	PreProc
hi! link StorageClass	Type
hi! link Structure	Type
hi! link Typedef	Type
hi! link SpecialChar	Special
hi! link Delimiter	Special
hi! link SpecialComment Special
hi! link Debug		Special

" HTML {{{1
hi htmlLink                 gui=UNDERLINE guifg=#0000ff guibg=NONE ctermbg=NONE cterm=UNDERLINE ctermfg=21
hi htmlBold                 gui=BOLD cterm=BOLD
hi htmlBoldItalic           gui=BOLD,ITALIC cterm=BOLD
hi htmlBoldUnderline        gui=BOLD,UNDERLINE cterm=BOLD,UNDERLINE
hi htmlBoldUnderlineItalic  gui=BOLD,UNDERLINE,ITALIC cterm=BOLD,UNDERLINE
hi htmlItalic               gui=ITALIC cterm=NONE
hi htmlUnderline            gui=UNDERLINE cterm=UNDERLINE
hi htmlUnderlineItalic      gui=UNDERLINE,ITALIC cterm=UNDERLINE

" Tabs {{{1
highlight TabLine     term=underline cterm=underline ctermfg=0 ctermbg=252 gui=underline guibg=LightGrey
highlight TabLineFill term=reverse cterm=reverse gui=reverse
highlight TabLineSel  term=bold cterm=bold gui=bold

" Spell Checker {{{1
if v:version >= 700
    highlight SpellBad    term=reverse   ctermbg=217 gui=undercurl guisp=Red cterm=NONE
    highlight SpellCap    term=reverse   ctermbg=153  gui=undercurl guisp=Blue cterm=NONE
    highlight SpellRare   term=reverse   ctermbg=219 gui=undercurl guisp=Magenta cterm=NONE
    highlight SpellLocal  term=underline ctermbg=159 gui=undercurl guisp=DarkCyan cterm=NONE
endif 

" Completion {{{1
highlight Pmenu      ctermbg=153  guifg=Black   guibg=#BDDFFF ctermfg=16
highlight PmenuSel   ctermbg=214   guifg=Black   guibg=Orange ctermfg=16
highlight PmenuSbar  ctermbg=252   guifg=#CCCCCC guibg=#CCCCCC ctermfg=252
highlight PmenuThumb cterm=reverse  gui=reverse guifg=Black   guibg=#AAAAAA ctermbg=248 ctermfg=16

" Misc {{{1
highlight KDE              guifg=magenta gui=NONE cterm=NONE ctermfg=201
highlight mySpecialSymbols guifg=magenta gui=NONE cterm=NONE ctermfg=201 


highlight MatchParen  term=reverse ctermbg=157 gui=bold guibg=#B5EEB5 guifg=black cterm=bold ctermfg=16

hi CursorColumn guibg=grey90 ctermbg=254
hi CursorLine gui=NONE guibg=grey90 ctermbg=254 cterm=NONE
hi Ignore guifg=bg ctermfg=bg
hi MoreMsg gui=bold cterm=bold
hi SignColumn guibg=grey guifg=darkblue ctermbg=250 ctermfg=18
hi SpecialKey guifg=blue ctermfg=21
hi TabLine guifg=NONE ctermfg=NONE
hi Underlined guifg=slateblue ctermfg=62
hi lCursor guibg=fg guifg=bg ctermbg=fg ctermfg=bg

" vim600:foldmethod=marker
