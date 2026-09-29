require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- Controls
map("n", "<M-Up>", ":m .-2<CR>==", { desc = "Move line up" })
map("n", "<M-Down>", ":m .+1<CR>==", { desc = "Move line down" })

map("i", "<M-Up>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up" })
map("i", "<M-Down>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down" })

map("n", "<leader>j", function ()
  vim.diagnostic.jump({count = 1})
end, {desc = "Next Diagnostics"})

map("n", "<leader>k", function ()
  vim.diagnostic.jump({count = -1})
end, {desc = "Next Diagnostics"})
--

--Cmp autocomplete


map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map(
	"n",
	"<Leader>dd",
	"<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
	{ desc = "Debugger set conditional breakpoint" }
)
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })

-- rustaceanvim
map("n", "<Leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", { desc = "Debugger testables" })
