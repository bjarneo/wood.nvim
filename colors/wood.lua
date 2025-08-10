-- This is the main colorscheme entry point
-- For more advanced configuration, use: require('wood').setup()

-- Check if the user wants to use the modular system
local ok, wood_colorscheme = pcall(require, "wood")
if ok then
	-- Use the modular system with default configuration
	wood_colorscheme.setup()
	wood_colorscheme.load()
	return
end

-- Fallback to standalone colorscheme if modular system is not available
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "wood"

local palette = {
    background = "#121212",
    foreground = "#e0e0e0",
    black = "#121212",
    red = "#8a8a8a",
    green = "#767676",
    yellow = "#9e9e9e",
    blue = "#626262",
    magenta = "#8a8a8a",
    cyan = "#767676",
    white = "#e0e0e0",
    bright_black = "#8a8a8a",
    bright_red = "#9e9e9e",
    bright_green = "#767676",
    bright_yellow = "#b2b2b2",
    bright_blue = "#626262",
    bright_magenta = "#8a8a8a",
    bright_cyan = "#9e9e9e",
    bright_white = "#ffffff",
}

-- Color palette from wood theme
local colors = {
	-- Base colors
	bg = palette.background,
	fg = palette.foreground,

	-- UI colors
	bg_alt = palette.bright_black,
	bg_highlight = palette.bright_black,
	bg_visual = palette.green,
	border = palette.bright_black,

	-- Syntax colors
	comment = palette.yellow,
	comment_alt = palette.yellow,

	-- Functions and methods
	func = palette.bright_white,
	func_builtin = palette.bright_white,

	-- Strings
	string = palette.bright_yellow,
	string_template = palette.bright_yellow,
	string_escape = palette.blue,
	string_regex = palette.blue,

	-- Keywords and control flow
	keyword = palette.blue,

	-- Types and classes
	type = palette.blue,

	-- Constants and numbers
	constant = palette.bright_yellow,
	number = palette.bright_yellow,
	boolean = palette.bright_yellow,

	-- Variables and properties
	variable = palette.foreground,
	property = palette.foreground,

	-- Operators and punctuation
	operator = palette.blue,
	punctuation = palette.yellow,

	-- Special colors
	cursor = palette.yellow,
	line_number = palette.yellow,
	line_number_active = palette.bright_white,

	-- Diagnostic colors
	error = palette.blue,
	warning = palette.blue,
	info = palette.blue,
	hint = palette.blue,

	-- Git colors
	git_add = palette.green,
	git_change = palette.green,
	git_delete = palette.green,
	git_ignore = palette.yellow,

	-- Terminal colors
	terminal_black = palette.black,
	terminal_red = palette.red,
	terminal_green = palette.green,
	terminal_yellow = palette.yellow,
	terminal_blue = palette.blue,
	terminal_magenta = palette.magenta,
	terminal_cyan = palette.cyan,
	terminal_white = palette.white,
	terminal_bright_black = palette.bright_black,
	terminal_bright_red = palette.bright_red,
	terminal_bright_green = palette.bright_green,
	terminal_bright_yellow = palette.bright_yellow,
	terminal_bright_blue = palette.bright_blue,
	terminal_bright_magenta = palette.bright_magenta,
	terminal_bright_cyan = palette.bright_cyan,
	terminal_bright_white = palette.bright_white,

	-- Additional colors
	none = "NONE",
}

-- Helper function to set highlights
local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- Editor highlights
hl("Normal", { fg = colors.fg, bg = colors.bg })
hl("NormalFloat", { fg = colors.fg, bg = colors.bg })
hl("FloatBorder", { fg = colors.border, bg = colors.bg })
hl("ColorColumn", { bg = colors.bg_alt })
hl("Cursor", { fg = colors.bg, bg = colors.cursor })
hl("CursorLine", { bg = colors.bg_highlight })
hl("CursorColumn", { bg = colors.bg_highlight })
hl("LineNr", { fg = colors.line_number })
hl("CursorLineNr", { fg = colors.line_number_active, bold = true })
hl("SignColumn", { bg = colors.bg })
hl("StatusLine", { fg = colors.fg, bg = colors.bg })
hl("StatusLineNC", { fg = colors.comment_alt, bg = colors.bg })
hl("TabLine", { fg = colors.comment_alt, bg = colors.bg })
hl("TabLineFill", { bg = colors.bg })
hl("TabLineSel", { fg = colors.fg, bg = colors.bg })
hl("VertSplit", { fg = colors.border })
hl("WinSeparator", { fg = colors.border })
hl("Visual", { bg = colors.bg_visual })
hl("VisualNOS", { bg = colors.bg_visual })
hl("Search", { fg = colors.bg, bg = colors.func })
hl("IncSearch", { fg = colors.bg, bg = colors.string_escape })
hl("CurSearch", { fg = colors.bg, bg = colors.string_escape })
hl("Substitute", { fg = colors.bg, bg = colors.string_escape })
hl("MatchParen", { fg = colors.cursor, bg = colors.bg_highlight, bold = true })
hl("Question", { fg = colors.info })
hl("ModeMsg", { fg = colors.fg })
hl("MoreMsg", { fg = colors.info })
hl("ErrorMsg", { fg = colors.error })
hl("WarningMsg", { fg = colors.warning })
hl("Pmenu", { fg = colors.fg, bg = colors.bg_alt })
hl("PmenuSel", { fg = colors.fg, bg = colors.bg_highlight })
hl("PmenuSbar", { bg = colors.bg_highlight })
hl("PmenuThumb", { bg = colors.border })
hl("WildMenu", { fg = colors.fg, bg = colors.bg_highlight })
hl("Folded", { fg = colors.comment, bg = colors.bg_alt })
hl("FoldColumn", { fg = colors.comment, bg = colors.bg })
hl("Directory", { fg = colors.info })
hl("Title", { fg = colors.keyword, bold = true })
hl("NonText", { fg = colors.comment })
hl("SpecialKey", { fg = colors.comment })
hl("Whitespace", { fg = colors.comment })
hl("EndOfBuffer", { fg = colors.bg })

-- Syntax highlighting
hl("Comment", { fg = colors.comment, italic = true })
hl("Todo", { fg = colors.comment_alt, bold = true })
hl("Constant", { fg = colors.constant })
hl("String", { fg = colors.string })
hl("Character", { fg = colors.string })
hl("Number", { fg = colors.number })
hl("Float", { fg = colors.number })
hl("Boolean", { fg = colors.boolean })
hl("Identifier", { fg = colors.variable })
hl("Function", { fg = colors.func })
hl("Statement", { fg = colors.keyword })
hl("Conditional", { fg = colors.keyword, bold = true })
hl("Repeat", { fg = colors.keyword, bold = true })
hl("Label", { fg = colors.type })
hl("Operator", { fg = colors.operator })
hl("Keyword", { fg = colors.keyword })
hl("Exception", { fg = colors.keyword })
hl("PreProc", { fg = colors.keyword })
hl("Include", { fg = colors.keyword, italic = true })
hl("Define", { fg = colors.keyword })
hl("Macro", { fg = colors.keyword, bold = true })
hl("PreCondit", { fg = colors.keyword })
hl("Type", { fg = colors.type })
hl("StorageClass", { fg = colors.keyword })
hl("Structure", { fg = colors.type })
hl("Typedef", { fg = colors.type })
hl("Special", { fg = colors.string_escape })
hl("SpecialChar", { fg = colors.string_escape, bold = true })
hl("Tag", { fg = colors.keyword })
hl("Delimiter", { fg = colors.punctuation })
hl("SpecialComment", { fg = colors.comment_alt, italic = true })
hl("Debug", { fg = colors.error })
hl("Underlined", { underline = true })
hl("Ignore", { fg = colors.comment })
hl("Error", { fg = colors.error })

-- Treesitter highlights
hl("@annotation", { fg = colors.keyword })
hl("@attribute", { fg = colors.keyword })
hl("@boolean", { fg = colors.boolean })
hl("@character", { fg = colors.string })
hl("@character.special", { fg = colors.string_escape })
hl("@comment", { fg = colors.comment, italic = true })
hl("@comment.documentation", { fg = colors.comment_alt, italic = true })
hl("@conditional", { fg = colors.keyword, bold = true })
hl("@constant", { fg = colors.constant })
hl("@constant.builtin", { fg = colors.constant })
hl("@constant.macro", { fg = colors.constant })
hl("@constructor", { fg = colors.type })
hl("@debug", { fg = colors.error })
hl("@define", { fg = colors.keyword })
hl("@error", { fg = colors.error })
hl("@exception", { fg = colors.keyword })
hl("@field", { fg = colors.property })
hl("@float", { fg = colors.number })
hl("@function", { fg = colors.func })
hl("@function.builtin", { fg = colors.func_builtin, bold = true })
hl("@function.call", { fg = colors.func })
hl("@function.macro", { fg = colors.func, bold = true })
hl("@include", { fg = colors.keyword, italic = true })
hl("@keyword", { fg = colors.keyword })
hl("@keyword.function", { fg = colors.keyword })
hl("@keyword.operator", { fg = colors.keyword })
hl("@keyword.return", { fg = colors.keyword })
hl("@label", { fg = colors.type })
hl("@method", { fg = colors.func })
hl("@method.call", { fg = colors.func })
hl("@namespace", { fg = colors.type })
hl("@none", { fg = colors.none })
hl("@number", { fg = colors.number })
hl("@operator", { fg = colors.operator })
hl("@parameter", { fg = colors.variable })
hl("@parameter.reference", { fg = colors.variable })
hl("@property", { fg = colors.property })
hl("@punctuation.bracket", { fg = colors.punctuation })
hl("@punctuation.delimiter", { fg = colors.punctuation })
hl("@punctuation.special", { fg = colors.string_escape })
hl("@repeat", { fg = colors.keyword, bold = true })
hl("@storageclass", { fg = colors.keyword })
hl("@string", { fg = colors.string })
hl("@string.escape", { fg = colors.string_escape, bold = true })
hl("@string.regex", { fg = colors.string_regex })
hl("@string.special", { fg = colors.string_template })
hl("@symbol", { fg = colors.constant })
hl("@tag", { fg = colors.keyword })
hl("@tag.attribute", { fg = colors.property })
hl("@tag.delimiter", { fg = colors.punctuation })
hl("@text", { fg = colors.fg })
hl("@text.danger", { fg = colors.error, bold = true })
hl("@text.emphasis", { italic = true })
hl("@text.environment", { fg = colors.keyword })
hl("@text.environment.name", { fg = colors.type })
hl("@text.literal", { fg = colors.string })
hl("@text.math", { fg = colors.number })
hl("@text.note", { fg = colors.info, bold = true })
hl("@text.reference", { fg = colors.property })
hl("@text.strike", { strikethrough = true })
hl("@text.strong", { bold = true })
hl("@text.title", { fg = colors.keyword, bold = true })
hl("@text.todo", { fg = colors.comment_alt, bold = true })
hl("@text.underline", { underline = true })
hl("@text.uri", { fg = colors.string_template, underline = true })
hl("@text.warning", { fg = colors.warning, bold = true })
hl("@type", { fg = colors.type })
hl("@type.builtin", { fg = colors.type })
hl("@type.definition", { fg = colors.type })
hl("@type.qualifier", { fg = colors.keyword })
hl("@variable", { fg = colors.variable })
hl("@variable.builtin", { fg = colors.type })

-- Language specific
hl("@variable.builtin.vim", { fg = colors.type })
hl("@function.builtin.vim", { fg = colors.func_builtin })

-- HTML
hl("@tag.html", { fg = colors.keyword })
hl("@tag.delimiter.html", { fg = colors.punctuation })
hl("@tag.attribute.html", { fg = colors.property })

-- CSS
hl("@property.css", { fg = colors.property })
hl("@type.css", { fg = colors.keyword })
hl("@string.css", { fg = colors.string })
hl("@number.css", { fg = colors.number })

-- JavaScript/TypeScript
hl("@constructor.javascript", { fg = colors.type })
hl("@constructor.typescript", { fg = colors.type })
hl("@variable.builtin.javascript", { fg = colors.type })
hl("@variable.builtin.typescript", { fg = colors.type })

-- LSP semantic tokens
hl("@lsp.type.class", { fg = colors.type })
hl("@lsp.type.comment", { fg = colors.comment })
hl("@lsp.type.decorator", { fg = colors.keyword })
hl("@lsp.type.enum", { fg = colors.type })
hl("@lsp.type.enumMember", { fg = colors.constant })
hl("@lsp.type.event", { fg = colors.func })
hl("@lsp.type.function", { fg = colors.func })
hl("@lsp.type.interface", { fg = colors.type })
hl("@lsp.type.keyword", { fg = colors.keyword })
hl("@lsp.type.macro", { fg = colors.keyword })
hl("@lsp.type.method", { fg = colors.func })
hl("@lsp.type.modifier", { fg = colors.keyword })
hl("@lsp.type.namespace", { fg = colors.type })
hl("@lsp.type.number", { fg = colors.number })
hl("@lsp.type.operator", { fg = colors.operator })
hl("@lsp.type.parameter", { fg = colors.variable })
hl("@lsp.type.property", { fg = colors.property })
hl("@lsp.type.regexp", { fg = colors.string_regex })
hl("@lsp.type.string", { fg = colors.string })
hl("@lsp.type.struct", { fg = colors.type })
hl("@lsp.type.type", { fg = colors.type })
hl("@lsp.type.typeParameter", { fg = colors.type })
hl("@lsp.type.variable", { fg = colors.variable })

-- Diagnostic highlights
hl("DiagnosticError", { fg = colors.error })
hl("DiagnosticWarn", { fg = colors.warning })
hl("DiagnosticInfo", { fg = colors.info })
hl("DiagnosticHint", { fg = colors.hint })
hl("DiagnosticVirtualTextError", { fg = colors.error, bg = colors.bg })
hl("DiagnosticVirtualTextWarn", { fg = colors.warning, bg = colors.bg })
hl("DiagnosticVirtualTextInfo", { fg = colors.info, bg = colors.bg })
hl("DiagnosticVirtualTextHint", { fg = colors.hint, bg = colors.bg })
hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.error })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.warning })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.info })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = colors.hint })
hl("DiagnosticSignError", { fg = colors.error, bg = colors.bg })
hl("DiagnosticSignWarn", { fg = colors.warning, bg = colors.bg })
hl("DiagnosticSignInfo", { fg = colors.info, bg = colors.bg })
hl("DiagnosticSignHint", { fg = colors.hint, bg = colors.bg })

-- Git signs
hl("GitSignsAdd", { fg = colors.git_add })
hl("GitSignsChange", { fg = colors.git_change })
hl("GitSignsDelete", { fg = colors.git_delete })
hl("GitSignsAddLn", { fg = colors.git_add, bg = colors.bg })
hl("GitSignsChangeLn", { fg = colors.git_change, bg = colors.bg })
hl("GitSignsDeleteLn", { fg = colors.git_delete, bg = colors.bg })

-- Diff
hl("DiffAdd", { fg = colors.git_add, bg = colors.bg })
hl("DiffChange", { fg = colors.git_change, bg = colors.bg })
hl("DiffDelete", { fg = colors.git_delete, bg = colors.bg })
hl("DiffText", { fg = colors.git_change, bg = colors.bg_highlight })
hl("diffAdded", { fg = colors.git_add })
hl("diffRemoved", { fg = colors.git_delete })
hl("diffChanged", { fg = colors.git_change })
hl("diffOldFile", { fg = colors.git_delete })
hl("diffNewFile", { fg = colors.git_add })
hl("diffFile", { fg = colors.info })
hl("diffLine", { fg = colors.comment })
hl("diffIndexLine", { fg = colors.comment })

-- Telescope
hl("TelescopeSelection", { fg = colors.fg, bg = colors.bg_highlight })
hl("TelescopeSelectionCaret", { fg = colors.cursor, bg = colors.bg_highlight })
hl("TelescopeMultiSelection", { fg = colors.fg, bg = colors.bg_visual })
hl("TelescopeNormal", { fg = colors.fg, bg = colors.bg })
hl("TelescopeBorder", { fg = colors.border, bg = colors.bg })
hl("TelescopePromptNormal", { fg = colors.fg, bg = colors.bg })
hl("TelescopePromptBorder", { fg = colors.border, bg = colors.bg })
hl("TelescopePromptTitle", { fg = colors.keyword, bold = true })
hl("TelescopePreviewTitle", { fg = colors.info, bold = true })
hl("TelescopeResultsTitle", { fg = colors.func, bold = true })
hl("TelescopeMatching", { fg = colors.string_escape, bold = true })
hl("TelescopePromptPrefix", { fg = colors.cursor })

-- NvimTree
hl("NvimTreeNormal", { fg = colors.fg, bg = colors.bg })
hl("NvimTreeFolderName", { fg = colors.info })
hl("NvimTreeFolderIcon", { fg = colors.info })
hl("NvimTreeOpenedFolderName", { fg = colors.info, bold = true })
hl("NvimTreeEmptyFolderName", { fg = colors.comment })
hl("NvimTreeIndentMarker", { fg = colors.border })
hl("NvimTreeVertSplit", { fg = colors.border })
hl("NvimTreeRootFolder", { fg = colors.keyword, bold = true })
hl("NvimTreeSymlink", { fg = colors.string_template })
hl("NvimTreeStatuslineNc", { fg = colors.bg, bg = colors.bg })
hl("NvimTreeGitDirty", { fg = colors.git_change })
hl("NvimTreeGitNew", { fg = colors.git_add })
hl("NvimTreeGitDeleted", { fg = colors.git_delete })
hl("NvimTreeGitStaged", { fg = colors.git_add })
hl("NvimTreeGitMerge", { fg = colors.warning })
hl("NvimTreeGitRenamed", { fg = colors.git_change })
hl("NvimTreeGitIgnored", { fg = colors.git_ignore })
hl("NvimTreeSpecialFile", { fg = colors.string_escape, bold = true })
hl("NvimTreeExecutable", { fg = colors.git_add, bold = true })
hl("NvimTreeImageFile", { fg = colors.func })
hl("NvimTreeMarkdownFile", { fg = colors.info })

-- WhichKey
hl("WhichKey", { fg = colors.func })
hl("WhichKeyGroup", { fg = colors.keyword })
hl("WhichKeyDesc", { fg = colors.info })
hl("WhichKeySeperator", { fg = colors.comment })
hl("WhichKeySeparator", { fg = colors.comment })
hl("WhichKeyFloat", { bg = colors.bg })
hl("WhichKeyValue", { fg = colors.string })

-- Indent Blankline
hl("IndentBlanklineChar", { fg = colors.border })
hl("IndentBlanklineContextChar", { fg = colors.info })
hl("IndentBlanklineSpaceChar", { fg = colors.border })
hl("IndentBlanklineSpaceCharBlankline", { fg = colors.border })

-- Markdown
hl("markdownHeadingDelimiter", { fg = colors.keyword, bold = true })
hl("markdownCode", { fg = colors.string })
hl("markdownCodeBlock", { fg = colors.string })
hl("markdownCodeDelimiter", { fg = colors.punctuation })
hl("markdownH1", { fg = colors.keyword, bold = true })
hl("markdownH2", { fg = colors.keyword, bold = true })
hl("markdownH3", { fg = colors.keyword, bold = true })
hl("markdownH4", { fg = colors.keyword, bold = true })
hl("markdownH5", { fg = colors.keyword, bold = true })
hl("markdownH6", { fg = colors.keyword, bold = true })
hl("markdownLinkText", { fg = colors.string_template, underline = true })
hl("markdownLinkDelimiter", { fg = colors.punctuation })
hl("markdownLinkTextDelimiter", { fg = colors.punctuation })
hl("markdownUrl", { fg = colors.string_template, underline = true })

-- Terminal colors
vim.g.terminal_color_0 = colors.terminal_black
vim.g.terminal_color_1 = colors.terminal_red
vim.g.terminal_color_2 = colors.terminal_green
vim.g.terminal_color_3 = colors.terminal_yellow
vim.g.terminal_color_4 = colors.terminal_blue
vim.g.terminal_color_5 = colors.terminal_magenta
vim.g.terminal_color_6 = colors.terminal_cyan
vim.g.terminal_color_7 = colors.terminal_white
vim.g.terminal_color_8 = colors.terminal_bright_black
vim.g.terminal_color_9 = colors.terminal_bright_red
vim.g.terminal_color_10 = colors.terminal_bright_green
vim.g.terminal_color_11 = colors.terminal_bright_yellow
vim.g.terminal_color_12 = colors.terminal_bright_blue
vim.g.terminal_color_13 = colors.terminal_bright_magenta
vim.g.terminal_color_14 = colors.terminal_bright_cyan
vim.g.terminal_color_15 = colors.terminal_bright_white