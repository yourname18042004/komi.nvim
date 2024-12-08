local colors = require("komi.colors").get_base_colors()
local config = require("komi.config")

local groups = {
	-- Base groups
	KomiFg0 = { fg = colors.fg0 },
	KomiFg1 = { fg = colors.fg1 },
	KomiFg2 = { fg = colors.fg2 },
	KomiFg3 = { fg = colors.fg3 },
	KomiFg4 = { fg = colors.fg4 },
	KomiGray = { fg = colors.gray },
	KomiBg0 = { fg = colors.bg0 },
	KomiBg1 = { fg = colors.bg1 },
	KomiBg2 = { fg = colors.bg2 },
	KomiBg3 = { fg = colors.bg3 },
	KomiBg4 = { fg = colors.bg4 },
	KomiRed = { fg = colors.red },
	KomiRedBold = { fg = colors.red, bold = config.bold },
	KomiGreen = { fg = colors.green },
	KomiGreenBold = { fg = colors.green, bold = config.bold },
	KomiYellow = { fg = colors.yellow },
	KomiYellowBold = { fg = colors.yellow, bold = config.bold },
	KomiBlue = { fg = colors.blue },
	KomiBlueBold = { fg = colors.blue, bold = config.bold },
	KomiPurple = { fg = colors.purple },
	KomiPurpleBold = { fg = colors.purple, bold = config.bold },
	KomiAqua = { fg = colors.aqua },
	KomiAquaBold = { fg = colors.aqua, bold = config.bold },
	KomiOrange = { fg = colors.orange },
	KomiOrangeBold = { fg = colors.orange, bold = config.bold },
	KomiRedSign = config.transparent_mode and { fg = colors.red, reverse = config.invert_signs }
		or { fg = colors.red, bg = colors.bg1, reverse = config.invert_signs },
	KomiGreenSign = config.transparent_mode and { fg = colors.green, reverse = config.invert_signs }
		or { fg = colors.green, bg = colors.bg1, reverse = config.invert_signs },
	KomiYellowSign = config.transparent_mode and { fg = colors.yellow, reverse = config.invert_signs }
		or { fg = colors.yellow, bg = colors.bg1, reverse = config.invert_signs },
	KomiBlueSign = config.transparent_mode and { fg = colors.blue, reverse = config.invert_signs }
		or { fg = colors.blue, bg = colors.bg1, reverse = config.invert_signs },
	KomiPurpleSign = config.transparent_mode and { fg = colors.purple, reverse = config.invert_signs }
		or { fg = colors.purple, bg = colors.bg1, reverse = config.invert_signs },
	KomiAquaSign = config.transparent_mode and { fg = colors.aqua, reverse = config.invert_signs }
		or { fg = colors.aqua, bg = colors.bg1, reverse = config.invert_signs },
	KomiOrangeSign = config.transparent_mode and { fg = colors.orange, reverse = config.invert_signs }
		or { fg = colors.orange, bg = colors.bg1, reverse = config.invert_signs },
	KomiRedUnderline = { undercurl = config.undercurl, sp = colors.red },
	KomiGreenUnderline = { undercurl = config.undercurl, sp = colors.green },
	KomiYellowUnderline = { undercurl = config.undercurl, sp = colors.yellow },
	KomiBlueUnderline = { undercurl = config.undercurl, sp = colors.blue },
	KomiPurpleUnderline = { undercurl = config.undercurl, sp = colors.purple },
	KomiAquaUnderline = { undercurl = config.undercurl, sp = colors.aqua },
	KomiOrangeUnderline = { undercurl = config.undercurl, sp = colors.orange },
	Normal = config.transparent_mode and { fg = colors.fg1, bg = nil } or { fg = colors.fg1, bg = colors.bg0 },
	NormalNC = config.dim_inactive and { fg = colors.fg0, bg = colors.bg1 } or { link = "Normal" },
	CursorLine = { bg = colors.bg1 },
	CursorColumn = { link = "CursorLine" },
	TabLineFill = { fg = colors.bg4, bg = colors.bg1, reverse = config.invert_tabline },
	TabLineSel = { fg = colors.green, bg = colors.bg1, reverse = config.invert_tabline },
	TabLine = { link = "TabLineFill" },
	MatchParen = { bg = colors.bg3, bold = config.bold },
	ColorColumn = { bg = colors.bg1 },
	Conceal = { fg = colors.blue },
	CursorLineNr = { fg = colors.yellow, bg = colors.bg1 },
	NonText = { link = "KomiBg2" },
	SpecialKey = { link = "KomiFg4" },
	Visual = { bg = colors.bg6, reverse = config.invert_selection },
	VisualNOS = { link = "Visual" },
	Search = { fg = colors.yellow, bg = colors.bg0, reverse = config.inverse },
	IncSearch = { fg = colors.orange, bg = colors.bg0, reverse = config.inverse },
	CurSearch = { link = "IncSearch" },
	QuickFixLine = { fg = colors.bg0, bg = colors.yellow, bold = config.bold },
	Underlined = { fg = colors.blue, underline = config.underline },
	StatusLine = { fg = colors.bg2, bg = colors.fg1, reverse = config.inverse },
	StatusLineNC = { fg = colors.bg1, bg = colors.fg4, reverse = config.inverse },
	WinBar = { fg = colors.fg4, bg = colors.bg0 },
	WinBarNC = { fg = colors.fg3, bg = colors.bg1 },
	VertSplit = { fg = colors.bg3, bg = colors.bg0 },
	WildMenu = { fg = colors.blue, bg = colors.bg2, bold = config.bold },
	Directory = { link = "KomiBlueBold" },
	Title = { link = "KomiGreenBold" },
	ErrorMsg = { fg = colors.bg0, bg = colors.red, bold = config.bold },
	MoreMsg = { link = "KomiYellowBold" },
	ModeMsg = { link = "KomiYellowBold" },
	Question = { link = "KomiOrangeBold" },
	WarningMsg = { link = "KomiRedBold" },
	LineNr = { fg = colors.bg4 },
	SignColumn = config.transparent_mode and { bg = nil } or { bg = colors.bg1 },
	Folded = { fg = colors.gray, bg = colors.bg1, italic = config.italic },
	FoldColumn = { fg = colors.gray, bg = colors.bg1 },
	Cursor = { reverse = config.inverse },
	vCursor = { link = "Cursor" },
	iCursor = { link = "Cursor" },
	lCursor = { link = "Cursor" },
	Special = { link = "KomiOrange" },
	Comment = { fg = colors.gray, italic = config.italic },
	Todo = { fg = colors.fg0, bold = config.bold, italic = config.italic },
	Done = { fg = colors.orange, bold = config.bold, italic = config.italic },
	Error = { fg = colors.red, bold = config.bold, reverse = config.inverse },
	Statement = { link = "KomiRed" },
	Conditional = { link = "KomiRed" },
	Repeat = { link = "KomiRed" },
	Label = { link = "KomiRed" },
	Exception = { link = "KomiRed" },
	Operator = { fg = colors.orange, italic = config.italic },
	Keyword = { link = "KomiRed" },
	Identifier = { link = "KomiBlue" },
	Function = { link = "KomiGreenBold" },
	PreProc = { link = "KomiAqua" },
	Include = { link = "KomiAqua" },
	Define = { link = "KomiAqua" },
	Macro = { link = "KomiAqua" },
	PreCondit = { link = "KomiAqua" },
	Constant = { link = "KomiPurple" },
	Character = { link = "KomiPurple" },
	String = { fg = colors.green, italic = config.italic },
	Boolean = { link = "KomiPurple" },
	Number = { link = "KomiPurple" },
	Float = { link = "KomiPurple" },
	Type = { link = "KomiYellow" },
	StorageClass = { link = "KomiOrange" },
	Structure = { link = "KomiAqua" },
	Typedef = { link = "KomiYellow" },
	Pmenu = { fg = colors.fg, bg = colors.bg },
	PmenuSel = { fg = colors.bg2, bg = colors.blue, bold = config.bold },
	PmenuSbar = { bg = colors.bg2 },
	PmenuThumb = { bg = colors.bg4 },
	DiffDelete = { fg = colors.red, bg = colors.bg0, reverse = config.inverse },
	DiffAdd = { fg = colors.green, bg = colors.bg0, reverse = config.inverse },
	DiffChange = { fg = colors.aqua, bg = colors.bg0, reverse = config.inverse },
	DiffText = { fg = colors.yellow, bg = colors.bg0, reverse = config.inverse },
	SpellCap = { link = "KomiBlueUnderline" },
	SpellBad = { link = "KomiRedUnderline" },
	SpellLocal = { link = "KomiAquaUnderline" },
	SpellRare = { link = "KomiPurpleUnderline" },
	Whitespace = { fg = colors.bg2 },
	-- LSP Diagnostic
	DiagnosticError = { link = "KomiRed" },
	DiagnosticSignError = { link = "KomiRedSign" },
	DiagnosticUnderlineError = { link = "KomiRedUnderline" },
	DiagnosticWarn = { link = "KomiYellow" },
	DiagnosticSignWarn = { link = "KomiYellowSign" },
	DiagnosticUnderlineWarn = { link = "KomiYellowUnderline" },
	DiagnosticInfo = { link = "KomiBlue" },
	DiagnosticSignInfo = { link = "KomiBlueSign" },
	DiagnosticUnderlineInfo = { link = "KomiBlueUnderline" },
	DiagnosticHint = { link = "KomiAqua" },
	DiagnosticSignHint = { link = "KomiAquaSign" },
	DiagnosticUnderlineHint = { link = "KomiAquaUnderline" },
	DiagnosticFloatingError = { link = "KomiRed" },
	DiagnosticFloatingWarn = { link = "KomiOrange" },
	DiagnosticFloatingInfo = { link = "KomiBlue" },
	DiagnosticFloatingHint = { link = "KomiAqua" },
	DiagnosticVirtualTextError = { link = "KomiRed" },
	DiagnosticVirtualTextWarn = { link = "KomiYellow" },
	DiagnosticVirtualTextInfo = { link = "KomiBlue" },
	DiagnosticVirtualTextHint = { link = "KomiAqua" },
	LspReferenceRead = { link = "KomiYellowBold" },
	LspReferenceText = { link = "KomiYellowBold" },
	LspReferenceWrite = { link = "KomiOrangeBold" },
	LspCodeLens = { link = "KomiGray" },
	-- nvim-treesitter (0.9 compat)
	-- Adapted from https://github.com/nvim-treesitter/nvim-treesitter/commit/1ae9b0e4558fe7868f8cda2db65239cfb14836d0

	["@annotation"] = { link = "Operator" },
	["@attribute"] = { link = "PreProc" },
	["@boolean"] = { link = "Boolean" },
	["@character"] = { link = "Character" },
	["@character.special"] = { link = "SpecialChar" },
	["@comment"] = { link = "Comment" },
	["@comment.error"] = { link = "ErrorMsg" },
	["@comment.note"] = { link = "SpecialComment" },
	["@comment.todo"] = { link = "Todo" },
	["@comment.todo.checked"] = { link = "Done" },
	["@comment.todo.unchecked"] = { link = "Todo" },
	["@comment.warning"] = { link = "WarningMsg" },
	["@constant"] = { link = "Constant" },
	["@constant.builtin"] = { link = "Special" },
	["@constant.macro"] = { link = "Define" },
	["@constructor"] = { link = "Special" },
	["@diff.minus"] = { link = "diffRemoved" },
	["@diff.plus"] = { link = "diffAdded" },
	["@function"] = { link = "Function" },
	["@function.builtin"] = { link = "Special" },
	["@function.call"] = { link = "Function" },
	["@function.macro"] = { link = "Macro" },
	["@function.method"] = { link = "Function" },
	["@function.method.call"] = { link = "Function" },
	["@keyword"] = { link = "Keyword" },
	["@keyword.conditional"] = { link = "Conditional" },
	["@keyword.debug"] = { link = "Debug" },
	["@keyword.directive"] = { link = "PreProc" },
	["@keyword.directive.define"] = { link = "Define" },
	["@keyword.exception"] = { link = "Exception" },
	["@keyword.function"] = { link = "Keyword" },
	["@keyword.include"] = { link = "Include" },
	["@keyword.repeat"] = { link = "Repeat" },
	["@keyword.return"] = { link = "Keyword" },
	["@keywork.storage"] = { link = "StorageClass" },
	["@label"] = { link = "Label" },
	["@markup"] = { link = "KomiFg1" },
	["@markup.environment"] = { link = "Macro" },
	["@markup.environment.name"] = { link = "Type" },
	["@markup.heading"] = { link = "Title" },
	["@markup.link"] = { link = "Constant" },
	["@markup.link"] = { link = "Delimiter" },
	["@markup.link.special"] = { link = "SpecialChar" },
	["@markup.link.url"] = { link = "Underlined" },
	["@markup.math"] = { link = "Special" },
	["@markup.raw"] = { link = "String" },
	["@module"] = { link = "KomiFg1" },
	["@none"] = { bg = "NONE", fg = "NONE" },
	["@number"] = { link = "Number" },
	["@number.float"] = { link = "Float" },
	["@operator"] = { link = "Operator" },
	["@property"] = { link = "Identifier" },
	["@punctuation.bracket"] = { link = "Delimiter" },
	["@punctuation.delimiter"] = { link = "Delimiter" },
	["@string"] = { link = "String" },
	["@string.escape"] = { link = "SpecialChar" },
	["@string.regexep"] = { link = "String" },
	["@string.special.symbol"] = { link = "Identifier" },
	["@tag"] = { link = "Tag" },
	["@tag.attribute"] = { link = "Identifier" },
	["@tag.delimiter"] = { link = "Delimiter" },
	["@type"] = { link = "Type" },
	["@type.builtin"] = { link = "Type" },
	["@type.definition"] = { link = "Typedef" },
	["@type.qualifier"] = { link = "Type" },
	["@variable"] = { link = "KomiFg1" },
	["@variable.builtin"] = { link = "Special" },
	["@variable.member"] = { link = "Identifier" },
	["@variable.parameter"] = { link = "Identifier" },
	-- nvim-treesitter (0.8 overrides)
	["@markup.strong"] = { bold = config.bold },
	["@markup.strike"] = { strikethrough = config.strikethrough },
	["@markup.italic"] = { italic = config.italic },
	["@markup.underline"] = { underline = config.underline },
	["@keyword.operator"] = { link = "KomiRed" },
	-- gitcommit
	gitcommitSelectedFile = { link = "KomiGreen" },
	gitcommitDiscardedFile = { link = "KomiRed" },
	-- gitsigns.nvim
	GitSignsAdd = { link = "KomiGreenSign" },
	GitSignsChange = { link = "KomiAquaSign" },
	GitSignsDelete = { link = "KomiRedSign" },
	-- nvim-tree
	NvimTreeSymlink = { fg = colors.neutral_aqua },
	NvimTreeRootFolder = { fg = colors.neutral_purple, bold = true },
	NvimTreeFolderIcon = { fg = colors.neutral_blue, bold = true },
	NvimTreeFileIcon = { fg = colors.light2 },
	NvimTreeExecFile = { fg = colors.neutral_green, bold = true },
	NvimTreeOpenedFile = { fg = colors.bright_red, bold = true },
	NvimTreeSpecialFile = { fg = colors.neutral_yellow, bold = true, underline = true },
	NvimTreeImageFile = { fg = colors.neutral_purple },
	NvimTreeIndentMarker = { fg = colors.dark3 },
	NvimTreeGitDirty = { fg = colors.neutral_yellow },
	NvimTreeGitStaged = { fg = colors.neutral_yellow },
	NvimTreeGitMerge = { fg = colors.neutral_purple },
	NvimTreeGitRenamed = { fg = colors.neutral_purple },
	NvimTreeGitNew = { fg = colors.neutral_yellow },
	NvimTreeGitDeleted = { fg = colors.neutral_red },
	NvimTreeWindowPicker = { bg = colors.faded_aqua },
	-- termdebug
	debugPC = { bg = colors.faded_blue },
	debugBreakpoint = { link = "KomiRedSign" },
	-- vim-startify
	StartifyBracket = { link = "KomiFg3" },
	StartifyFile = { link = "KomiFg1" },
	StartifyNumber = { link = "KomiBlue" },
	StartifyPath = { link = "KomiGray" },
	StartifySlash = { link = "KomiGray" },
	StartifySection = { link = "KomiYellow" },
	StartifySpecial = { link = "KomiBg2" },
	StartifyHeader = { link = "KomiOrange" },
	StartifyFooter = { link = "KomiBg2" },
	StartifyVar = { link = "StartifyPath" },
	StartifySelect = { link = "Title" },
	-- vim-dirvish
	DirvishPathTail = { link = "KomiAqua" },
	DirvishArg = { link = "KomiYellow" },
	-- netrw
	netrwDir = { link = "KomiAqua" },
	netrwClassify = { link = "KomiAqua" },
	netrwLink = { link = "KomiGray" },
	netrwSymLink = { link = "KomiFg1" },
	netrwExe = { link = "KomiYellow" },
	netrwComment = { link = "KomiGray" },
	netrwList = { link = "KomiBlue" },
	netrwHelpCmd = { link = "KomiAqua" },
	netrwCmdSep = { link = "KomiFg3" },
	netrwVersion = { link = "KomiGreen" },
	-- nerdtree
	NERDTreeDir = { link = "KomiAqua" },
	NERDTreeDirSlash = { link = "KomiAqua" },
	NERDTreeOpenable = { link = "KomiOrange" },
	NERDTreeClosable = { link = "KomiOrange" },
	NERDTreeFile = { link = "KomiFg1" },
	NERDTreeExecFile = { link = "KomiYellow" },
	NERDTreeUp = { link = "KomiGray" },
	NERDTreeCWD = { link = "KomiGreen" },
	NERDTreeHelp = { link = "KomiFg1" },
	NERDTreeToggleOn = { link = "KomiGreen" },
	NERDTreeToggleOff = { link = "KomiRed" },
	-- coc.nvim
	CocErrorSign = { link = "KomiRedSign" },
	CocWarningSign = { link = "KomiOrangeSign" },
	CocInfoSign = { link = "KomiBlueSign" },
	CocHintSign = { link = "KomiAquaSign" },
	CocErrorFloat = { link = "KomiRed" },
	CocWarningFloat = { link = "KomiOrange" },
	CocInfoFloat = { link = "KomiBlue" },
	CocHintFloat = { link = "KomiAqua" },
	CocDiagnosticsError = { link = "KomiRed" },
	CocDiagnosticsWarning = { link = "KomiOrange" },
	CocDiagnosticsInfo = { link = "KomiBlue" },
	CocDiagnosticsHint = { link = "KomiAqua" },
	CocSelectedText = { link = "KomiRed" },
	CocMenuSel = { link = "PmenuSel" },
	CocCodeLens = { link = "KomiGray" },
	CocErrorHighlight = { link = "KomiRedUnderline" },
	CocWarningHighlight = { link = "KomiOrangeUnderline" },
	CocInfoHighlight = { link = "KomiBlueUnderline" },
	CocHintHighlight = { link = "KomiAquaUnderline" },
	-- telescope.nvim
	TelescopeNormal = { link = "KomiFg1" },
	TelescopeSelection = { link = "KomiOrangeBold" },
	TelescopeSelectionCaret = { link = "KomiRed" },
	TelescopeMultiSelection = { link = "KomiGray" },
	TelescopeBorder = { link = "TelescopeNormal" },
	TelescopePromptBorder = { link = "TelescopeNormal" },
	TelescopeResultsBorder = { link = "TelescopeNormal" },
	TelescopePreviewBorder = { link = "TelescopeNormal" },
	TelescopeMatching = { link = "KomiBlue" },
	TelescopePromptPrefix = { link = "KomiRed" },
	TelescopePrompt = { link = "TelescopeNormal" },
	-- nvim-cmp
	CmpItemAbbr = { link = "KomiFg0" },
	CmpItemAbbrDeprecated = { link = "KomiFg1" },
	CmpItemAbbrMatch = { link = "KomiBlueBold" },
	CmpItemAbbrMatchFuzzy = { link = "KomiBlueUnderline" },
	CmpItemMenu = { link = "KomiGray" },
	CmpItemKindText = { link = "KomiOrange" },
	CmpItemKindMethod = { link = "KomiBlue" },
	CmpItemKindFunction = { link = "KomiBlue" },
	CmpItemKindConstructor = { link = "KomiYellow" },
	CmpItemKindField = { link = "KomiBlue" },
	CmpItemKindClass = { link = "KomiYellow" },
	CmpItemKindInterface = { link = "KomiYellow" },
	CmpItemKindModule = { link = "KomiBlue" },
	CmpItemKindProperty = { link = "KomiBlue" },
	CmpItemKindValue = { link = "KomiOrange" },
	CmpItemKindEnum = { link = "KomiYellow" },
	CmpItemKindKeyword = { link = "KomiPurple" },
	CmpItemKindSnippet = { link = "KomiGreen" },
	CmpItemKindFile = { link = "KomiBlue" },
	CmpItemKindEnumMember = { link = "KomiAqua" },
	CmpItemKindConstant = { link = "KomiOrange" },
	CmpItemKindStruct = { link = "KomiYellow" },
	CmpItemKindTypeParameter = { link = "KomiYellow" },
	diffAdded = { link = "KomiGreen" },
	diffRemoved = { link = "KomiRed" },
	diffChanged = { link = "KomiAqua" },
	diffFile = { link = "KomiOrange" },
	diffNewFile = { link = "KomiYellow" },
	diffLine = { link = "KomiBlue" },
	-- navic (highlight icons)
	NavicIconsFile = { link = "KomiBlue" },
	NavicIconsModule = { link = "KomiOrange" },
	NavicIconsNamespace = { link = "KomiBlue" },
	NavicIconsPackage = { link = "KomiAqua" },
	NavicIconsClass = { link = "KomiYellow" },
	NavicIconsMethod = { link = "KomiBlue" },
	NavicIconsProperty = { link = "KomiAqua" },
	NavicIconsField = { link = "KomiPurple" },
	NavicIconsConstructor = { link = "KomiBlue" },
	NavicIconsEnum = { link = "KomiPurple" },
	NavicIconsInterface = { link = "KomiGreen" },
	NavicIconsFunction = { link = "KomiBlue" },
	NavicIconsVariable = { link = "KomiPurple" },
	NavicIconsConstant = { link = "KomiOrange" },
	NavicIconsString = { link = "KomiGreen" },
	NavicIconsNumber = { link = "KomiOrange" },
	NavicIconsBoolean = { link = "KomiOrange" },
	NavicIconsArray = { link = "KomiOrange" },
	NavicIconsObject = { link = "KomiOrange" },
	NavicIconsKey = { link = "KomiAqua" },
	NavicIconsNull = { link = "KomiOrange" },
	NavicIconsEnumMember = { link = "KomiYellow" },
	NavicIconsStruct = { link = "KomiPurple" },
	NavicIconsEvent = { link = "KomiYellow" },
	NavicIconsOperator = { link = "KomiRed" },
	NavicIconsTypeParameter = { link = "KomiRed" },
	NavicText = { link = "KomiWhite" },
	NavicSeparator = { link = "KomiWhite" },
	-- html
	htmlTag = { link = "KomiAquaBold" },
	htmlEndTag = { link = "KomiAquaBold" },
	htmlTagName = { link = "KomiBlue" },
	htmlArg = { link = "KomiOrange" },
	htmlTagN = { link = "KomiFg1" },
	htmlSpecialTagName = { link = "KomiBlue" },
	htmlLink = { fg = colors.fg4, underline = config.underline },
	htmlSpecialChar = { link = "KomiRed" },
	htmlBold = { fg = colors.fg0, bg = colors.bg0, bold = config.bold },
	htmlBoldUnderline = { fg = colors.fg0, bg = colors.bg0, bold = config.bold, underline = config.underline },
	htmlBoldItalic = { fg = colors.fg0, bg = colors.bg0, bold = config.bold, italic = config.italic },
	htmlBoldUnderlineItalic = {
		fg = colors.fg0,
		bg = colors.bg0,
		bold = config.bold,
		italic = config.italic,
		underline = config.underline,
	},
	htmlUnderline = { fg = colors.fg0, bg = colors.bg0, underline = config.underline },
	htmlUnderlineItalic = {
		fg = colors.fg0,
		bg = colors.bg0,
		italic = config.italic,
		underline = config.underline,
	},
	htmlItalic = { fg = colors.fg0, bg = colors.bg0, bold = config.italic },
	-- xml
	xmlTag = { link = "KomiAquaBold" },
	xmlEndTag = { link = "KomiAquaBold" },
	xmlTagName = { link = "KomiBlue" },
	xmlEqual = { link = "KomiBlue" },
	docbkKeyword = { link = "KomiAquaBold" },
	xmlDocTypeDecl = { link = "KomiGray" },
	xmlDocTypeKeyword = { link = "KomiPurple" },
	xmlCdataStart = { link = "KomiGray" },
	xmlCdataCdata = { link = "KomiPurple" },
	dtdFunction = { link = "KomiGray" },
	dtdTagName = { link = "KomiPurple" },
	xmlAttrib = { link = "KomiOrange" },
	xmlProcessingDelim = { link = "KomiGray" },
	dtdParamEntityPunct = { link = "KomiGray" },
	dtdParamEntityDPunct = { link = "KomiGray" },
	xmlAttribPunct = { link = "KomiGray" },
	xmlEntity = { link = "KomiRed" },
	xmlEntityPunct = { link = "KomiRed" },
	-- clojure
	clojureKeyword = { link = "KomiBlue" },
	clojureCond = { link = "KomiOrange" },
	clojureSpecial = { link = "KomiOrange" },
	clojureDefine = { link = "KomiOrange" },
	clojureFunc = { link = "KomiYellow" },
	clojureRepeat = { link = "KomiYellow" },
	clojureCharacter = { link = "KomiAqua" },
	clojureStringEscape = { link = "KomiAqua" },
	clojureException = { link = "KomiRed" },
	clojureRegexp = { link = "KomiAqua" },
	clojureRegexpEscape = { link = "KomiAqua" },
	clojureRegexpCharClass = { fg = colors.fg3, bold = config.bold },
	clojureRegexpMod = { link = "clojureRegexpCharClass" },
	clojureRegexpQuantifier = { link = "clojureRegexpCharClass" },
	clojureParen = { link = "KomiFg3" },
	clojureAnonArg = { link = "KomiYellow" },
	clojureVariable = { link = "KomiBlue" },
	clojureMacro = { link = "KomiOrange" },
	clojureMeta = { link = "KomiYellow" },
	clojureDeref = { link = "KomiYellow" },
	clojureQuote = { link = "KomiYellow" },
	clojureUnquote = { link = "KomiYellow" },
	-- C
	cOperator = { link = "KomiPurple" },
	cppOperator = { link = "KomiPurple" },
	cStructure = { link = "KomiOrange" },
	-- python
	pythonBuiltin = { link = "KomiOrange" },
	pythonBuiltinObj = { link = "KomiOrange" },
	pythonBuiltinFunc = { link = "KomiOrange" },
	pythonFunction = { link = "KomiAqua" },
	pythonDecorator = { link = "KomiRed" },
	pythonInclude = { link = "KomiBlue" },
	pythonImport = { link = "KomiBlue" },
	pythonRun = { link = "KomiBlue" },
	pythonCoding = { link = "KomiBlue" },
	pythonOperator = { link = "KomiRed" },
	pythonException = { link = "KomiRed" },
	pythonExceptions = { link = "KomiPurple" },
	pythonBoolean = { link = "KomiPurple" },
	pythonDot = { link = "KomiFg3" },
	pythonConditional = { link = "KomiRed" },
	pythonRepeat = { link = "KomiRed" },
	pythonDottedName = { link = "KomiGreenBold" },
	-- CSS
	cssBraces = { link = "KomiBlue" },
	cssFunctionName = { link = "KomiYellow" },
	cssIdentifier = { link = "KomiOrange" },
	cssClassName = { link = "KomiGreen" },
	cssColor = { link = "KomiBlue" },
	cssSelectorOp = { link = "KomiBlue" },
	cssSelectorOp2 = { link = "KomiBlue" },
	cssImportant = { link = "KomiGreen" },
	cssVendor = { link = "KomiFg1" },
	cssTextProp = { link = "KomiAqua" },
	cssAnimationProp = { link = "KomiAqua" },
	cssUIProp = { link = "KomiYellow" },
	cssTransformProp = { link = "KomiAqua" },
	cssTransitionProp = { link = "KomiAqua" },
	cssPrintProp = { link = "KomiAqua" },
	cssPositioningProp = { link = "KomiYellow" },
	cssBoxProp = { link = "KomiAqua" },
	cssFontDescriptorProp = { link = "KomiAqua" },
	cssFlexibleBoxProp = { link = "KomiAqua" },
	cssBorderOutlineProp = { link = "KomiAqua" },
	cssBackgroundProp = { link = "KomiAqua" },
	cssMarginProp = { link = "KomiAqua" },
	cssListProp = { link = "KomiAqua" },
	cssTableProp = { link = "KomiAqua" },
	cssFontProp = { link = "KomiAqua" },
	cssPaddingProp = { link = "KomiAqua" },
	cssDimensionProp = { link = "KomiAqua" },
	cssRenderProp = { link = "KomiAqua" },
	cssColorProp = { link = "KomiAqua" },
	cssGeneratedContentProp = { link = "KomiAqua" },
	-- javascript
	javaScriptBraces = { link = "KomiFg1" },
	javaScriptFunction = { link = "KomiAqua" },
	javaScriptIdentifier = { link = "KomiRed" },
	javaScriptMember = { link = "KomiBlue" },
	javaScriptNumber = { link = "KomiPurple" },
	javaScriptNull = { link = "KomiPurple" },
	javaScriptParens = { link = "KomiFg3" },
	-- typescript
	typescriptReserved = { link = "KomiAqua" },
	typescriptLabel = { link = "KomiAqua" },
	typescriptFuncKeyword = { link = "KomiAqua" },
	typescriptIdentifier = { link = "KomiOrange" },
	typescriptBraces = { link = "KomiFg1" },
	typescriptEndColons = { link = "KomiFg1" },
	typescriptDOMObjects = { link = "KomiFg1" },
	typescriptAjaxMethods = { link = "KomiFg1" },
	typescriptLogicSymbols = { link = "KomiFg1" },
	typescriptDocSeeTag = { link = "Comment" },
	typescriptDocParam = { link = "Comment" },
	typescriptDocTags = { link = "vimCommentTitle" },
	typescriptGlobalObjects = { link = "KomiFg1" },
	typescriptParens = { link = "KomiFg3" },
	typescriptOpSymbols = { link = "KomiFg3" },
	typescriptHtmlElemProperties = { link = "KomiFg1" },
	typescriptNull = { link = "KomiPurple" },
	typescriptInterpolationDelimiter = { link = "KomiAqua" },
	-- purescript
	purescriptModuleKeyword = { link = "KomiAqua" },
	purescriptModuleName = { link = "KomiFg1" },
	purescriptWhere = { link = "KomiAqua" },
	purescriptDelimiter = { link = "KomiFg4" },
	purescriptType = { link = "KomiFg1" },
	purescriptImportKeyword = { link = "KomiAqua" },
	purescriptHidingKeyword = { link = "KomiAqua" },
	purescriptAsKeyword = { link = "KomiAqua" },
	purescriptStructure = { link = "KomiAqua" },
	purescriptOperator = { link = "KomiBlue" },
	purescriptTypeVar = { link = "KomiFg1" },
	purescriptConstructor = { link = "KomiFg1" },
	purescriptFunction = { link = "KomiFg1" },
	purescriptConditional = { link = "KomiOrange" },
	purescriptBacktick = { link = "KomiOrange" },
	-- coffescript
	coffeeExtendedOp = { link = "KomiFg3" },
	coffeeSpecialOp = { link = "KomiFg3" },
	coffeeCurly = { link = "KomiOrange" },
	coffeeParen = { link = "KomiFg3" },
	coffeeBracket = { link = "KomiOrange" },
	-- ruby
	rubyStringDelimiter = { link = "KomiGreen" },
	rubyInterpolationDelimiter = { link = "KomiAqua" },
	rubyDefinedOperator = { link = "rubyKeyword" },
	-- objc
	objcTypeModifier = { link = "KomiRed" },
	objcDirective = { link = "KomiBlue" },
	-- go
	goDirective = { link = "KomiAqua" },
	goConstants = { link = "KomiPurple" },
	goDeclaration = { link = "KomiRed" },
	goDeclType = { link = "KomiBlue" },
	goBuiltins = { link = "KomiOrange" },
	-- lua
	luaIn = { link = "KomiRed" },
	luaFunction = { link = "KomiAqua" },
	luaTable = { link = "KomiOrange" },
	-- moonscript
	moonSpecialOp = { link = "KomiFg3" },
	moonExtendedOp = { link = "KomiFg3" },
	moonFunction = { link = "KomiFg3" },
	moonObject = { link = "KomiYellow" },
	-- java
	javaAnnotation = { link = "KomiBlue" },
	javaDocTags = { link = "KomiAqua" },
	javaCommentTitle = { link = "vimCommentTitle" },
	javaParen = { link = "KomiFg3" },
	javaParen1 = { link = "KomiFg3" },
	javaParen2 = { link = "KomiFg3" },
	javaParen3 = { link = "KomiFg3" },
	javaParen4 = { link = "KomiFg3" },
	javaParen5 = { link = "KomiFg3" },
	javaOperator = { link = "KomiOrange" },
	javaVarArg = { link = "KomiGreen" },
	-- elixir
	elixirDocString = { link = "Comment" },
	elixirStringDelimiter = { link = "KomiGreen" },
	elixirInterpolationDelimiter = { link = "KomiAqua" },
	elixirModuleDeclaration = { link = "KomiYellow" },
	-- scala
	scalaNameDefinition = { link = "KomiFg1" },
	scalaCaseFollowing = { link = "KomiFg1" },
	scalaCapitalWord = { link = "KomiFg1" },
	scalaTypeExtension = { link = "KomiFg1" },
	scalaKeyword = { link = "KomiRed" },
	scalaKeywordModifier = { link = "KomiRed" },
	scalaSpecial = { link = "KomiAqua" },
	scalaOperator = { link = "KomiFg1" },
	scalaTypeDeclaration = { link = "KomiYellow" },
	scalaTypeTypePostDeclaration = { link = "KomiYellow" },
	scalaInstanceDeclaration = { link = "KomiFg1" },
	scalaInterpolation = { link = "KomiAqua" },
	-- markdown
	markdownItalic = { fg = colors.fg3, italic = config.italic },
	markdownBold = { fg = colors.fg3, bold = config.bold },
	markdownBoldItalic = { fg = colors.fg3, bold = config.bold, italic = config.italic },
	markdownH1 = { link = "KomiGreenBold" },
	markdownH2 = { link = "KomiGreenBold" },
	markdownH3 = { link = "KomiYellowBold" },
	markdownH4 = { link = "KomiYellowBold" },
	markdownH5 = { link = "KomiYellow" },
	markdownH6 = { link = "KomiYellow" },
	markdownCode = { link = "KomiAqua" },
	markdownCodeBlock = { link = "KomiAqua" },
	markdownCodeDelimiter = { link = "KomiAqua" },
	markdownBlockquote = { link = "KomiGray" },
	markdownListMarker = { link = "KomiGray" },
	markdownOrderedListMarker = { link = "KomiGray" },
	markdownRule = { link = "KomiGray" },
	markdownHeadingRule = { link = "KomiGray" },
	markdownUrlDelimiter = { link = "KomiFg3" },
	markdownLinkDelimiter = { link = "KomiFg3" },
	markdownLinkTextDelimiter = { link = "KomiFg3" },
	markdownHeadingDelimiter = { link = "KomiOrange" },
	markdownUrl = { link = "KomiPurple" },
	markdownUrlTitleDelimiter = { link = "KomiGreen" },
	markdownLinkText = { fg = colors.gray, underline = config.underline },
	markdownIdDeclaration = { link = "markdownLinkText" },
	-- haskell
	haskellType = { link = "KomiBlue" },
	haskellIdentifier = { link = "KomiAqua" },
	haskellSeparator = { link = "KomiFg4" },
	haskellDelimiter = { link = "KomiOrange" },
	haskellOperators = { link = "KomiPurple" },
	haskellBacktick = { link = "KomiOrange" },
	haskellStatement = { link = "KomiPurple" },
	haskellConditional = { link = "KomiPurple" },
	haskellLet = { link = "KomiRed" },
	haskellDefault = { link = "KomiRed" },
	haskellWhere = { link = "KomiRed" },
	haskellBottom = { link = "KomiRedBold" },
	haskellImportKeywords = { link = "KomiPurpleBold" },
	haskellDeclKeyword = { link = "KomiOrange" },
	haskellDecl = { link = "KomiOrange" },
	haskellDeriving = { link = "KomiPurple" },
	haskellAssocType = { link = "KomiAqua" },
	haskellNumber = { link = "KomiAqua" },
	haskellPragma = { link = "KomiRedBold" },
	haskellTH = { link = "KomiAquaBold" },
	haskellForeignKeywords = { link = "KomiGreen" },
	haskellKeyword = { link = "KomiRed" },
	haskellFloat = { link = "KomiAqua" },
	haskellInfix = { link = "KomiPurple" },
	haskellQuote = { link = "KomiGreenBold" },
	haskellShebang = { link = "KomiYellowBold" },
	haskellLiquid = { link = "KomiPurpleBold" },
	haskellQuasiQuoted = { link = "KomiBlueBold" },
	haskellRecursiveDo = { link = "KomiPurple" },
	haskellQuotedType = { link = "KomiRed" },
	haskellPreProc = { link = "KomiFg4" },
	haskellTypeRoles = { link = "KomiRedBold" },
	haskellTypeForall = { link = "KomiRed" },
	haskellPatternKeyword = { link = "KomiBlue" },
	-- json
	jsonKeyword = { link = "KomiGreen" },
	jsonQuote = { link = "KomiGreen" },
	jsonBraces = { link = "KomiFg1" },
	jsonString = { link = "KomiFg1" },
	-- mail
	mailQuoted1 = { link = "KomiAqua" },
	mailQuoted2 = { link = "KomiPurple" },
	mailQuoted3 = { link = "KomiYellow" },
	mailQuoted4 = { link = "KomiGreen" },
	mailQuoted5 = { link = "KomiRed" },
	mailQuoted6 = { link = "KomiOrange" },
	mailSignature = { link = "Comment" },
	-- c#
	csBraces = { link = "KomiFg1" },
	csEndColon = { link = "KomiFg1" },
	csLogicSymbols = { link = "KomiFg1" },
	csParens = { link = "KomiFg3" },
	csOpSymbols = { link = "KomiFg3" },
	csInterpolationDelimiter = { link = "KomiFg3" },
	csInterpolationAlignDel = { link = "KomiAquaBold" },
	csInterpolationFormat = { link = "KomiAqua" },
	csInterpolationFormatDel = { link = "KomiAquaBold" },
	-- rust btw
	rustSigil = { link = "KomiOrange" },
	rustEscape = { link = "KomiAqua" },
	rustStringContinuation = { link = "KomiAqua" },
	rustEnum = { link = "KomiAqua" },
	rustStructure = { link = "KomiAqua" },
	rustModPathSep = { link = "KomiFg2" },
	rustCommentLineDoc = { link = "Comment" },
	rustDefault = { link = "KomiAqua" },
	-- ocaml
	ocamlOperator = { link = "KomiFg1" },
	ocamlKeyChar = { link = "KomiOrange" },
	ocamlArrow = { link = "KomiOrange" },
	ocamlInfixOpKeyword = { link = "KomiRed" },
	ocamlConstructor = { link = "KomiOrange" },
	-- lspsaga.nvim
	LspSagaCodeActionTitle = { link = "Title" },
	LspSagaCodeActionBorder = { link = "KomiFg1" },
	LspSagaCodeActionContent = { fg = colors.green, bold = config.bold },
	LspSagaLspFinderBorder = { link = "KomiFg1" },
	LspSagaAutoPreview = { link = "KomiOrange" },
	TargetWord = { fg = colors.blue, bold = config.bold },
	FinderSeparator = { link = "KomiAqua" },
	LspSagaDefPreviewBorder = { link = "KomiBlue" },
	LspSagaHoverBorder = { link = "KomiOrange" },
	LspSagaRenameBorder = { link = "KomiBlue" },
	LspSagaDiagnosticSource = { link = "KomiOrange" },
	LspSagaDiagnosticBorder = { link = "KomiPurple" },
	LspSagaDiagnosticHeader = { link = "KomiGreen" },
	LspSagaSignatureHelpBorder = { link = "KomiGreen" },
	SagaShadow = { link = "KomiBg0" },

	-- dashboard-nvim
	DashboardShortCut = { link = "KomiOrange" },
	DashboardHeader = { link = "KomiAqua" },
	DashboardCenter = { link = "KomiYellow" },
	DashboardFooter = { fg = colors.purple, italic = config.italic },
	-- mason
	MasonHighlight = { link = "KomiAqua" },
	MasonHighlightBlock = { fg = colors.bg0, bg = colors.blue },
	MasonHighlightBlockBold = { fg = colors.bg0, bg = colors.blue, bold = true },
	MasonHighlightSecondary = { fg = colors.yellow },
	MasonHighlightBlockSecondary = { fg = colors.bg0, bg = colors.yellow },
	MasonHighlightBlockBoldSecondary = { fg = colors.bg0, bg = colors.yellow, bold = true },
	MasonHeader = { link = "MasonHighlightBlockBoldSecondary" },
	MasonHeaderSecondary = { link = "MasonHighlightBlockBold" },
	MasonMuted = { fg = colors.fg4 },
	MasonMutedBlock = { fg = colors.bg0, bg = colors.fg4 },
	MasonMutedBlockBold = { fg = colors.bg0, bg = colors.fg4, bold = true },
	-- lsp-inlayhints.nvim
	LspInlayHint = { link = "comment" },
	-- carbon.nvim
	CarbonFile = { link = "KomiFg1" },
	CarbonExe = { link = "KomiYellow" },
	CarbonSymlink = { link = "KomiAqua" },
	CarbonBrokenSymlink = { link = "KomiRed" },
	CarbonIndicator = { link = "KomiGray" },
	CarbonDanger = { link = "KomiRed" },
	CarbonPending = { link = "KomiYellow" },

	-- Status Line
	StatusDefault = { bg = colors.bg, fg = colors.fg },
	StatusVimNormal = { bg = colors.accent, fg = colors.bg },
	StatusVimInsert = { bg = colors.neutral_blue, fg = colors.bg },
	StatusVimVisual = { bg = colors.func, fg = colors.bg },
	StatusVimReplace = { fg = colors.bg, bg = colors.entity },
	StatusVimEnter = { fg = colors.bg, bg = colors.string },
	StatusVimMore = { fg = colors.bg, bg = colors.regexp },
	StatusVimSelect = { fg = colors.bg, bg = colors.markup },
	StatusVimCmd = { fg = colors.bg, bg = colors.keyword },
	StatusVimShell = { fg = colors.bg, bg = colors.special },
	StatusVimTerm = { fg = colors.bg, bg = colors.comment },
	StatusModified = { fg = colors.bg, bg = colors.constant },
	StatusLineNumber = { fg = colors.bg, bg = colors.operator },
	StatusColumnNumber = { fg = colors.bg, bg = colors.error },
	StatusFileInfo = { fg = colors.keyword, bg = colors.bg },
	StatusGitInfo = { fg = colors.green, bg = colors.bg },
	StatusLSPProgress = { fg = colors.neutral_blue, bg = colors.bg },
	StatusLSPError = { fg = colors.error, bg = colors.bg },
	StatusLSPWarn = { fg = colors.accent, bg = colors.bg },
	StatusLSPInfo = { fg = colors.entity, bg = colors.bg },
	StatusLSPHin = { fg = colors.tag, bg = colors.bg },
	StatusLSPStatus = { fg = colors.tag, bg = colors.bg },
	StatusCwd = { fg = colors.keyword, bg = colors.bg },
	StatusCursor = { fg = colors.accent, bg = colors.bg },

	-- Session
	SessionName = { fg = colors.string, bg = colors.bg },

	-- Whichkey
	WhichKeyFloat = { fg = colors.fg, bg = colors.bg },

	-- Lazy
	LazyNormal = { fg = colors.fg, bg = colors.bg },

	-- nvim 0.10 overrides
	WinSeparator = { fg = colors.bg3, bg = colors.bg0 },

}

return groups