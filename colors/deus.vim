lua << EOF
-- This file should be edited by the user. Read the instructions of each section and then edit them as desired.

--[[ Highlite, a Neovim colorscheme template.
	* Author:     Iron-E (https://github.com/Iron-E)
	* Repository: https://github.com/nvim-deus

	Initially forked from vim-rnb, a Vim colorsheme template:
	* Author:        Romain Lafourcade (https://github.com/romainl)
	* Canonical URL: https://github.com/romainl/vim-rnb
]]

--[[ Introduction
	This template is designed to help Neovim users create their own colorschemes without much effort.

	You will not need any additional tooling to run this file. Just open it in Neovim and follow the instructions.

	The process is divided in five steps:
	1. Rename the template,
	2. Edit your colorscheme's information,
	3. Define your colors,
	4. Define your highlight groups and links, and
	5. Sourcing your colorscheme.
]]

--[[ Step 1: Renaming
	* If this file is distributed with a colorscheme it's probably already named correctly
	  and you can skip this step.
	* If you forked/cloned/copied this repository to create your own colorscheme, you will have to
	  rename this template to match the name of your colorscheme.

	NOTE: Neovim doesn't really care about whitespace in the name of the colorscheme but it does for
	filenames so make sure your filename doesn't have any whitespace character.

	| colorscheme name  | module name | template filename |
	|:-----------------:|:-----------:|:-----------------:|
	| foobar            | foobar      | foobar.lua        |
	| foo-bar           | foo_bar     | foo_bar.lua       |
	| foo bar           | foo_bar     | foo_bar.lua       |
	| foo_bar           | foo_bar     | foo_bar.lua       |

	Rename the following files:
	* `colors/deus.vim`
	* `lua/deus.lua`

	Where 'deus' is the name of your colorscheme.

	TIP: If you are on a Unix-based system (or have WSL on Windows) you can use the setup script at the root of this repo.
	     See the README for more details.
]]


--[[ Step 2: Information
	In this step you will define information that helps Neovim process:

	1. How users access your colorscheme;
	2. How your colorscheme should be rendered.
]]

-- This is the name of your colorscheme which will be used as per |g:colors_name|.
vim.g.colors_name = 'deus'

--[[ Step 3: Colors
	Next you will define all of the colors that you will use for the color scheme.

	Each one should be made up of three parts:

```lua
	<color name> = { -- Give each color a distinctive name.
		'#<hex color code>', -- Hexadecimal color used in GVim/MacVim or 'NONE'.
		<16-bit color code>, -- Integer 0–255 used by terminals supporting 256 colors or 'NONE'.
		'<ANSI color name>'  -- color name used by less capable color terminals, can be 'darkred',
		                       'red', 'darkgreen', 'green', 'darkyellow', 'yellow', 'darkblue',
		                       'blue', 'darkmagenta', 'magenta', 'black', 'darkgrey', 'grey',
		                       'white', or 'NONE'
	}
```

	If your colors are defined correctly, the resulting colorscheme is guaranteed
	to work in GVim (Windows/Linux), MacVim (MacOS), and any properly set up terminal emulator.

	NOTE: |Replace-mode| will probably be useful here.
]]

local black       = {'#2C323B', 235, 'black'}
local gray        = {'#928374', 245, 'gray'}
local gray_dark   = {'#3c3836', 237, 'darkgrey'}
local gray_darker = {'#242a32', 239, 'gray'}
local gray_light  = {'#c0c0c0', 251, 'gray'}
local white       = {'#ffffff', 15,  'white'}

local dsdark0       = {'#2C323B', 235, 'darkgrey'}
local dsdark1       = {'#3c3836', 237, 'darkgrey'}
local dsdark2       = {'#242a32', 239, 'darkgrey'}
local dsdark3       = {'#665c54', 241, 'darkgrey'}
local dsdark4       = {'#7c6f64', 243, 'darkgrey'}
local dsdark4_256   = {'#7c6f64', 243, 'darkgrey'}

local dsColumn       = {'#35312f', 239, 'darkgrey'}

local dslight0      = {'#d2d2d2', 229, 'grey'}
local dslight1      = {'#ebdbb2', 223, 'grey'}
local dslight2      = {'#d5c4a1', 250, 'grey'}
local dslight3      = {'#bdae93', 248, 'grey'}
local dslight4      = {'#a89984', 246, 'grey'}
local dslight4_256  = {'#a89984', 246, 'grey'}

local tan = {'#f4c069', 180, 'darkyellow'}

local red       = {'#fb4934', 167, 'red'}
local red_dark  = {'#a80000', 124, 'darkred'}
local red_light = {'#ff4090', 203, 'red'}

local orange       = {'#fe8019', 208, 'darkyellow'}
local orange_light = {'#f0af00', 214, 'yellow'}

local yellow = {'#fabd2f', 220, 'yellow'}

local green_dark  = {'#50de60', 83, 'darkgreen'}
local green       = {'#98C379', 142, 'green'}
local green_light = {'#a0ff70', 72, 'green'}

local blue     = {'#83a598', 109, 'darkblue'}
local cyan     = {'#8ec07c', 108, 'aqua'}
local ice      = {'#49a0f0', 63, 'cyan'}
local teal     = {'#00a5f0', 38, 'cyan'}
local turqoise = {'#2bff99', 33, 'blue'}

local magenta      = {'#d5508f', 126, 'magenta'}
local magenta_dark = {'#bb0099', 126, 'darkmagenta'}
local pink         = {'#ffa6ff', 162, 'magenta'}
local pink_light   = {'#ffb7b7', 38,  'white'}
local purple       = {'#C678DD', 175, 'magenta'}
local purple_light = {'#A8D5E2', 63,  'magenta'}
local magenta_light1 = {'#BD93BD', 63,  'magenta'}
local magenta_light2 = {'#A7A2A9', 63,  'magenta'}
local navyblue = {'#6699CC', 63,  'blue'}
--[[ Step 4: highlights
	You can define highlight groups like this:

```lua
	<highlight group name> = {
		-- The color for the background, `NONE`, `FG` or `BG`
		bg = <color>,

		-- The color for the foreground, `NONE`, `FG` or `BG`
		fg = <color>

		-- The |highlight-blend| value, if one is desired.
		[, blend = <integer>]

		-- Style can be 'bold', 'italic', and more. See |attr-list| for more information.
		-- It can also have a color, and/or multiple <cterm>s.
		[, style = <cterm>|{<cterm> (, <cterm>) [color=<color>]} ]
	}
```

	You can also link one highlight group to another:

```lua
	<highlight group name> = '<highlight group name>'
```
	____________________________________________________________________________

	Here is an example to define `SpellBad` and then link some new group
	`SpellWorse` to it:

```lua
	SpellBad = { -- ← name of the highlight group
		bg=NONE, -- background color
		fg=red, -- foureground color
		style={ -- the style
			'undercurl', -- undercurl (squiggly line)
			color=red -- the color of the undercurl
		}
	},
	SpellWorse = 'SpellBad'
```

	If you weren't satisfied with undercurl, and also wanted another effect, you can
	add another one below 'undercurl' and it will be applied as well:

```lua
	SpellBad = { -- ← name of the highlight group
		bg=NONE, -- background color
		fg=red, -- foureground color
		style={ -- the style
			'undercurl', -- undercurl (squiggly line)
			'standout'
			color=red -- the color of the undercurl
		}
	}
```
	____________________________________________________________________________

	If you want to create a colorscheme that is responsive to the user's
	'background' setting, you can specify special `light` and `dark` keys to
	define how each group should be highlighted in each case.

```lua
	SpellBad = {
		bg=NONE,
		dark={fg=white},
		light={fg=black},
		style={'undercurl', color=red}
	}
```

	Whenever the user changes their 'background' setting, the settings inside of
	whichever key is relevant will be loaded.
	____________________________________________________________________________

	You can add any custom highlight group to the standard list below but you
	shouldn't remove any if you want a working colorscheme. Most of them are
	described under |highlight-default|, some from |group-name|, and others from
	common syntax groups.  Both help sections are good reads.
	____________________________________________________________________________

	If you want to inherit a specific attribute of another highlight group, you
	can do the following:

```lua
	SpellBad = function(self)
		local inherited_style = self.SpellRare.style
		inherited_style.color = red

		return {
			bg=NONE,
			fg=NONE,
			style=inherited_style
		}
	end
```

	The function will be executed by |deus| and transformed into the
	expected result.
	____________________________________________________________________________

	NOTE: |Replace-mode| will probably be useful here.

	NOTE: /As long as you do not remove any highlight groups or colors/, you can
	      safely ignore any highlight groups that are `link`ed to others.

	      For example, programming languages almost exclusively link to the 1st
	      and 2nd sections, so as long as you define everything there you will
	      automatically be defining the rest of the highlights, which is one of
	      the benefits of using this template.
]]

--[[ DO NOT EDIT `BG` NOR `FG`. ]]
local BG = 'bg'
local FG = 'fg'
local NONE = {}

--[[ These are the ones you should edit. ]]
-- This is the only highlight that must be defined separately.
local highlight_group_normal = {fg=dslight1, bg=black}

-- This is where the rest of your highlights should go.
local highlight_groups = {
	--[[ 4.1. Text Analysis ]]
	Comment     = {fg=gray, style='italic'},
	NonText     = {fg=gray_darker},
	EndOfBuffer = 'NonText',
	Whitespace  = 'NonText',

	--[[ 4.1.1. Literals]]
	Constant  = {fg=orange_light},
	String    = {fg=green},
	Character = {fg=purple},
	Number    = {fg=purple},
	Boolean   = {fg=purple},
	Float     = 'Number',

	--[[ 4.1.2. Identifiers]]
	Identifier = {fg=blue},
	Function   = {fg=green, style='bold'},

	--[[ 4.1.3. Syntax]]
	Statement   = {fg=red, style='bold'},
	Conditional = {fg=red, style='italic'},
	Repeat      = {fg=red, style='italic'},
	Label       = {fg=magenta_light1, style='bold'},
	Operator    = {fg=blue, style='bold'},
	Keyword     = {fg=red, style='italic'},
	Exception   = {fg=red, style='bold'},
	Noise       = 'Delimiter',

	--[[ 4.1.4. Metatextual Information]]
	PreProc   = {fg=tan},
	Include   = {fg=blue, style='nocombine'},
	Define    = {fg=blue, style='nocombine'},
	Macro     = {fg=blue, style='italic'},
	PreCondit = {fg=tan,  style='italic'},

	--[[ 4.1.5. Semantics]]
	Type         = {fg=yellow, style='italic'},
	StorageClass = {fg=orange, style='bold'},
	Structure    = {fg=blue, style='bold'},
	Typedef      = {fg=cyan, style='italic'},

	--[[ 4.1.6. Edge Cases]]
	Special        = {fg=magenta, style='bold'},
	SpecialChar    = {fg=red_light, style='italic'},
	SpecialKey     = 'Character',
	Tag            = 'Underlined',
	Delimiter      = {fg=orange},
	SpecialComment = {fg=gray, style={'bold', 'nocombine'}},
	Debug          = 'WarningMsg',

	--[[ 4.1.7. Help Syntax]]
	Underlined        = {fg=turqoise, style='underline'},
	Ignore            = {fg=gray},
	Error             = {fg=white, bg=red_dark, style='bold'},
	Todo              = {fg=yellow, style={'bold', 'underline'}},
	Hint              = {fg=black,    bg=magenta, style='bold'},
	Info              = function(self) return {fg=self.Hint.fg, bg=pink_light, style=self.Hint.style} end,
	Warning           = function(self) return {fg=self.Hint.fg, bg=orange, style=self.Hint.style} end,

	--[[ 4.2... Editor UI  ]]
	--[[ 4.2.1. Status Line]]
	StatusLine       = {fg=green_light, bg=gray_darker},
	StatusLineNC     = function(self) return {fg=gray_darker, bg=self.StatusLine.bg} end,
	StatusLineTerm   = 'StatusLine',
	StatusLineTermNC = 'StatusLineNC',

	--[[ 4.2.2. Separators]]
	VertSplit   = {fg=dslight1},
	TabLine     = {bg=gray_darker, fg=dsdark4},
	TabLineFill = {bg=gray_darker},
	TabLineSel  = {fg=dslight3},
	Title       = {fg=dslight3, style='bold'},

	--[[ 4.2.3. Conditional Line Highlighting]]
	Conceal         = 'NonText',
	CursorLine      = {bg=gray_dark},
	CursorLineNr    = function(self) return {fg=dslight1, bg=self.CursorLine.bg} end,
	debugBreakpoint = 'ErrorMsg',
	debugPC         = 'ColorColumn',
	LineNr          = {fg=gray},
	QuickFixLine    = {bg=gray_darker},
	Visual          = {style='inverse'},
	VisualNOS       = {bg=gray_darker},

	--[[ 4.2.4. Popup Menu]]
	Pmenu      = {bg=dsdark2, fg=dslight1},
	PmenuSbar  = {fg=dsdark2},
	PmenuSel   = {fg=dsdark1, bg=blue, style='bold'},
	PmenuThumb = {bg=dsdark4},
	WildMenu   = 'PmenuSel',

	--[[ 4.2.5. Folds]]
	FoldColumn = {bg=gray_darker, style='bold'},
	Folded     = {bg=dsdark2,  fg=magenta, style='italic'},

	--[[ 4.2.6. Diffs | used for coc-git... ]]
	-- if you use coc-git, the default highlight group is this, but I suggest you to use the highlight group of GitGutter, add on you coc-settings.json
	DiffAdd    = {fg=green_dark, style='inverse'},
	DiffAdded  = {fg=green, style='bold'},
	DiffChange = {fg=yellow,     style='inverse'},
	DiffDelete = function(self) return {fg=self.DiffAdd.fg, bg=red} end,
	DiffText   = function(self) return {fg=self.DiffAdd.fg, bg=yellow} end,

	--[[ 4.2.7. Searching]]
	IncSearch  = {style='inverse'},
	MatchParen = {bg=yellow, fg=green, style={'bold', 'underline'}},
	Search     = {bg=yellow, fg=dsdark2},

	--[[ 4.2.8. Spelling]]
	SpellBad   = {style={'undercurl', color=red}},
	SpellCap   = {style={'undercurl', color=yellow}},
	SpellLocal = {style={'undercurl', color=green}},
	SpellRare  = {style={'undercurl', color=orange}},

	--[[ 4.2.9. Conditional Column Highlighting]]
	ColorColumn = {bg=dsColumn}, -- important
	SignColumn  = NONE,

	--[[ 4.2.10. Messages]]
	ErrorMsg   = {fg=red,          style='bold'},
	HintMsg    = {fg=magenta,      style='bold'},
	InfoMsg    = {fg=green,   style='bold'},
	ModeMsg    = {fg=yellow},
	WarningMsg = {fg=orange,       style='bold'},
	Question   = {fg=orange_light, style='underline'},

	--[[ 4.2.11. LSP ]]
	LspDiagnosticsDefaultError = 'Error',
	LspDiagnosticsFloatingError = 'ErrorMsg',
	LspDiagnosticsSignError = 'LspDiagnosticsFloatingError',

	LspDiagnosticsDefaultWarning = 'Warning',
	LspDiagnosticsFloatingWarning = 'WarningMsg',
	LspDiagnosticsSignWarning = 'LspDiagnosticsFloatingWarning',

	LspDiagnosticsDefaultHint = 'Hint',
	LspDiagnosticsFloatingHint = 'HintMsg',
	LspDiagnosticsSignHint = 'LspDiagnosticsFloatingHint',

	LspDiagnosticsDefaultInformation = 'Info',
	LspDiagnosticsFloatingInformation = 'InfoMsg',
	LspDiagnosticsSignInformation = 'LspDiagnosticsFloatingInformation',

	LspDiagnosticsUnderlineError = 'CocErrorHighlight',
	LspDiagnosticsUnderlineHint  = 'CocHintHighlight',
	LspDiagnosticsUnderlineInfo  = 'CocInfoHighlight',
	LspDiagnosticsUnderlineWarning = 'CocWarningHighlight',

	--[[ 4.2.12. Cursor ]]
	Cursor   = {style='inverse'},
	CursorIM = 'Cursor',
	CursorColumn = {bg=gray_dark},

	--[[ 4.2.13. Misc ]]
	Directory = {fg=ice, style='bold'},

	--[[ 4.3. Programming Languages
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing.
	]]
	--[[ 4.3.1. C ]]
	cConstant    = 'Constant',
	cCustomClass = 'Type',

	--[[ 4.3.2. C++ ]]
	cppSTLexception = 'Exception',
	cppSTLnamespace = 'String',

	--[[ 4.3.3 C# ]]
	csBraces = 'Delimiter',
	csClass  = 'Structure',
	csClassType = 'Type',
	csContextualStatement = 'Conditional',
	csEndColon = 'Delimiter',
	csGeneric  = 'Typedef',
	csInterpolation = 'Include',
	csInterpolationDelimiter = 'SpecialChar',
	csLogicSymbols  = 'Operator',
	csModifier = 'Keyword',
	csNew = 'Operator',
	csNewType = 'Type',
	csParens  = 'Delimiter',
	csPreCondit  = 'PreProc',
	csRepeat  = 'Repeat',
	csStorage = 'StorageClass',
	csUnspecifiedStatement = 'Statement',
	csXmlTag = 'Define',
	csXmlTagName = 'Define',

	--[[ 4.3.4. CSS ]]
	cssBraces = 'Delimiter',
	cssProp   = 'Keyword',
	cssSelectorOp = 'Operator',
	cssTagName = 'Type',
	cssTagName = 'htmlTagName',
	scssAmpersand = 'Special',
	scssAttribute = 'Label',
	scssBoolean   = 'Boolean',
	scssDefault = 'Keyword',
	scssElse = 'PreCondit',
	scssIf   = 'PreCondit',
	scssInclude = 'Include',
	scssSelectorChar = 'Operator',
	scssSelectorName = 'Identifier',
	scssVariable  = 'Define',
	scssVariableAssignment = 'Operator',

	--[[ 4.3.5. Dart ]]
	dartLibrary = 'Statement',

	--[[ 4.3.6. dot ]]
	dotKeyChar = 'Character',
	dotType    = 'Type',

	--[[ 4.3.7. Go ]]
	goBlock    = 'Delimiter',
	goBuiltins = 'Operator',
	goField    = 'Identifier',
	goFloat    = 'Float',
	goFormatSpecifier = 'Character',
	goFunction = 'Function',
	goFunctionCall   = 'goFunction',
	goFunctionReturn = NONE,
	goMethodCall = 'goFunctionCall',
	goParamType  = 'goReceiverType',
	goPointerOperator = 'SpecialChar',
	goPredefinedIdentifiers = 'Constant',
	goReceiver     = 'goBlock',
	goReceiverType = 'goTypeName',
	goSimpleParams = 'goBlock',
	goType = 'Type',
	goTypeConstructor = 'goFunction',
	goTypeName  = 'Type',
	goVarAssign = 'Identifier',
	goVarDefs   = 'goVarAssign',

	--[[ 4.3.8. HTML ]]
	htmlArg    = 'Label',
	htmlBold   = {fg=gray_light, style='bold'},
	htmlTitle  = 'htmlBold',
	htmlEndTag = 'htmlTag',
	htmlH1 = 'markdownH1',
	htmlH2 = 'markdownH2',
	htmlH3 = 'markdownH3',
	htmlH4 = 'markdownH4',
	htmlH5 = 'markdownH5',
	htmlH6 = 'markdownH6',
	htmlItalic  = {style='italic'},
	htmlSpecialTagName = 'Keyword',
	htmlTag  = 'Special',
	htmlTagN = 'Typedef',
	htmlTagName = 'Type',

	--[[ 4.3.9. Java ]]
	javaClassDecl = 'Structure',

	--[[ 4.3.10. JavaScript ]]
	jsFuncBlock   = 'Function',
	jsObjectKey   = 'Type',
	jsReturn      = 'Keyword',
	jsVariableDef = 'Identifier',

	--[[ 4.3.11. JSON ]]
	jsonBraces = 'luaBraces',
	jsonEscape = 'SpecialChar',
	jsonKeywordMatch = 'Operator',
	jsonNull   = 'Constant',
	jsonQuote  = 'Delimiter',
	jsonString = 'String',
	jsonStringSQError = 'Exception',

	--[[ 4.3.12. Lua ]]
	luaBraces   = 'Structure',
	luaBrackets = 'Delimiter',
	luaBuiltin  = 'Keyword',
	luaComma    = 'Delimiter',
	luaFuncArgName = 'Identifier',
	luaFuncCall = 'Function',
	luaFuncId   = 'luaNoise',
	luaFuncKeyword = 'Type',
	luaFuncName   = 'Function',
	luaFuncParens = 'Delimiter',
	luaFuncTable  = 'Structure',
	luaIn     = 'luaRepeat',
	luaLocal  = 'Type',
	luaNoise  = 'Operator',
	luaParens = 'Delimiter',
	luaSpecialTable = 'StorageClass',
	luaSpecialValue = 'Function',

	--[[ 4.3.12. Make ]]
	makeCommands   = 'Statment',
	makeSpecTarget = 'Type',

	--[[ 4.3.13. Markdown ]]
	markdownH1 = {fg=red, style='bold'},
	markdownH2 = {fg=orange, style='bold'},
	markdownH3 = {fg=yellow, style='bold'},
	markdownH4 = {fg=green_dark, style='bold'},
	markdownH5 = {fg=cyan, style='bold'},
	markdownH6 = {fg=purple_light, style='bold'},
	mkdBold = 'Ignore',
	mkdCode = 'Keyword',
	mkdCodeDelimiter = 'mkdBold',
	mkdCodeStart = 'mkdCodeDelimiter',
	mkdCodeEnd = 'mkdCodeStart',
	mkdHeading = 'Delimiter',
	mkdItalic  = 'mkdBold',
	mkdLineBreak = 'NonText',
	mkdListItem  = 'Special',
	mkdRule = function(self) return {fg=self.Ignore.fg, style={'underline', color=self.Delimiter.fg}} end,

	--[[ 4.3.20. Python ]]
	pythonBrackets    = 'Delimiter',
	pythonBuiltinFunc = 'Operator',
	pythonBuiltinObj  = 'Type',
	pythonBuiltinType = 'Type',
	pythonClass       = 'Structure',
	pythonClassParameters = 'pythonParameters',
	pythonDecorator  = 'PreProc',
	pythonDottedName = 'Identifier',
	pythonError     = 'Error',
	pythonException = 'Exception',
	pythonInclude   = 'Include',
	pythonIndentError = 'pythonError',
	pythonLambdaExpr  = 'pythonOperator',
	pythonOperator = 'Operator',
	pythonParam    = 'Identifier',
	pythonParameters = 'Delimiter',
	pythonSelf = 'Statement',
	pythonSpaceError = 'pythonError',
	pythonStatement  = 'Statement',

	--[[ 4.3.21. Ruby ]]
	rubyClass  = 'Structure',
	rubyConstant = 'Constant',
	rubyIdentifier = 'Identifier',
	rubyFunction = 'Function',
	rubyDefine = 'Define',
	rubyInterpolationDelimiter = 'Delimiter',

	--[[ 4.3.22. Rust ]]
	rustConstraint = 'Operator',
	rustDynKeyword = 'rustStorage',
	rustFieldName = 'Label',
	rustFieldSep  = 'Delimiter',
	rustGeneric   = 'Delimiter',
	rustIdentifier = 'Identifier',
	rustKeyword = 'Keyword',
	rustModPath = 'Include',
	rustNoise  = 'Delimiter',
	rustPanic  = 'Exception',
	rustRepeat = 'Repeat',
	rustScopeDecl = 'Delimiter',
	rustStructure = 'Structure',

	--[[ 4.3.23. Scala ]]
	scalaKeyword = 'Keyword',
	scalaNameDefinition = 'Identifier',

	--[[ 4.3.24. shell ]]
	shDerefSimple = 'SpecialChar',
	shFunctionKey = 'Function',
	shLoop  = 'Repeat',
	shParen = 'Delimiter',
	shQuote = 'Delimiter',
	shSet   = 'Statement',
	shTestOpr = 'Debug',

	--[[ 4.3.25. Solidity ]]
	solBuiltinType  = 'Type',
	solContract     = 'Typedef',
	solContractName = 'Function',

	--[[ 4.3.26. TOML ]]
	tomlComment = 'Comment',
	tomlDate  = 'Special',
	tomlFloat = 'Float',
	tomlKey   = 'Label',
	tomlTable = 'Structure',

	--[[ 4.3.27. VimScript ]]
	vimCmdSep   = 'Delimiter',
	vimFunction = 'Function',
	vimFgBgAttrib = 'Constant',
	vimHiCterm = 'Label',
	vimHiCtermFgBg = 'vimHiCterm',
	vimHiGroup = 'Typedef',
	vimHiGui   = 'vimHiCterm',
	vimHiGuiFgBg = 'vimHiGui',
	vimHiKeyList = 'Operator',
	vimIsCommand = 'Identifier',
	vimOption = 'Keyword',
	vimScriptDelim = 'Ignore',
	vimSet = 'Operator',
	vimSetEqual = 'Operator',
	vimSetSep   = 'Delimiter',
	vimUserFunc = 'vimFunction',

	--[[ 4.3.28. XML ]]
	xmlAttrib = 'htmlArg',
	xmlEndTag = 'xmlTag',
	xmlEqual  = 'Operator',
	xmlTag    = 'htmlTag',
	xmlTagName = 'htmlTagName',

	--[[ 4.3.29. SQL ]]
	sqlKeyword = 'Keyword',
	sqlParen   = 'Delimiter',
	sqlSpecial = 'Constant',
	sqlStatement = 'Statement',
	sqlParenFunc = 'Function',

	--[[ 4.3.30. dos INI ]]
	dosiniHeader = 'Title',

	--[[ 4.3.31. Crontab ]]
	crontabDay  = 'StorageClass',
	crontabDow  = 'String',
	crontabHr   = 'Number',
	crontabMin  = 'Float',
	crontabMnth = 'Structure',

	--[[ 4.3.32. PlantUML ]]
	plantumlArrowLR   = 'Statement',
	plantumlColonLine = NONE,
	plantumlMindmap   = 'Label',
	plantumlMindmap2  = 'Label',


	--[[ 4.3.33. YAML ]]
	yamlKey = 'Label',

	--[[ 4.3.34. Git ]]
	gitcommitHeader = 'SpecialComment',
	gitcommitDiscardedFile = 'gitcommitSelectedFile',
	gitcommitOverFlow = 'Error',
	gitcommitSelectedFile = 'Directory',
	gitcommitSummary  = 'Title',
	gitcommitUntrackedFile = 'gitcommitSelectedFile',
	gitconfigAssignment = 'String',
	gitconfigEscape = 'SpecialChar',
	gitconfigNone  = 'Operator',
	gitconfigSection = 'Structure',
	gitconfigVariable = 'Label',
	gitrebaseBreak = 'Keyword',
	gitrebaseCommit = 'Tag',
	gitrebaseDrop = 'Exception',
	gitrebaseEdit = 'Define',
	gitrebaseExec = 'PreProc',
	gitrebaseFixup = 'gitrebaseSquash',
	gitrebaseMerge = 'PreProc',
	gitrebasePick  = 'Include',
	gitrebaseReset = 'gitrebaseLabel',
	gitrebaseReword  = 'gitrebasePick',
	gitrebaseSquash  = 'Macro',
	gitrebaseSummary = 'Title',

	--[[ 4.3.35. Vimtex ]]
	texMathRegion = 'Number',
	texMathSub   = 'Number',
	texMathSuper = 'Number',
	texMathRegionX  = 'Number',
	texMathRegionXX = 'Number',

	--[[ 4.3.36. Coq ]]
	coqConstructor   = 'Constant',
	coqDefBinderType = 'coqDefType',
	coqDefContents1  = 'coqConstructor',
	coqDefType  = 'Typedef',
	coqIndBinderTerm  = 'coqDefBinderType',
	coqIndConstructor = 'Delimiter',
	coqIndTerm = 'Type',
	coqKwd = 'Keyword',
	coqKwdParen   = 'Function',
	coqProofDelim = 'coqVernacCmd',
	coqProofDot   = 'coqTermPunctuation',
	coqProofPunctuation = 'coqTermPunctuation',
	coqRequire = 'Include',
	coqTactic  = 'Operator',
	coqTermPunctuation = 'Delimiter',
	coqVernacCmd = 'Statement',
	coqVernacPunctuation = 'coqTermPunctuation',

	--[[ 4.3.37 Help ]]
	helpHeader = 'Label',
	helpOption = 'Keyword',
	helpHeadline = 'Title',
	helpSectionDelim = 'Delimiter',
	helpHyperTextJump = 'Underlined',

	--[[ 4.4. Plugins
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing.
	]]
	--[[ 4.4.1. ALE ]]
	ALEErrorSign   = 'ErrorMsg',
	ALEWarningSign = 'WarningMsg',

	--[[ 4.4.2. coc.nvim ]]
	CocErrorHighlight = {style={'undercurl', color='red'}},
	CocHintHighlight  = {style={'undercurl', color='magenta'}},
	CocInfoHighlight  = {style={'undercurl', color='pink_light'}},
	CocWarningHighlight = {style={'undercurl', color='orange'}},
	CocErrorSign = 'ALEErrorSign',
	CocHintSign  = 'HintMsg',
	CocInfoSign  = 'InfoMsg',
	CocWarningSign = 'ALEWarningSign',

	--[[ 4.4.2. vim-jumpmotion / vim-easymotion ]]
	EasyMotion = 'IncSearch',
	JumpMotion = 'EasyMotion',

	--[[ 4.4.4. vim-gitgutter / vim-signify ]]
	GitGutterAdd    = {fg = green},
	GitGutterChange = {fg = yellow},
	GitGutterDelete = {fg = red},
	GitGutterChangeDelete = {fg = orange},

	--[[ 4.4.9. barbar.nvim ]]
	BufferCurrent       = 'TabLineSel',
	BufferCurrentIndex  = function(self) return {fg=self.InfoMsg.fg, bg=self.BufferCurrent.bg} end,
	BufferCurrentMod    = {fg=tan, bg=black, style='bold'},
	BufferCurrentSign   = 'HintMsg',
	BufferCurrentTarget = 'BufferCurrentSign',

	BufferInactive       = 'BufferVisible',
	BufferInactiveIndex  = function(self) return {fg=self.InfoMsg.fg, bg=self.BufferInactive.bg} end,
	BufferInactiveMod    = 'BufferVisibleMod',
	BufferInactiveSign   = 'BufferVisibleSign',
	BufferInactiveTarget = 'BufferVisibleTarget',

	BufferTabpages    = {fg=BG, bg=FG, style='bold'},
	BufferTabpageFill = 'TabLineFill',

	BufferVisible       = 'TabLine',
	BufferVisibleIndex  = function(self) return {fg=self.InfoMsg.fg, bg=self.BufferVisible.bg} end,
	BufferVisibleMod    = {fg=white, bg=gray_darker, style='italic'},
	BufferVisibleSign   = 'BufferVisible',
	BufferVisibleTarget = function(self)
		local parent = self.BufferVisibleMod
		return {fg=parent.fg, bg=parent.bg, style='bold'}
	end,
}

--[[ Step 5: Terminal Colors
	Define the color palette used by :terminal when in GUI Vim
	or in TUI Vim when 'termguicolors' is enabled. If this list
	is empty or if it doesn't contain exactly 16 items, the corresponding
	Vim variable won't be set.
	The expected values are colors defined in step 3.
	Terminal emulators use a basic palette of 16 colors that can be
	addressed by CLI and TUI tools via their name or their index, from
	0 to 15. The list is not really standardized but it is generally
	assumed to look like this:
	 | Index  | Name          |
	 |:------:|:-------------:|
	 | 1      | black         |
	 | 2      | darkred       |
	 | 3      | darkgreen     |
	 | 4      | darkyellow    |
	 | 5      | darkblue      |
	 | 6      | darkmagenta   |
	 | 7      | darkcyan      |
	 | 8      | gray          |
	 | 9      | darkgray      |
	 | 10     | red           |
	 | 11     | green         |
	 | 12     | yellow        |
	 | 13     | blue          |
	 | 14     | magenta       |
	 | 15     | cyan          |
	 | 16     | white         |
	While you are certainly free to make colors 0 to 7 shades of blue,
	this will inevitably cause usability issues so… be careful.
]]

local terminal_ansi_colors = {
	[1]  = black,
	[2]  = red_dark,
	[3]  = green_dark,
	[4]  = orange,
	[5]  = blue,
	[6]  = magenta_dark,
	[7]  = teal,
	[8]  = gray,
	[9]  = gray_dark,
	[10] = red,
	[11] = green,
	[12] = yellow,
	[13] = turqoise,
	[14] = purple,
	[15] = cyan,
	[16] = gray_light
}

--[[ Step 5: Sourcing
	When you wish to load your colorscheme, simply add this folder with a plugin manager
	and then use `colorscheme <your colorscheme name>`. For example, in my configuration,
	I source highlite by using `colorscheme highlite`.
	These online resources can help you design your colorscheme:
	1. the xterm palette.
		* http://upload.wikimedia.org/wikipedia/en/1/15/Xterm_256color_chart.svg
	2. play with hexadecimal colors right in the address bar (currently down).
		* http://whatcolor.herokuapp.com/
	3. similar concept, fuzzier implementation.
		* http://color.hailpixel.com/
	4. similar concept, fancier implementation.
		* http://colourco.de/
	5. extract a palette from an image.
		* http://www.colr.org/
	6. search for 'word', get images and color palettes.
		* http://colores.manugarri.com/
	7. user-created palettes.
		* http://www.colourlovers.com/palettes
	8. a no-nonsense colorscheme generator.
		* http://www.pluaang.dk/color+scheme/
	9. Adobe's fancy colorscheme generator.
		* https://color.adobe.com/
	10. The classic 'Color Scheme Designer', rebranded.
		* http://paletton.com/
	11. A very smart palette generator.
		* http://vrl.cs.brown.edu/color
	12. 'I Made My Own Colour Scheme and You Can Too!'.
		* https://cmcenroe.me/2018/04/03/colour-scheme.html
	A few things to note:
	* The Windows console (`cmd`) is limited to the 16 so-called 'ANSI' colors but it used to
			have a few of them interverted which makes numbers impractical. Use color names
			instead of numbers: :help cterm-colors
		* The Windows console doesn't do italics, underlines or bolded text;
			it is limited to normal and reverse. Keep that in mind if you want
			your colorscheme to be usable in as many environments as possible by as many
			people as possible.
		* The Windows TERMINAL, however, is capable of more.
	* All of the terminal emulators in use these days allow their users to
		change the 16 so-called 'ANSI' colors. It is also possible on some platforms
		to change some or all of the 256 colors in the xterm palette. Don't take
		anything for granted.
	* When used against a light background, strong colors work better than muted
		ones. Light or dark doesn't really matters. Also, it is harder to discriminate
		between two similar colors on a light background.
	* Both strong and muted colors work well against a dark background. It is also
		easier to work with similar colors, but dark colors don't work at all.
	* Use as many text samples as possible. String-heavy languages may look completely
		different than keyword-heavy ones. This can have an impact on the usability
		of your colorscheme.
	* Most terminal emulators and terminal multiplexers currently in use on unix-like
		systems support 256 colors but they almost always default to a '$TERM' that tells
		Vim otherwise. Your users will need to make sure their terminal emulator/multiplexer
		is correctly set up if they want to enjoy the best possible experience.
]]

require(vim.g.colors_name)(
	highlight_group_normal,
	highlight_groups,
	terminal_ansi_colors
)

-- Thanks to Romain Lafourcade (https://github.com/romainl) for the original template (romainl/vim-rnb).
-- vim: ft=lua

EOF
