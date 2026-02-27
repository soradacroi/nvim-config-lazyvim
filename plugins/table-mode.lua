return {
  "dhruvasagar/vim-table-mode",
  cmd = { "TableModeToggle", "TableModeEnable" },
  ft = { "markdown" },
  config = function()
    vim.g.table_mode_corner = "|"
  end,
}
