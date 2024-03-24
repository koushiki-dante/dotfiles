return {
	-- Fuzzy Finder --
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- User Interface --
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	{ "rose-pine/neovim", name = "rose-pine" },

	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},

	-- LSP --
	{ "williamboman/mason.nvim" }, -- Optional
	{ "williamboman/mason-lspconfig.nvim" }, -- Optional

	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "neovim/nvim-lspconfig" },
	{ "nvim-telescope/telescope-ui-select.nvim" },
	{ "nvimtools/none-ls.nvim" },

	-- Autocompletion --
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},

	-- Harpoon --
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
}
