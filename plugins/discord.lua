return {
  "vyfor/cord.nvim",
  build = ":Cord update",
  opts = {
    usercmds = true, -- Allows you to use :CordConnect or :CordDisconnect
    timer = {
      enable = true, -- Shows "01:24 elapsed"
      reset_on_idle = false, -- Keep the time going even if you stop typing
    },
    editor = {
      client = "neovim", -- Status will say "Playing Neovim"
      tooltip = "neovim", -- Hover text on the logo
    },
    display = {
      show_time = true, -- Show how long you've been coding
      show_repository = false, -- Show the GitHub repo name (if you're in one)
      show_cursor_position = false, -- Hide line/column (highly recommended for privacy)
      show_file_assets = true, -- Show the icon of the file type (Python, C, etc.)
    },
    text = {
      editing = function(opts)
        return opts.filename
      end,
      viewing = function(opts)
        return opts.filename
      end,
      workspace = "₍^. .^₎⟆", -- Your cute cat emoji
    },
  },
}
