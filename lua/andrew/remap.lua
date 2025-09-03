vim.g.mapleader = " "

-- opens file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- centers cursor when jumping up and down page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- step through visual lines by default
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "gj", "j")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "gk", "k")
vim.keymap.set("v", "j", "gj")
vim.keymap.set("v", "gj", "j")
vim.keymap.set("v", "k", "gk")
vim.keymap.set("v", "gk", "k")

-- easier escape back to normal mode
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

-- universal find and replace
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

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

local str = string.format

for i = 1, 9 do
 vim.keymap.set("n", str("<A-%s>", i), str("%sgt", i), { desc = str("Goto tab %s", i) })
 vim.keymap.set("t", str("<A-%s>", i), str("<C-\\><C-n>%sgt", i), { desc = str("Goto tab %s", i) })
end

vim.keymap.set("n", "<A-n>", "<CMD>tabnew<CR>", { desc = "Create a new tab" })
vim.keymap.set("n", "<A-CR>", "<CMD>tabnew<CR><CMD>term<CR>i", { desc = "Create a new tab with a terminal" })
vim.keymap.set("n", "<A-q>", "<CMD>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<A-0>", "<CMD>tablast<CR>", { desc = "Goto last tab" })
vim.keymap.set("n", "<A-]>", "<CMD>tabnext<CR>", { desc = "Goto next tab" })
vim.keymap.set("n", "<A-[>", "<CMD>tabprevious<CR>", { desc = "Goto prev tab" })
vim.keymap.set("n", "<A-->", "<CMD>tabm-<CR>", { desc = "Move tab to the left" })
vim.keymap.set("n", "<A-=>", "<CMD>tabm+<CR>", { desc = "Move tab to the right" })
vim.keymap.set("n", "<A-'>", "<CMD>tab split<CR>", { desc = "Clone window in new tab" })

vim.keymap.set("n", "<C-w><CR>", "<CMD>term<CR>i", { desc = "Terminal" })

vim.api.nvim_create_autocmd("TabEnter", {
  callback = function()
    local bufnr = vim.api.nvim_get_current_buf()
    local buftype = vim.api.nvim_buf_get_option(bufnr, "buftype")

    if buftype == "terminal" then
      -- Enter Terminal-Job mode
      vim.api.nvim_feedkeys("i", "n", false)
    end
  end,
})

