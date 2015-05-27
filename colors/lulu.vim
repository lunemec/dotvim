" Vim color file
" Maintainer:   Lukas Nemec <lu.nemec@gmail.com>


"BASED ON {
"https://github.com/vim-scripts/tchaba
"}


"highlight clear uses the background value, so background must be set first
set background=dark

"Reset all highlighting to the defaults
highlight clear


if exists("syntax_on")
        syntax reset
endif

let colors_name = "lulu"

"Vim’s syntax groups
"To see the full list, run ':source $VIMRUNTIME/syntax/hitest.vim'

"
"Syntax highlighting groups
"
hi MatchParen       ctermfg=16  ctermbg=208 cterm=bold
hi Constant         ctermfg=166             cterm=bold
hi Special          ctermfg=9
hi Type             ctermfg=118
hi Comment          ctermfg=23
hi ColorColumn                  ctermbg=235

hi Conditional      ctermfg=118
hi Repeat           ctermfg=118
hi Statement        ctermfg=118

hi Label            ctermfg=154

hi StorageClass     ctermfg=196
hi Exception        ctermfg=196
hi Structure        ctermfg=196

hi Number           ctermfg=126
hi Float            ctermfg=166
hi String           ctermfg=160
hi SpecialChar      ctermfg=67
hi Character        ctermfg=67
hi Identifier       ctermfg=166

hi PreProc          ctermfg=61
hi PreCondit        ctermfg=61
hi Macro            ctermfg=61
hi Todo             ctermfg=26 ctermbg=235

"
"Highlighting groups for various occasions
"
"
hi Search       ctermfg=0   ctermbg=48
hi IncSearch    ctermfg=46  ctermbg=16

hi ErrorMsg     ctermfg=1   ctermbg=233
hi Error        ctermfg=15  ctermbg=9

hi Directory    ctermfg=34

hi Visual       ctermfg=16  ctermbg=192

hi LineNr       ctermfg=250 ctermbg=234

hi Pmenu        ctermfg=26
hi PmenuSel     ctermfg=232 ctermbg=10
hi PmenuSbar    ctermfg=26
hi PmenuThumb   ctermfg=26

hi NonText ctermfg=236
hi SpecialKey ctermfg=236

hi Title        ctermfg=160

hi Normal       ctermfg=252 ctermbg=233
