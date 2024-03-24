local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown({}),

      -- pseudo code / specification for writing custom displays, like the one
      -- for "codeactions"
      -- specific_opts = {
      --   [kind] = {
      --     make_indexed = function(items) -> indexed_items, width,
      --     make_displayer = function(widths) -> displayer
      --     make_display = function(displayer) -> function(e)
      --     make_ordinal = function(e) -> string
      --   },
      --   -- for example to disable the custom builtin "codeactions" display
      --      do the following
      --   codeactions = false,
      -- }
    },
  },
})
-- To get ui-select loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
telescope.load_extension("ui-select")

vim.keymap.set("n", "<leader>fi", builtin.find_files, {})
vim.keymap.set("n", "<leader>lg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>gs", function()
	builtin.grep_string({ search = vim.fn.input("grep > ") })
end)
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
