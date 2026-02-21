vim.g.mapleader = " "

local map = vim.keymap.set

map({ "n", "v" }, "n", "h", { desc = "Left" })
map({ "n", "v" }, "i", "l", { desc = "Right" })
map({ "n", "v" }, "u", "v:count == 0 ? 'gk' : 'k'", { expr = true, desc = "Up" })
map({ "n", "v" }, "e", "v:count == 0 ? 'gj' : 'j'", { expr = true, desc = "Down" })

map({ "n", "v" }, "h", "g^", { desc = "Start of line (non ws)" })
map({ "n", "v" }, "o", "g$", { desc = "End of line" })

map({ "n", "v" }, "t", "W", { desc = "Next WORD" })
map({ "n", "v" }, "T", "w", { desc = "Next word" })
map({ "n", "v" }, "r", "B", { desc = "Prev WORD" })
map({ "n", "v" }, "R", "b", { desc = "Prev word" })

map({ "n", "v" }, "a", "i", { desc = "Insert" })
map({ "n", "v" }, "w", "a", { desc = "Append" })

map({ "n", "v" }, "q", "u", { desc = "Undo" })

map({ "v" }, "<leader>p", '"_dP', { desc = "Paste without coping overwritten text" })

map({ "n", "i", "s" }, "<Esc>", "<Esc><cmd>noh<CR>", { desc = "Escape and :noh" })

map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save buffer" })
map("n", "<leader>x", "<cmd>w|bd<CR>", { desc = "Save and close buffer" })
map("n", "<leader>q", "<cmd>wqa<CR>", { desc = "Save and close all buffers" })
map("n", "<leader>Q", "<cmd>qa!<CR>", { desc = "Force quit all buffers without saving" })

map("n", "<leader>n", "<cmd>bp<CR>", { desc = "Prev buffer" })
map("n", "<leader>i", "<cmd>bn<CR>", { desc = "Next buffer" })

map("n", "<leader>ld", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "<leader>lk", vim.lsp.buf.hover, { desc = "Show hover info" })
map("n", "<leader>lK", vim.lsp.buf.signature_help, { desc = "Show signature help" })
map("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename symbol" })
map("n", "<leader>lc", vim.lsp.buf.code_action, { desc = "LSP code action" })
map("n", "<leader>lh", function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = "Toggle LSP inlay hints" })

map("n", "<leader>t", "<cmd>terminal<CR>")
map("t", "<esc>", "<C-\\><C-n>")

map("n", "<leader>ff", "<cmd>FzfLua files<CR>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>", { desc = "Grep files" })
map("n", "<leader>fb", "<cmd>FzfLua buffers<CR>", { desc = "Search opened buffers" })
map("n", "<leader>fr", "<cmd>FzfLua oldfiles<CR>", { desc = "Search opened files history" })

map("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle neotree" })

map("n", "<leader>b", function()
  require("dap").toggle_breakpoint()
end)
map("n", "<leader>dc", function()
  require("dap").continue()
end)
