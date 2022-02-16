local options = {
    backup = false,
    encoding = "UTF-8",
    fileencoding = "UTF-8",
    fileencodings = "UTF-8",
    clipboard = "unnamedplus", 
    mouse = "a",
    smartcase = true,
    smartindent = true,
    expandtab = true,
    softtabstop = 4,
    shiftwidth = 4,
    wrap = false,
    scrolloff = 8,
    sidescrolloff = 8,
    splitbelow = true,
    splitright = true,
    number = true,
    regexpengine = 1,
    lazyredraw = true,
    termguicolors = true
}

local opt = vim.opt
for k, v in pairs(options) do
  opt[k] = v
end
