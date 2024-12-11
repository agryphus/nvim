vim.g.mapleader = " "

-- opens file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- centers cursor when jumping up and down page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- easier escape back to normal mode
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

-- universal find and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- moving highlighted text 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- allow for pasting over without losing buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- allow copying to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+y")

-- allow deleting to void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>tc",
  function ()
    local col = "78"
    print(vim.o.cc)
    if vim.o.cc == col then
      vim.o.cc = ""
    else
      vim.o.cc = col
    end
  end,
  {desc = "Toggle color column"})

vim.keymap.set("n", "<leader>t", "<noop>", {desc = "Toggle"})
vim.keymap.set("n", "<leader>tl",
  function ()
    if vim.wo.number == false and vim.wo.relativenumber == false then
      vim.wo.number = true
      print("absolute numbers")
    elseif vim.wo.number == true and vim.wo.relativenumber == false then
      vim.wo.relativenumber = true
      print("relative line numbers")
    else
      vim.wo.number = false
      vim.wo.relativenumber = false
      print("no line numbers")
    end
  end,
  {desc = "Toggle line numbers"})

vim.keymap.set("n", "<leader>tw",
  function ()
    if vim.wo.wrap then
      vim.wo.wrap = false
      print("nowrap")
    else
      vim.wo.wrap = true
      print("wrap")
    end
  end,
  {desc = "Toggle line wrapping"})

-- case insensitive search
vim.keymap.set("n", "<leader>/", "/\\c")
vim.keymap.set("n", "<leader>?", "?\\c")

vim.keymap.set("n", "<leader>hF",
    function()
        local result = vim.treesitter.get_captures_at_cursor(0)
        print(vim.inspect(result))
    end,
    { noremap = true, silent = false, desc = "Describe face" }
)

