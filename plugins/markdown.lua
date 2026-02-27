return {
  {
    "Meanderingprogrammer/render-markdown.nvim",
    opts = {
      code = {
        style = "block",
        position = "left",
      },
    },
    config = function(_, opts)
      require("render-markdown").setup(opts)
      vim.api.nvim_set_hl(0, "RenderMarkdownCode", { bg = "NONE" })
    end,
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          -- This adds the --disable MD013 flag to the linter command
          args = { "--disable", "MD013", "--" },
        },
      },
    },
  },
}
