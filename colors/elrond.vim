" vim: tw=0 ts=4 sw=4 et
" Vim color file
"
" Based on Vim's built-in "elflord" color scheme,
" originally by Ron Aaron <ron@ronware.org>
"
" Maintainer:   Adrian Perez <aperez@igalia.com>
"

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "elrond"
let g:elrond#cursorline256 = get(g:, 'elrond#cursorline256', 1)
let g:elrond#cursorline16  = get(g:, 'elrond#cursorline16' , 0)

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

highlight CursorLine NONE

if &t_Co == 256
    if g:elrond#cursorline256 == 1
        highlight CursorLine ctermbg=235
    endif

    highlight CursorLineNr ctermbg=235 ctermfg=246
    highlight LineNr       ctermbg=234 ctermfg=238
    highlight SignColumn   ctermbg=234
    highlight Pmenu        ctermbg=235 ctermfg=White
    highlight PmenuSel     ctermbg=238 ctermfg=White
    highlight PmenuSbar    ctermbg=238
    highlight PmenuThumb   ctermbg=240
    highlight VertSplit    ctermbg=235 ctermfg=235
    highlight StatusLine   ctermbg=235 ctermfg=246 cterm=NONE
    highlight StatusLineNC ctermbg=235 ctermfg=230 cterm=bold
    highlight TabLine      ctermbg=235 ctermfg=246 cterm=NONE
    highlight TabLineSel   ctermbg=246 ctermfg=235
    highlight TabLineFill  ctermbg=235             cterm=NONE
else
    if g:elrond#cursorline16 == 0
        highlight CursorLine ctermbg=DarkGrey cterm=bold
    endif

    highlight CursorLineNr ctermbg=DarkGrey  ctermfg=White     cterm=bold
    highlight LineNr       ctermbg=DarkGrey  ctermfg=LightGrey
    highlight SignColumn   ctermbg=Black     cterm=bold
    highlight Pmenu        ctermbg=DarkGrey  ctermfg=White
    highlight PmenuSel     ctermbg=LightGrey ctermfg=White     cterm=bold
    highlight PmenuSbar    ctermbg=DarkGrey  ctermfg=White
    highlight PmenuThumb   ctermbg=DarkGrey  ctermfg=LightGrey
    highlight VertSplit    ctermbg=DarkGrey  ctermfg=DarkGrey
    highlight StatusLine   ctermbg=White     ctermfg=DarkGrey  cterm=reverse,bold
    highlight StatusLineNC ctermbg=LightGrey ctermfg=DarkGrey  cterm=reverse
    highlight TabLine      ctermbg=DarkGrey  ctermfg=LightGrey cterm=NONE
    highlight TabLineSel   ctermbg=LightGrey ctermfg=White
    highlight TabLineFill  ctermbg=DarkGrey                    cterm=NONE
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
