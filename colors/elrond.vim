" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4 et
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2003 May 02

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "elrond"

hi Normal     guifg=#fafafa guibg=black

hi Comment    term=italic    ctermfg=DarkCyan        guifg=#80a0ff
hi Constant   term=underline ctermfg=Magenta         guifg=Magenta
hi Special    term=bold      ctermfg=DarkMagenta     guifg=Red
hi Identifier term=underline cterm=bold ctermfg=Cyan guifg=#40ffff
hi Statement  term=bold      ctermfg=Yellow gui=bold guifg=#aa4444
hi PreProc    term=underline ctermfg=LightBlue       guifg=#ff80ff
hi Type       term=underline ctermfg=LightGreen      guifg=#60ff60 gui=bold
hi Function   term=bold      ctermfg=White           guifg=White
hi Repeat     term=underline ctermfg=White           guifg=white
hi Operator                  ctermfg=Red             guifg=Red
hi Ignore                    ctermfg=black           guifg=bg
hi Error      term=reverse   ctermbg=Red    ctermfg=White guibg=Red  guifg=White
hi Todo       term=standout  ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow

hi CursorLine NONE
if &t_Co == 256
    highlight CursorLine   ctermbg=235
    highlight CursorLineNr ctermbg=235 ctermfg=246
    highlight LineNr       ctermbg=234 ctermfg=238
    highlight SignColumn   ctermbg=234
    highlight Pmenu        ctermbg=235 ctermfg=white
    highlight PmenuSel     ctermbg=238 ctermfg=white
    highlight PmenuSbar    ctermbg=238
    highlight PmenuThumb   ctermbg=240
    highlight VertSplit    ctermbg=235 ctermfg=235
    highlight StatusLineNC ctermfg=235
endif

hi link String         Constant
hi link Character      Constant
hi link Number         Constant
hi link Boolean        Constant
hi link Float          Number
hi link Conditional    Repeat
hi link Label          Statement
hi link Keyword        Statement
hi link Exception      Statement
hi link Include        PreProc
hi link Define         PreProc
hi link Macro          PreProc
hi link PreCondit      PreProc
hi link StorageClass   Type
hi link Structure      Type
hi link Typedef        Type
hi link Tag            Special
hi link SpecialChar    Special
hi link Delimiter      Special
hi link SpecialComment Special
hi link Debug          Special

