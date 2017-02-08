" 256 noir. Basically: dark background, numerals & errors red,
" rest different shades of gray.
"
" colors 232--250 are shades of gray, from dark to light;
" 16=black, 255=white, 196=red, 88=darkred.

set background=dark
if version > 580
	" no guarantees for version 5.8 and below, but this makes it stop
	" complaining
	highlight clear
	if exists("syntax_on")
		syntax reset
	endif
endif
let g:colors_name = "256_noir"

if has("gui_running") || &t_Co == 256
	hi Normal	ctermfg=250	ctermbg=16	guifg=#bcbcbc	guibg=#000000
	hi SpellRare	ctermfg=124	ctermbg=16	guifg=#af0000	guibg=#000000
	hi Character	ctermfg=196	ctermbg=16	guifg=#ff0000	guibg=#000000
	hi Condtional	ctermfg=196	ctermbg=16	guifg=#ff0000	guibg=#000000
	hi Float	ctermfg=196	ctermbg=16	guifg=#ff0000	guibg=#000000
	hi Folded	ctermfg=196	ctermbg=16	guifg=#ff0000	guibg=#000000
	hi Number	ctermfg=196	ctermbg=16	guifg=#ff0000	guibg=#000000
	hi Tag	ctermfg=196	ctermbg=16	guifg=#ff0000	guibg=#000000
	hi WarningMsg	ctermfg=196	ctermbg=16	guifg=#ff0000	guibg=#000000
	hi Comment	ctermfg=240	ctermbg=16	guifg=#585858	guibg=#000000
	hi DiffDelete	ctermfg=240	ctermbg=16	guifg=#585858	guibg=#000000
	hi diffRemoved	ctermfg=240	ctermbg=16	guifg=#585858	guibg=#000000
	hi LineNr	ctermfg=240	ctermbg=16	guifg=#585858	guibg=#000000
	hi NonText	ctermfg=240	ctermbg=16	guifg=#585858	guibg=#000000
	hi StatusLineNC	ctermfg=240	ctermbg=16	guifg=#585858	guibg=#000000
	hi SpecialComment	ctermfg=245	ctermbg=16	guifg=#8a8a8a	guibg=#000000
	hi String	ctermfg=245	ctermbg=16	guifg=#8a8a8a	guibg=#000000
	hi Boolean	ctermfg=250	ctermbg=16	guifg=#bcbcbc	guibg=#000000
	hi Debug	ctermfg=250	ctermbg=16	guifg=#bcbcbc	guibg=#000000
	hi Delimiter	ctermfg=250	ctermbg=16	guifg=#bcbcbc	guibg=#000000
	hi Exception	ctermfg=250	ctermbg=16	guifg=#bcbcbc	guibg=#000000
	hi FoldColumn	ctermfg=250	ctermbg=16	guifg=#bcbcbc	guibg=#000000
	hi Identifier	ctermfg=250	ctermbg=16	guifg=#bcbcbc	guibg=#000000
	hi Macro	ctermfg=250	ctermbg=16	guifg=#bcbcbc	guibg=#000000
	hi ModeMsg	ctermfg=250	ctermbg=16	guifg=#bcbcbc	guibg=#000000
	hi MoreMsg	ctermfg=250	ctermbg=16	guifg=#bcbcbc	guibg=#000000
	hi Question	ctermfg=250	ctermbg=16	guifg=#bcbcbc	guibg=#000000
	hi Title	ctermfg=250	ctermbg=16	guifg=#bcbcbc	guibg=#000000
	hi VertSplit	ctermfg=250	ctermbg=16	guifg=#bcbcbc	guibg=#000000
	hi Constant	ctermfg=252	ctermbg=16	guifg=#d0d0d0	guibg=#000000
	hi Define	ctermfg=255	ctermbg=16	guifg=#eeeeee	guibg=#000000
	hi DiffAdd	ctermfg=255	ctermbg=16	guifg=#eeeeee	guibg=#000000
	hi diffAdded	ctermfg=255	ctermbg=16	guifg=#eeeeee	guibg=#000000
	hi Directory	ctermfg=255	ctermbg=16	guifg=#eeeeee	guibg=#000000
	hi Function	ctermfg=255	ctermbg=16	guifg=#eeeeee	guibg=#000000
	hi Include	ctermfg=255	ctermbg=16	guifg=#eeeeee	guibg=#000000
	hi Keyword	ctermfg=255	ctermbg=16	guifg=#eeeeee	guibg=#000000
	hi Label	ctermfg=255	ctermbg=16	guifg=#eeeeee	guibg=#000000
	hi Operator	ctermfg=255	ctermbg=16	guifg=#eeeeee	guibg=#000000
	hi PreCondit	ctermfg=255	ctermbg=16	guifg=#eeeeee	guibg=#000000
	hi PreProc	ctermfg=255	ctermbg=16	guifg=#eeeeee	guibg=#000000
	hi Repeat	ctermfg=255	ctermbg=16	guifg=#eeeeee	guibg=#000000
	hi Special	ctermfg=255	ctermbg=16	guifg=#eeeeee	guibg=#000000
	hi SpecialChar	ctermfg=255	ctermbg=16	guifg=#eeeeee	guibg=#000000
	hi Statement	ctermfg=255	ctermbg=16	guifg=#eeeeee	guibg=#000000
	hi diffCommon	ctermfg=255	ctermbg=16	guifg=#eeeeee	guibg=#000000
	hi StatusLine	ctermfg=255	ctermbg=16	guifg=#eeeeee	guibg=Red	ctermbg=White
	hi WildMenu	ctermfg=DarkGray	ctermbg=White
endif
