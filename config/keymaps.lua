-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Run Python files
vim.keymap.set("n", "<leader>rp", ":w<cr>:split | term python %<cr>", { desc = "Run Python" })

-- Run C files (Compiles then Runs)
vim.keymap.set("n", "<leader>rc", ":w<cr>:split | term gcc % -o %:r && %:r.exe<cr>", { desc = "Run C" })

vim.keymap.set("n", "<CR>", function()
  local col = vim.api.nvim_win_get_cursor(0)[2]
  local line = vim.api.nvim_get_current_line()

  local before_cursor = line:sub(1, col)
  local after_cursor = line:sub(col + 1)

  local prefix = before_cursor:match("%[%[([^%]%[]-)$")
  local suffix = after_cursor:match("^([^%]%[]-)%]%]")

  if prefix and suffix then
    local link = prefix .. suffix
    local cur_file_dir = vim.fn.expand("%:p:h")
    local filepath = cur_file_dir .. "/" .. link .. ".md"

    vim.cmd("edit " .. filepath)
  else
    local cr = vim.api.nvim_replace_termcodes("<CR>", true, true, true)
    vim.api.nvim_feedkeys(cr, "n", true)
  end
end, { desc = "Follow wiki link" })

vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })
vim.api.nvim_set_keymap("i", "jk", "<Esc>o", { noremap = false })

vim.keymap.set("n", "<up>", "<nop>")
vim.keymap.set("n", "<down>", "<nop>")
vim.keymap.set("n", "<left>", "<nop>")
vim.keymap.set("n", "<right>", "<nop>")

vim.keymap.set("i", "<up>", "<nop>")
vim.keymap.set("i", "<down>", "<nop>")
vim.keymap.set("i", "<left>", "<nop>")
vim.keymap.set("i", "<right>", "<nop>")

vim.keymap.set("n", "<C-t>", "<cmd>tabnew<cr>", { desc = "new tab" })
vim.keymap.set("n", "<C-w>", "<cmd>tabclose<cr>", { desc = "next tab" })
vim.keymap.set("n", "<Tab>", "<cmd>tabnext<cr>", { desc = "next tab" })
vim.keymap.set("n", "<S-Tab>", "<cmd>tabprevious<cr>", { desc = "previous tab" })
