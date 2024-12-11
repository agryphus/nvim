require("which-key").setup({
  win = {
    border = "single", -- none, single, double, shadow
    padding = { 0, 0, 0, 0 }, -- extra window padding [top, right, bottom, left]
    zindex = 1000, -- positive value to position WhichKey above other floating windows.
    wo = {
      winblend = 0, -- value between 0-100 0 for fully opaque and 100 for fully transparent
    },
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
})

