return {
  { "nvim-treesitter/nvim-treesitter", enabled = false },

  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        view = "cmdline",
      },
      popupmenu = {
        view = "cmdline_popup",
      },
      presets = {
        bottom_search = true,
        command_palette = false,
        long_message_to_split = true,
      },
    },
  },
}
