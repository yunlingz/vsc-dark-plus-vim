# VSC Dark Plus for VIM

## Preview

### Vim/Neovim

![nvim preview](https://raw.githubusercontent.com/yunlingz/vim-equinusocio-material-preview/master/vsc_dark_plus/nvim.png)

### Terminal

![term preview](https://raw.githubusercontent.com/yunlingz/vim-equinusocio-material-preview/master/vsc_dark_plus/term.png)

## Usage

iTerm color preset: [vsc_dark_plus.itermcolors](term/)

Neovim/Vim

```viml
Plug 'yunlingz/vsc_dark_plus'

" optional rainbow parentheses improved
" *vsc_dark_plus* has a built-in automated configuration for *rainbow*
" there is no need to specify `g:rainbow_conf` manually
Plug 'luochen1990/rainbow'

" true colors are required
syntax on
set termguicolors

" keywords bolded, disabled(=0) by default
let g:vsc_dark_plus_enable_bold = 1

colorscheme vsc_dark_plus

" better vertsplit char
set fillchars+=vert:│

let g:airline_theme = 'vsc_dark_plus'
let g:lightline = {
  \ 'colorscheme': 'vsc_dark_plus',
}
```

[basic color preset](preset_doc/color.txt)

## License

[BSD-2-Clause](LICENSE)
