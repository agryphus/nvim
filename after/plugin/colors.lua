local palette = {
  none = "NONE",
  fg = "#E1E1E1",
  bg = "#151515",
  alt_bg = "#171717",
  accent = "#202020",
  white = "#E1E1E1",
  gray = "#373737",
  medium_gray = "#727272",
  light_gray = "#AFAFAF",
  blue = "#BAD7FF",
  gray_blue = "#7E97AB",
  medium_gray_blue = "#A2B5C1",
  cyan = "#88afa2",
  red = "#b46958",
  green = "#90A959",
  yellow = "#F4BF75",
  orange = "#FFA557",
  purple = "#AA749F",
  magenta = "#AA759F",
  cursor_fg = "#151515",
  cursor_bg = "#D0D0D0",
  sign_add = "#586935",
  sign_change = "#51657B",
  sign_delete = "#984936",
  error = "#984936",
  warning = "#ab8550",
  info = "#ab8550",
  hint = "#576f82",
  neogit_light_green = "#2A2E19",
  neogit_blue = "#1B1F27",
  neogit_green = "#212513",
  neogit_light_red = "#402020",
  neogit_red = "#351D1D",
}

require("no-clown-fiesta").setup({
  transparent = true, -- Enable this to disable the bg color
})

vim.cmd[[
let s:base03  = [ '#151513', 233 ]
let s:base02  = [ '#202020', 236 ]
let s:base01  = [ '#373737', 239 ]
let s:base00  = [ '#727272', 242  ]
let s:base0   = [ '#808070', 244 ]
let s:base1   = [ '#949484', 246 ]
let s:base2   = [ '#a8a897', 248 ]
let s:base3   = [ '#E1E1E1', 253 ]
let s:yellow  = [ '#F4BF75', 3 ]
let s:orange  = [ '#FFA557', 216 ]
let s:red     = [ '#B46958', 131 ]
let s:purple  = [ '#AA749F', 181 ]
let s:blue    = [ '#7E97AB', 109 ]
let s:cyan    = [ '#BAD7FF', 23 ]
let s:green   = [ '#90A959', 108 ]
let s:white   = [ '#AFAFAF', 252 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ [ s:base02, s:green ],   [ s:base3,  s:base01 ] ]
let s:p.normal.right    = [ [ s:base02, s:base1 ],   [ s:base2,  s:base01 ] ]
let s:p.inactive.right  = [ [ s:base02, s:base00 ],  [ s:base0,  s:base02 ] ]
let s:p.inactive.left   = [ [ s:base0,  s:base02 ],  [ s:base00, s:base02 ] ]
let s:p.insert.left     = [ [ s:base02, s:blue ],    [ s:base3,  s:base01 ] ]
let s:p.replace.left    = [ [ s:base02, s:purple ],  [ s:base3,  s:base01 ] ]
let s:p.visual.left     = [ [ s:base02, s:red ],     [ s:base3,  s:base01 ] ]
let s:p.normal.middle   = [ [ s:base0,  s:base02 ] ]
let s:p.inactive.middle = [ [ s:base00, s:base02 ] ]
let s:p.tabline.left    = [ [ s:base3,  s:base00 ] ]
let s:p.tabline.tabsel  = [ [ s:base3,  s:base02 ] ]
let s:p.tabline.middle  = [ [ s:base01, s:base1 ] ]
let s:p.tabline.right   = copy(s:p.normal.right)
let s:p.normal.error    = [ [ s:red,    s:base02 ] ]
let s:p.normal.warning  = [ [ s:yellow, s:base01 ] ]

let g:lightline#colorscheme#mycolors#palette = lightline#colorscheme#flatten(s:p)
let g:lightline = {
      \ 'colorscheme': 'mycolors',
      \ }

" Don't need to see mode if lightline is installed
set noshowmode
]]

vim.cmd[[colorscheme no-clown-fiesta]]

-- My own color overrides
local hl = vim.api.nvim_set_hl
hl(0, 'TSConstant', { fg = palette.yellow })
hl(0, 'EndOfBuffer', { fg = palette.medium_gray })
hl(0, 'ErrorMsg', { fg = palette.yellow })
hl(0, 'LineNr', { fg = palette.medium_gray })
hl(0, 'NvimTreeCursorLine', { fg = palette.yellow })
hl(0, 'NvimTreeEndOfBuffer', { fg = palette.medium_gray })
hl(0, 'NvimTreeIndentMarker', { fg = palette.medium_gray })
hl(0, 'NvimTreeFolderIcon', { fg = palette.yellow })

