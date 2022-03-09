" SPDX-License-Identifier: BSD-2-Clause
"
" Copyright 2022 Yunling Zhu <yunling.zhu@outlook.com>

let s:colors = {}

let s:colors.black = '#1E1E1E'
let s:colors.red = '#CE9178'
let s:colors.green = '#4EC9B0'
let s:colors.yellow = '#DCDCAA'
let s:colors.blue = '#569CD6'
let s:colors.magenta = '#C586C0'
let s:colors.cyan = '#9CDCFE'
let s:colors.white = '#D4D4D4'
let s:colors.gray = '#999999'

let s:colors.foreground = s:colors.white
let s:colors.background = s:colors.black
let s:colors.background_lighter = '#252525'

let s:colors.comment = '#6A9955'
let s:colors.const = '#4FC1FF'
let s:colors.num = '#B5CEA8'
let s:colors.special = '#D7BA7D'

let s:colors.selection_bg = '#264F78'
let s:colors.selection_fg = s:colors.foreground

let s:colors.cursor_bg = '#AEAEAE'
let s:colors.cursor_fg = s:colors.background
let s:colors.cursor_guide = '#282828'

let s:colors.split = '#474747'
let s:colors.line_nr = '#858585'

" -- TODO --

let s:colors.win_bg = '#323232'
let s:colors.selected_bg = '#094771'

let s:colors.sneak_bg = '#b32ef0'

let s:colors.none = 'NONE'
let s:colors.underline = 'underline'

let s:colors.bold = 'NONE'
if get(g:, 'vsc_dark_plus_enable_bold', 0) == 1
  let s:colors.bold = 'bold'
endif

function! vsc_dark_plus#get_colors() abort
  return s:colors
endfunction
