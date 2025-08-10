-- Flwood.nvim highlights for Wood theme
local M = {}

-- Helper function to set highlights
local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(colors, config)
	-- Flwood main highlights
	hl("FlwoodBackdrop", { fg = colors.comment })
	hl("FlwoodLabel", { fg = colors.bg, bg = colors.func, bold = true })
	hl("FlwoodMatch", { fg = colors.search_fg, bg = colors.search_bg })
	hl("FlwoodCurrent", { fg = colors.bg, bg = colors.warning })
	hl("FlwoodPrompt", { fg = colors.keyword, bold = true })
	hl("FlwoodPromptIcon", { fg = colors.func })
	hl("FlwoodCursor", { fg = colors.bg, bg = colors.cursor })

	-- Flwood treesitter
	hl("FlwoodTreachery", { fg = colors.error, bold = true })

	-- Flwood leap compatibility
	hl("LeapMatch", { fg = colors.search_fg, bg = colors.search_bg })
	hl("LeapLabelPrimary", { fg = colors.bg, bg = colors.func, bold = true })
	hl("LeapLabelSecondary", { fg = colors.bg, bg = colors.property, bold = true })
	hl("LeapBackdrop", { fg = colors.comment })

	-- Flwood hop compatibility
	hl("HopNextKey", { fg = colors.bg, bg = colors.func, bold = true })
	hl("HopNextKey1", { fg = colors.bg, bg = colors.property, bold = true })
	hl("HopNextKey2", { fg = colors.bg, bg = colors.type, bold = true })
	hl("HopUnmatched", { fg = colors.comment })

	-- Flwood lightspeed compatibility
	hl("LightspeedGreyWwood", { fg = colors.comment })
	hl("LightspeedLabel", { fg = colors.bg, bg = colors.func, bold = true })
	hl("LightspeedLabelDistant", { fg = colors.bg, bg = colors.property, bold = true })
	hl("LightspeedLabelDistantOverlapped", { fg = colors.bg, bg = colors.type, bold = true })
	hl("LightspeedLabelOverlapped", { fg = colors.bg, bg = colors.warning, bold = true })
	hl("LightspeedMaskedChar", { fg = colors.comment })
	hl("LightspeedOneCharMatch", { fg = colors.search_fg, bg = colors.search_bg })
	hl("LightspeedPendingOpArea", { fg = colors.fg, bg = colors.bg_highlight })
	hl("LightspeedShort", { fg = colors.bg, bg = colors.func, bold = true })
	hl("LightspeedShortCut", { fg = colors.bg, bg = colors.property, bold = true })
	hl("LightspeedUniqueChar", { fg = colors.func, bold = true })
	hl("LightspeedUnlabeledMatch", { fg = colors.search_fg, bg = colors.search_bg })

	-- Flwood custom modes
	hl("FlwoodChar", { fg = colors.func, bold = true })
	hl("FlwoodWord", { fg = colors.keyword, bold = true })
	hl("FlwoodLine", { fg = colors.property, bold = true })
	hl("FlwoodRemote", { fg = colors.type, bold = true })

	-- Flwood search
	hl("FlwoodSearch", { fg = colors.search_fg, bg = colors.search_bg })
	hl("FlwoodSearchMatch", { fg = colors.func, bg = colors.bg_highlight })
	hl("FlwoodSearchCursor", { fg = colors.bg, bg = colors.cursor })

	-- Flwood substitute
	hl("FlwoodSubstitute", { fg = colors.bg, bg = colors.warning })
	hl("FlwoodSubstituteMatch", { fg = colors.warning, bg = colors.bg_highlight })

	-- Flwood yank
	hl("FlwoodYank", { fg = colors.bg, bg = colors.info })
	hl("FlwoodYankMatch", { fg = colors.info, bg = colors.bg_highlight })

	-- Flwood motion
	hl("FlwoodMotion", { fg = colors.bg, bg = colors.property })
	hl("FlwoodMotionMatch", { fg = colors.property, bg = colors.bg_highlight })

	-- Flwood range
	hl("FlwoodRange", { fg = colors.bg, bg = colors.type })
	hl("FlwoodRangeMatch", { fg = colors.type, bg = colors.bg_highlight })

	-- Flwood error
	hl("FlwoodError", { fg = colors.error, bold = true })
	hl("FlwoodErrorMatch", { fg = colors.error, bg = colors.bg_highlight })

	-- Flwood warning
	hl("FlwoodWarning", { fg = colors.warning, bold = true })
	hl("FlwoodWarningMatch", { fg = colors.warning, bg = colors.bg_highlight })

	-- Flwood info
	hl("FlwoodInfo", { fg = colors.info, bold = true })
	hl("FlwoodInfoMatch", { fg = colors.info, bg = colors.bg_highlight })

	-- Flwood hint
	hl("FlwoodHint", { fg = colors.hint, bold = true })
	hl("FlwoodHintMatch", { fg = colors.hint, bg = colors.bg_highlight })
end

return M
