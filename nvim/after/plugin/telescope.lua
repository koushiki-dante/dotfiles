local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
vim.keymap.set("n", "<leader>sl", builtin.live_grep, {})
vim.keymap.set("n", "<leader>sg", function()
  builtin.grep_string({ search = vim.fn.input("grep > ") })
end)
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
