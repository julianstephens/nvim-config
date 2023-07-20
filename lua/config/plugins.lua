-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function()
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Syntax Highlighting & Visual
	use("kyazdani42/nvim-web-devicons")
	use({
		"norcalli/nvim-colorizer.lua",
		config = "require'core.colorizer'",
		event = "BufRead",
	})
	use({
		"hoob3rt/lualine.nvim",
		config = "require'core.lualine'",
		requires = {
			"kyazdani42/nvim-web-devicons",
			opt = true,
		},
		event = "BufWinEnter",
	})
	use({
		"akinsho/bufferline.nvim",
		tag = "v2.*",
		requires = "kyazdani42/nvim-web-devicons",
		config = "require'core.bufferline'",
	})
	use({
		"goolord/alpha-nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = "require'core.alpha'",
	})
	use({
		"lukas-reineke/indent-blankline.nvim",
		config = "require'core.blankline'",
		event = "BufRead",
	})

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-github.nvim" } },
		config = "require'core.telescope'",
	})
	use({ "nvim-telescope/telescope-ui-select.nvim" })
	use({ "nvim-telescope/telescope-file-browser.nvim" })
	use({ "nvim-telescope/telescope-project.nvim" })

	-- -- LSP
	use({
		"neovim/nvim-lspconfig",
		requires = { { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" } },
		config = "require'core.lspconfig'",
	})

	use({
		"jose-elias-alvarez/null-ls.nvim",
		config = "require'core.null-ls'",
		requires = { "nvim-lua/plenary.nvim" },
	})
	use({
		"jose-elias-alvarez/nvim-lsp-ts-utils",
		requires = { "nvim-lua/plenary.nvim" },
	})
	use({
		"hrsh7th/nvim-cmp",
		config = "require'core.cmp'",
	})
	use("hrsh7th/cmp-nvim-lsp")
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-vsnip" })
	use({ "hrsh7th/vim-vsnip" })
	use({
		"windwp/nvim-autopairs",
		after = { "nvim-cmp" },
		config = "require'core.autopairs'",
	})
	use({ "onsails/lspkind-nvim" })
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = "require'core.trouble'",
	})
	use({
		"ray-x/go.nvim",
		config = function()
			require("go").setup()
		end,
	})
	use("ray-x/guihua.lua") -- recommended if need floating window support
	use("marilari88/twoslash-queries.nvim")

	-- Debugging
	use({
		"mfussenegger/nvim-dap",
		opt = true,
		module = { "dap" },
		requires = {
			"theHamsta/nvim-dap-virtual-text",
			"mfussenegger/nvim-dap-python",
			"nvim-telescope/telescope-dap.nvim",
			{ "leoluz/nvim-dap-go", module = "dap-go" },
			{ "jbyuki/one-small-step-for-vimkind", module = "osv" },
			{ "mxsdev/nvim-dap-vscode-js", module = { "dap-vscode-js" } },
			{
				"microsoft/vscode-js-debug",
				opt = true,
				run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
			},
		},
		config = "require 'core.dap'",
		disable = false,
	})
	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })

	use({
		"folke/neodev.nvim",
		config = function()
			require("neodev").setup({
				library = { plugins = { "nvim-dap-ui" }, types = true },
			})
		end,
	})

	-- Todo
	use({
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup()
		end,
	})
	use({
		"JellyApple102/flote.nvim",
		config = function()
			require("flote").setup()
		end,
	})
	use({
		"nocksock/do.nvim",
		config = function()
			require("do").setup({
				winbar = true,
				kaomoji_mode = 1,
			})
		end,
	})

	-- -- Themes
	use("folke/tokyonight.nvim")
	use("tiagovla/tokyodark.nvim")

	-- -- TreeSitter
	use({
		"nvim-treesitter/nvim-treesitter",
		event = "BufWinEnter",
		run = ":TSUpdate",
		config = "require'core.treesitter'",
	})
	use({
		"windwp/nvim-ts-autotag",
		after = "nvim-treesitter",
	})
	use({
		"nvim-treesitter/nvim-treesitter-textobjects",
		after = "nvim-treesitter",
	})
	use({
		"JoosepAlviste/nvim-ts-context-commentstring",
		after = "nvim-treesitter",
	})
	use({
		"nvim-treesitter/nvim-treesitter-context",
		config = function()
			require("treesitter-context").setup()
		end,
		after = "nvim-treesitter",
	})

	-- Writing
	use("junegunn/goyo.vim")
	use("junegunn/limelight.vim")
	use({
		"preservim/vim-pencil",
		config = "require'core.pencil'",
	})
	use({
		"gaoDean/autolist.nvim",
		config = function()
			require("autolist").setup({})
		end,
	})
	use("allen-mack/nvim-table-md")

	-- -- Miscellaneous
	use({
		"ellisonleao/glow.nvim",
		config = function()
			require("glow").setup({
				width = 120,
			})
		end,
	})
	use({
		"terrortylor/nvim-comment",
		cmd = "CommentToggle",
		config = "require'core.comment'",
	})
	use({
		"folke/which-key.nvim",
		event = "BufWinEnter",
		config = "require'core.whichkey'",
	})
	use({
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = "require'core.gitsigns'",
	})
	use({
		"danymat/neogen",
		config = function()
			require("neogen").setup({
				enabled = true,
				languages = {
					typescript = {
						template = {
							annotation_convention = "tsdoc",
						},
					},
				},
			})
		end,
		after = "nvim-treesitter",
	})
	use("tpope/vim-repeat")
	use({ "mrjones2014/legendary.nvim" })
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})
	use({
		"ggandor/lightspeed.nvim",
		config = "require'core.lightspeed'",
	})
	use({
		"phaazon/hop.nvim",
		config = function()
			require("hop").setup()
		end,
	})

	vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				window = {
					filesystem = {
						filtered_items = {
							hide_dotfiles = false,
							hide_hidden = false,
							hide_by_name = {
								"node_modules",
							},
						},
					},
				},
			})
		end,
	})
	if packer_bootstrap then
		require("packer").sync()
	end
end)
