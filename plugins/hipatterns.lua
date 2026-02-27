return {
  {
    "nvim-mini/mini.hipatterns",
    event = "BufReadPre",
    opts = function()
      local hi = require("mini.hipatterns")
      return {
        highlighters = {
          hex_color = hi.gen_highlighter.hex_color(),

          todo = { pattern = "%f[%w]TODO%f[%W]", group = "MiniHipatternsTodo" },
          note = { pattern = "%f[%w]NOTE%f[%W]", group = "MiniHipatternsNote" },
        },
      }
    end,
  },
}

-- #000000
-- #FFFFFF
-- #7de1ff
-- #dc7dff
