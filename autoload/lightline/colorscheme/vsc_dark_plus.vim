" SPDX-License-Identifier: BSD-2-Clause
"
" Copyright 2022 Yunling Zhu <yunling.zhu@outlook.com>

let s:colors = vsc_dark_plus#get_colors()

let s:p = { 'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {} }

let s:p.normal.left = [[s:colors.foreground, s:colors.normal], [s:colors.foreground, s:colors.win_bg]]
let s:p.normal.right = [[s:colors.foreground, s:colors.normal], [s:colors.foreground, s:colors.win_bg]]
let s:p.normal.middle = [[s:colors.foreground, s:colors.background_lighter]]
let s:p.normal.error = [[s:colors.foreground, s:colors.replace]]
let s:p.normal.warning = [[s:colors.foreground, s:colors.visual]]

let s:p.insert.left = [[s:colors.foreground, s:colors.insert], [s:colors.foreground, s:colors.win_bg]]
let s:p.insert.right = [[s:colors.foreground, s:colors.insert], [s:colors.foreground, s:colors.win_bg]]

let s:p.replace.left = [[s:colors.foreground, s:colors.replace], [s:colors.foreground, s:colors.win_bg]]
let s:p.replace.right = [[s:colors.foreground, s:colors.replace], [s:colors.foreground, s:colors.win_bg]]

let s:p.visual.left = [[s:colors.foreground, s:colors.visual], [s:colors.foreground, s:colors.win_bg]]
let s:p.visual.right = [[s:colors.foreground, s:colors.visual], [s:colors.foreground, s:colors.win_bg]]

let s:p.inactive.left =  [[s:colors.foreground, s:colors.win_bg], [s:colors.foreground, s:colors.win_bg]]
let s:p.inactive.right = [[s:colors.foreground, s:colors.win_bg], [s:colors.foreground, s:colors.win_bg]]
let s:p.inactive.middle = [[s:colors.foreground, s:colors.background_lighter]]

let s:p.tabline.left = [[s:colors.foreground, s:colors.background_lighter]]
let s:p.tabline.right = [[s:colors.foreground, s:colors.normal]]
let s:p.tabline.middle = [[s:colors.foreground, s:colors.background_lighter]]
let s:p.tabline.tabsel = [[s:colors.foreground, s:colors.normal]]

let g:lightline#colorscheme#vsc_dark_plus#palette = lightline#colorscheme#fill(s:p)
