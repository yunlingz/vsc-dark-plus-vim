" SPDX-License-Identifier: BSD-2-Clause
"
" Copyright 2022 Yunling Zhu <yunling.zhu@outlook.com>

" -------- begin function ----------
let g:airline#themes#vsc_dark_plus#palette = {}
function! airline#themes#vsc_dark_plus#refresh()

let s:colors = vsc_dark_plus#get_colors()

let s:palette = {}

let s:airline_b = [s:colors.foreground, s:colors.win_bg, '', '']
let s:airline_c = [s:colors.foreground, s:colors.background_lighter, '', '']
let s:airline_modified_group = {
  \ 'airline_c': [s:colors.green, s:colors.background_lighter, '', ''],
  \ }


let s:airline_a_normal = [s:colors.foreground, s:colors.normal, '', '']
let s:airline_b_normal = s:airline_b
let s:airline_c_normal = s:airline_c
let s:palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)
let s:palette.normal_modified = s:airline_modified_group


let s:airline_a_insert = [s:colors.foreground, s:colors.insert, '', '']
let s:airline_b_insert = s:airline_b
let s:airline_c_insert = s:airline_c
let s:palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)
let s:palette.insert_modified = s:airline_modified_group


let s:airline_a_visual = [s:colors.foreground, s:colors.visual, '', '']
let s:airline_b_visual = s:airline_b
let s:airline_c_visual = s:airline_c
let s:palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_visual, s:airline_c_visual)
let s:palette.visual_modified = s:airline_modified_group


let s:palette.terminal = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)


let s:palette.replace = s:palette.insert
let s:palette.replace_modified = s:airline_modified_group


let s:airline_a_inactive = [s:colors.foreground, s:colors.win_bg, '', '']
let s:airline_b_inactive = [s:colors.foreground, s:colors.win_bg, '', '']
let s:airline_c_inactive = s:airline_c
let s:palette.inactive = airline#themes#generate_color_map(s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive)
let s:palette.inactive_modified = s:airline_modified_group


let s:airline_a_commandline = s:airline_a_normal
let s:airline_b_commandline = s:airline_b
let s:airline_c_commandline = s:airline_c
let s:palette.commandline = airline#themes#generate_color_map(s:airline_a_commandline, s:airline_b_commandline, s:airline_c_commandline)

let g:airline#themes#vsc_dark_plus#palette = s:palette
" ------
endfunction
" -------- end function ----------
call airline#themes#vsc_dark_plus#refresh()
