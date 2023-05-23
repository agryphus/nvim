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

vim.cmd[[colorscheme no-clown-fiesta]]

-- My own color overrides
local hl = vim.api.nvim_set_hl
hl(0, 'TSConstant', { fg = palette.yellow })
hl(0, 'EndOfBuffer', { fg = palette.medium_gray })
hl(0, 'ErrorMsg', { fg = palette.yellow })
hl(0, 'LineNr', { fg = palette.medium_gray })
hl(0, 'NvimTreeCursorLine', { fg = palette.yellow })
hl(0, 'NvimTreeEndOfBuffer', { fg = palette.medium_gray })
hl(0, 'NvimTreeFolderIcon', { fg = palette.yellow })

