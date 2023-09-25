vim.keymap.set("n", "<leader>e", function ()
  vim.g.lf_command_override = string.format('LF_OVERRIDE_X=%d LF_OVERRIDE_Y=%d lf',
      math.floor(vim.go.columns * 0.5),
      math.ceil(vim.go.lines * 0.25)
  )
  vim.cmd("Lf")
end)

