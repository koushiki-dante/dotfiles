local DEFAULT_CONFIG = {
  guicursor = "",

  clipboard = "unnamedplus",
  wrap = false,
  conceallevel = 0,

  nu = true,
  relativenumber = true,

  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true,

  smartindent = true,

  swapfile = false,
  backup = false,
  writebackup = false,
  undodir = os.getenv("HOME") .. "/.vim/undodir",
  undofile = true,

  hlsearch = false,
  incsearch = true,
  ignorecase = true,
  smartcase = true,

  termguicolors = true,

  scrolloff = 8,
  sidescrolloff = 8,
  signcolumn = "yes",
  colorcolumn = "80",

  updatetime = 300,
  mouse = "a",
}

for k, v in pairs(DEFAULT_CONFIG) do
  vim.opt[k] = v
end
