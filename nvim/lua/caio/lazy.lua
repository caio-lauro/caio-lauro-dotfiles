local lazypath = vim.fn.stdpath("data") .. "lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "caio.plugins" }, { import = "caio.plugins.lsp" } }, {
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})

vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = "none" })
