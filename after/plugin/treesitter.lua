require'nvim-treesitter.configs'.setup {
	ensure_installed = { "vim", "javascript", "html", "css", "python", "java", "lua", "perl", "php", "c", "json" },

    ignore_install = { "latex", "markdown", "htmldjango" },

	sync_install = false,

	auto_install = false,

	highlight = {
		enable = true,

		addition_vim_regex_highlighting = false,
	},
}

