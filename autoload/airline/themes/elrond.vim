let g:airline#themes#elrond#palette = {}

let s:bg   = '#5f5f5f'
let s:fg   = '#efefef'

let s:N1 = [s:fg, s:bg, 0, 7]
let s:N2 = [s:fg, s:bg, 7, 8]
let s:N3 = [s:fg, s:bg, 15, 8]

let s:T1 = [s:fg, s:bg, 7, 8]
let s:T2 = [s:fg, s:bg, 7, 8]
let s:T3 = [s:fg, s:bg, 7, 8]

let s:I1 = [s:fg, s:bg, 4, 7]
let s:I2 = [s:fg, s:bg, 7, 4]
let s:I3 = [s:fg, s:bg, 15, 4]

let s:V1 = [s:fg, s:bg, 6, 7]
let s:V2 = [s:fg, s:bg, 7, 6]
let s:V3 = [s:fg, s:bg, 15, 6]

let g:airline#themes#elrond#palette.normal   = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#elrond#palette.inactive = airline#themes#generate_color_map(s:T1, s:T2, s:T3)
let g:airline#themes#elrond#palette.insert   = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#elrond#palette.visual   = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let g:airline#themes#elrond#palette.accents = {
			\   'red': ['#ff0000', '', 1, '' ]
			\ }
