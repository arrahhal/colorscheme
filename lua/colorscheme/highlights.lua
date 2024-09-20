local C = require("colorscheme.palette")

local highlights = {
	ColorColumn = { bg = C.surface }, -- used for the columns set with 'colorcolumn'
	Conceal = { fg = C.bg, bg = C.fg }, -- placeholder characters substituted for concealed text (see 'conceallevel')
	Cursor = { fg = C.bg, bg = C.fg }, -- character under the cursor
	lCursor = { fg = C.bg, bg = C.fg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
	CursorIM = { bg = C.highlight }, -- like Cursor, but used when in IME mode |CursorIM|
	CursorColumn = { bg = C.surface }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
	CursorLine = {
		bg = C.highlight,
	}, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if forecrust (ctermfg OR guifg) is not set.
	Directory = { fg = C.green }, -- directory names (and other special names in listings)
	EndOfBuffer = { fg = C.surface }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
	ErrorMsg = { fg = C.error, bold = true, italic = true }, -- error messages on the command line
	VertSplit = { fg = C.nc }, -- the column separating vertically split windows
	Folded = { fg = C.blue, bg = C.light_gray }, -- line used for closed folds
	FoldColumn = { fg = C.overlay0 }, -- 'foldcolumn'
	SignColumn = { bg = C.crust, fg = C.surface1 }, -- column where |signs| are displayed
	SignColumnSB = { bg = C.nc, fg = C.gray }, -- column where |signs| are displayed
	Substitute = { bg = C.warn, fg = C.bg }, -- |:substitute| replacement text highlighting
	LineNr = { fg = C.gray }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
	CursorLineNr = { fg = C.yellow }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
	MatchParen = { bold = true, blend = 25, underline = true, fg = C.blue }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
	ModeMsg = { fg = C.light_gray }, -- 'showmode' message (e.g., "-- INSERT -- ")
	-- MsgArea = { fg = palette.text }, -- Area for messages and cmdline, don't set this highlight because of https://github.com/neovim/neovim/issues/17832
	MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
	MoreMsg = { fg = C.green }, -- |more-prompt|
	NonText = { link = "NonText" }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
	Normal = { fg = C.text, bg = "NONE" }, -- normal text
	NormalNC = {
		fg = C.light_gray,
		bg = C.nc,
	}, -- normal text in non-current windows
	NormalSB = { fg = C.light_gray, bg = C.nc }, -- normal text in non-current windows
	NormalFloat = {
		fg = C.fg,
		bg = C.surface,
	}, -- Normal text in floating windows.
	FloatBorder = { fg = C.blue },
	FloatTitle = { fg = C.cayn, bg = "NONE", bold = true }, -- Title of floating windows
	Pmenu = {
		bg = C.surface,
		fg = C.fg,
	}, -- Popup menu: normal item.
	PmenuSel = { bg = C.yellow, fg = C.surface }, -- Popup menu: selected item.
	PmenuSbar = { bg = C.nc }, -- Popup menu: scrollbar.
	PmenuThumb = { bg = C.surface }, -- Popup menu: Thumb of the scrollbar.
	Question = { fg = C.rose }, -- |hit-enter| prompt and yes/no questions
	QuickFixLine = { bg = C.surface, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
	Search = {}, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
	IncSearch = { bg = C.yellow, fg = C.bg }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
	CurSearch = { link = "IncSearch" }, -- 'cursearch' highlighting: highlights the current search you're on differently
	SpecialKey = { link = "NonText" }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|
	SpellBad = { sp = C.red, underline = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
	SpellCap = { sp = C.yellow, underline = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
	SpellLocal = { sp = C.info, underline = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
	SpellRare = { sp = C.light_gray, underline = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
	StatusLine = { bg = C.surface, fg = C.blue }, -- status line of current window
	StatusLineNC = { bg = C.nc, fg = C.gray }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
	TabLine = { bg = C.nc, fg = C.light_gray }, -- tab pages line, not active tab page label
	TabLineFill = { bg = C.nc }, -- tab pages line, where there are no labels
	TabLineSel = { bg = C.cayn, fg = C.nc }, -- tab pages line, active tab page label
	TermCursor = { fg = C.bg, bg = C.blue }, -- cursor in a focused terminal
	TermCursorNC = { fg = C.bg, bg = C.overlay2 }, -- cursor in unfocused terminals
	Title = { bold = true, fg = C.green }, -- titles for output from ":set all", ":autocmd" etc.
	Visual = { bg = C.highlight }, -- Visual mode selection
	VisualNOS = { bg = C.surface1, bold = true }, -- Visual mode selection when vim is "Not Owning the Selection".
	WarningMsg = { fg = C.yellow, bold = true }, -- warning messages
	Whitespace = { fg = C.surface }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
	WildMenu = { bg = C.surface }, -- current match in 'wildmenu' completion
	WinBar = { bold = true, fg = C.nc },
	WinBarNC = { bold = true, fg = C.nc },
	WinSeparator = { bold = true, fg = C.nc },

	Comment = { fg = C.dark_green, italic = true }, -- just comments
	SpecialComment = { link = "Special" }, -- special things inside a comment
	Constant = { fg = C.yellow }, -- (preferred) any constant
	String = { fg = C.aqua }, -- a string constant: "this is a string"
	Character = { fg = C.aqua }, --  a character constant: 'c', '\n'
	Number = { fg = C.yellow }, --   a number constant: 234, 0xff
	Float = { link = "Number" }, --    a floating point constant: 2.3e10
	Boolean = { fg = C.yellow }, --  a boolean constant: TRUE, false
	Identifier = { fg = C.fg }, -- (preferred) any variable name
	Function = { fg = C.rose }, -- function name (also: methods for classes)
	Statement = { fg = C.blue }, -- (preferred) any statement
	Conditional = { fg = C.blue }, --  if, then, else, endif, switch, etc.
	Repeat = { fg = C.blue }, --   for, do, while, etc.
	Label = { fg = C.blue }, --    case, default, etc.
	Operator = { fg = C.light_gray }, -- "sizeof", "+", "*", etc.
	Keyword = { fg = C.blue, italic = true }, --  any other keyword
	Exception = { fg = C.blue }, --  try, catch, throw

	PreProc = { fg = C.blue }, -- (preferred) generic Preprocessor
	Include = { fg = C.blue }, --  preprocessor #include
	Define = { fg = C.blue }, -- preprocessor #define
	Macro = { fg = C.blue }, -- same as Define
	PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

	StorageClass = { fg = C.cayn }, -- static, register, volatile, etc.
	Structure = { fg = C.cayn }, --  struct, union, enum, etc.
	Special = { fg = C.yellow }, -- (preferred) any special symbol
	Type = { fg = C.fg }, -- (preferred) int, long, char, etc.
	Typedef = { link = "Type" }, --  A typedef
	SpecialChar = { link = "Special" }, -- special character in a constant

	-- Tags
	Tag = { fg = C.yellow }, -- you can use CTRL-] on this
	["@tag"] = { link = "Tag" },
	["@tag.attribute"] = { fg = C.cayn },
	["@tag.delimiter"] = { fg = C.light_gray },

	Delimiter = { fg = C.light_gray }, -- character that needs attention
	Debug = { link = "Special" }, -- debugging statements

	Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
	Bold = { bold = true },
	Italic = { italic = true },
	-- ("Ignore", below, may be invisible...)
	-- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

	Error = { fg = C.error }, -- (preferred) any erroneous construct
	Todo = { bg = C.yellow, fg = C.nc }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
	qfLineNr = { fg = C.yellow },
	qfFileName = { fg = C.blue },
	htmlH1 = { fg = C.green, bold = true },
	htmlH2 = { fg = C.blue, bold = true },
	-- mkdHeading = { fg = C.peach, bold = true },
	-- mkdCode = { bg = C.terminal_black, fg = C.text },
	mkdCodeDelimiter = { fg = C.rose },
	mkdCodeStart = { fg = C.cayn },
	mkdCodeEnd = { fg = C.cayn },
	-- mkdLink = { fg = C.blue, underline = true },

	-- debugging
	debugPC = { bg = C.rose }, -- used for highlighting the current line in terminal-debug
	debugBreakpoint = { bg = C.bg, fg = C.light_gray }, -- used for breakpoint colors in terminal-debug
	-- illuminate
	illuminatedWord = { bg = C.surface },
	illuminatedCurWord = { bg = C.highlight },
	-- diff
	diffAdded = { fg = C.diff_green },
	diffRemoved = { fg = C.diff_red },
	diffChanged = { fg = C.diff_blue },
	diffOldFile = { fg = C.diff_blue },
	diffNewFile = { fg = C.diff_green },
	diffFile = { fg = C.diff_green },
	diffLine = { fg = C.gray },
	diffIndexLine = { fg = C.diff_blue },
	DiffAdd = { bg = C.diff_green }, -- diff mode: Added line |diff.txt|
	DiffChange = { bg = C.diff_blue }, -- diff mode: Changed line |diff.txt|
	DiffDelete = { bg = C.diff_red }, -- diff mode: Deleted line |diff.txt|
	DiffText = { bg = C.gray }, -- diff mode: Changed text within a changed line |diff.txt|
	-- NeoVim
	healthError = { fg = C.error },
	healthSuccess = { fg = C.green },
	healthWarning = { fg = C.warn },
	-- misc

	-- glyphs
	GlyphPalette1 = { fg = C.red },
	GlyphPalette2 = { fg = C.green },
	GlyphPalette3 = { fg = C.yellow },
	GlyphPalette4 = { fg = C.blue },
	GlyphPalette6 = { fg = C.green },
	GlyphPalette7 = { fg = C.fg },
	GlyphPalette9 = { fg = C.red },

	-- rainbow
	rainbow1 = { fg = C.red },
	rainbow2 = { fg = C.green },
	rainbow3 = { fg = C.yellow },
	rainbow4 = { fg = C.blue },
	rainbow5 = { fg = C.purple },
	rainbow6 = { fg = C.rose },

	-- csv
	csvCol0 = { fg = C.red },
	csvCol1 = { fg = C.green },
	csvCol2 = { fg = C.yellow },
	csvCol3 = { fg = C.blue },
	csvCol4 = { fg = C.purple },
	csvCol5 = { fg = C.rose },
	csvCol6 = { fg = C.dark_green },
	csvCol7 = { fg = C.info },
	csvCol8 = { fg = C.warn },
}

return highlights
