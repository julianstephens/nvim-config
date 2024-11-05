local wk = require("which-key")

wk.setup()

local mappings = {
	{ "<leader>f", group = "Files", remap = false },
	{ "<leader>fe", "<cmd>Telescope file_browser prompt_prefix=🔍<CR>", desc = "Explorer", remap = false },
	{ "<leader>ff", "<cmd>Telescope find_files prompt_prefix=🔍<CR>", desc = "Finder", remap = false },
	{ "<leader>fg", "<cmd>Telescope live_grep prompt_prefix=🔍<CR>", desc = "Grep", remap = false },
	{ "<leader>fh", "<cmd>Telescope oldfiles prompt_prefix=🔍<CR>", desc = "History", remap = false },
	{
		"<leader>fi",
		"<cmd>Telescope find_files hidden=true no_ignore=true prompt_prefix=🔍<CR>",
		desc = "Show Ignore",
		remap = false,
	},
	{ "<leader>fn", ":Neotree<CR>", desc = "File Tree", remap = false },
	{ "<leader>fp", ":lua require'telescope'.extensions.project.project{}<CR>", desc = "Projects", remap = false },
	{ "<leader>fq", ":<cmd>Telescope quicknote<CR>", desc = "Quicknote", remap = false },
	{ "<leader>ft", ":TodoTelescope<CR>", desc = "Todo", remap = false },
	{ "<leader>g", group = "Git", remap = false },
	{ "<leader>gb", "<cmd>lua require'gitsigns'.blame_line{full=true}()<CR>", desc = "Blame line", remap = false },
	{ "<leader>gh", group = "GitHub", remap = false },
	{ "<leader>ghg", "<cmd>lua require('telescope').extensions.gh.gist()<CR>", desc = "Gists", remap = false },
	{ "<leader>ghi", "<cmd>lua require('telescope').extensions.gh.issues()<CR>", desc = "Issues", remap = false },
	{ "<leader>ghp", "<cmd>lua require('telescope').extensions.gh.pull_request()<CR>", desc = "PRs", remap = false },
	{ "<leader>ghr", "<cmd>lua require('telescope').extensions.gh.run()<CR>", desc = "Run", remap = false },
	{
		"<leader>gp",
		"<cmd>lua require'gitsigns'.preview_h﻿﻿Generate detailed instructions for an advanced programming project that does not include machine learning. The project should use Golang as the primary language.unk()<CR>",
		desc = "Preview hunk",
		remap = false,
	},
	{ "<leader>gr", "<cmd>lua require'gitsigns'.reset_hunk()<CR>", desc = "Reset hunk", remap = false },
	{ "<leader>gs", "<cmd>lua require'gitsigns'.stage_hunk()<CR>", desc = "Stage hunk", remap = false },
	{ "<leader>gu", "<cmd>lua require'gitsigns'.undo_stage_hunk()<CR>", desc = "Unstage hunk", remap = false },
	{ "<leader>i", group = "Mason", remap = false },
	{ "<leader>ii", "<cmd>:MasonInstall ", desc = "Mason Install", remap = false },
	{ "<leader>im", "<cmd>:Mason<cr>", desc = "Mason UI", remap = false },
	{ "<leader>l", group = "LSP", remap = false },
	{ "<leader>li", ":LspInfo<CR>", desc = "View language servers", remap = false },
	{ "<leader>ll", ":LspLog<CR>", desc = "View language server log", remap = false },
	{ "<leader>n", group = "Quicknote", remap = false },
	{ "<leader>nc", "<cmd>:lua require('quicknote').NewNoteAtCWD()<CR>", desc = "Create project note", remap = false },
	{ "<leader>nn", "<cmd>:lua require('quicknote').OpenNoteAtCWD()<CR>", desc = "Open project note", remap = false },
	{ "<leader>o", group = "Trouble", remap = false },
	{ "<leader>od", "<cmd>Trouble preview_diagnostics<CR>", desc = "View diagnostics", remap = false },
	{ "<leader>ol", "<cmd>Trouble loclist<CR>", desc = "View location list", remap = false },
	{ "<leader>oq", "<cmd>Trouble quickfix<CR>", desc = "Quick fix diagnostics", remap = false },
	{ "<leader>ot", ":TodoTrouble<CR>", desc = "View todos", remap = false },
	{ "<leader>ow", "<cmd>Trouble workspace_diagnostics<CR>", desc = "View workspace diagnostics", remap = false },
	{ "<leader>os", "<cmd>Trouble symbols toggle<CR>", desc = "View symbols", remap = false },
	{ "<leader>p", group = "Lazy", remap = false },
	{ "<leader>pc", ":Lazy clean<CR>", desc = "Clean plugins", remap = false },
	{ "<leader>pi", ":Lazy install<CR>", desc = "Install plugins", remap = false },
	{ "<leader>ps", ":Lazy sync<CR>", desc = "Sync plugins", remap = false },
	{ "<leader>pu", ":Lazy update<CR>", desc = "Update plugins", remap = false },
	{ "<leader>t", group = "ToggleTerm", remap = false },
	{ "<leader>ta", ":ToggleTerm direction=tab<CR>", desc = "Tab terminal", remap = false },
	{ "<leader>tf", ":ToggleTerm direction=float<CR>", desc = "Floating terminal", remap = false },
	{ "<leader>tt", ":ToggleTerm<CR>", desc = "Bottom terminal", remap = false },
	{ "m", group = "Markdown", remap = false },
	{ "mg", ":Goyo<CR>", desc = "Goyo", remap = false },
	{ "mp", ":TogglePencil<CR>", desc = "Toggle Pencil", remap = false },
	{ "mt", group = "Table", remap = false },
	{ "mtR", "<cmd> lua require('tablemd').insertRow(true)<CR>", desc = "Insert row above", remap = false },
	{ "mtc", "<cmd> lua require('tablemd').insertColumn(false)<CR>", desc = "Insert column", remap = false },
	{ "mtd", "<cmd> lua require('tablemd').deleteColumn()<CR>", desc = "Delete column", remap = false },
	{ "mtf", "<cmd> lua require('tablemd').format()<CR>", desc = "Format table", remap = false },
	{ "mtj", "<cmd> lua require('tablemd').alignColumn('left')<CR>", desc = "Align column left", remap = false },
	{ "mtk", "<cmd> lua require('tablemd').alignColumn('center')<CR>", desc = "Align column center", remap = false },
	{ "mtl", "<cmd> lua require('tablemd').alignColumn('right')<CR>", desc = "Align column right", remap = false },
	{ "mtr", "<cmd> lua require('tablemd').insertRow(false)<CR>", desc = "Insert row below", remap = false },
	{ "mv", ":Glow<CR>", desc = "Preview", remap = false },
}

wk.add(mappings)
