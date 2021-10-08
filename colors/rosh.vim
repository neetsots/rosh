"------------------------------------------------------------------------------
" Name:         rosh
" Author:       eliem
" Maintainer:   eliem
" License:      MIT
"------------------------------------------------------------------------------

highlight clear
if exists('syntax_on')
  syntax reset
endif

" ---- COMPLEMENTARY ----------------------------------------------------------
let g:colors_name = 'rosh'
set background=dark

let  s:clear    =  ['NONE', 'NONE'   ]

let  s:Green    =  ['NONE',   '#6effa0']
let  s:Blue     =  ['NONE',   '#6ecdff']
let  s:Magenta  =  ['NONE',   '#ff6ecd']
let  s:Orange   =  ['NONE',   '#ffa06e']
let  s:Red      =  ['NONE',   '#f3425c']

let  s:White    =  ['NONE',   '#d1d1d1']
let  s:PaleGrey =  ['NONE',   '#eeeeee']
let  s:SoftGrey =  ['NONE',   '#898c98']
let  s:BaseGrey =  ['NONE',   '#595b66']
let  s:PitchGrey=  ['NONE',   '#2b2c31']
let  s:DarkGrey =  ['NONE',   '#222327']
let  s:Black    =  ['NONE',   '#000000']

" Text style
let s:italic    = 'italic'
let s:bold      = 'bold'
let s:underline = 'underline'
let s:none      = 'NONE'

let  s:Grey0   =  s:White
let  s:Grey1   =  s:PaleGrey
let  s:Grey2   =  s:SoftGrey
let  s:Grey3   =  s:BaseGrey
let  s:Grey4   =  s:DarkGrey
let  s:Grey5   =  s:PitchGrey
let  s:Grey6   =  s:Black

"------------------------------------------------------------------------------
" HIGHLIGHT helper function to highlight depending on background type
function! s:highlight(group, fg, bg, style)
  exec  "highlight "  . a:group
    \ . " ctermfg="   . a:fg[0]
    \ . " ctermbg="   . a:bg[0]
    \ . " cterm="     . a:style
    \ . " guifg="     . a:fg[1]
    \ . " guibg="     . a:bg[1]
    \ . " gui="       . a:style
endfunction

" Special syntax colors
call  s:highlight('VisualColor',  s:Green,    s:DarkGrey,  s:bold)
call  s:highlight('InsertColor',  s:Blue,     s:DarkGrey,  s:bold)
call  s:highlight('ReplaceColor', s:Red,      s:DarkGrey,  s:bold)
call  s:highlight('CommandColor', s:Orange,   s:DarkGrey,  s:bold)
call  s:highlight('NormalColor',  s:Grey0,    s:DarkGrey,  s:bold)

" Syntax highlighting groups
"
" For reference on what each group does, please refer to this:
" vimdoc.sourceforge.net/htmldoc/syntax.html
"------------------------------------------------------------------------------
call  s:highlight('Search',          s:Grey4,   s:Green,   s:bold)
call  s:highlight('Comment',         s:Grey3,   s:clear,   s:none)
call  s:highlight('Constant',        s:Grey1,   s:clear,   s:none)
call  s:highlight('String',          s:Blue,    s:clear,   s:none)
call  s:highlight('Character',       s:Grey1,   s:clear,   s:none)
call  s:highlight('Number',          s:Red,     s:clear,   s:none)
call  s:highlight('Boolean',         s:Green,   s:clear,   s:none)
call  s:highlight('Float',           s:Green,   s:clear,   s:none)
call  s:highlight('Identifier',      s:Grey0,   s:clear,   s:none)
call  s:highlight('Function',        s:Orange,  s:clear,   s:bold)
call  s:highlight('Statement',       s:Orange,  s:clear,   s:bold)
call  s:highlight('Conditional',     s:Green,   s:clear,   s:bold)
call  s:highlight('Repeat',          s:Grey2,   s:clear,   s:bold)
call  s:highlight('Label',           s:Grey0,   s:clear,   s:bold)
call  s:highlight('Operator',        s:Green,   s:clear,   s:none)
call  s:highlight('Keyword',         s:Magenta, s:clear,   s:italic)
call  s:highlight('Exception',       s:Orange,  s:clear,   s:italic)
call  s:highlight('PreProc',         s:Grey1,   s:clear,   s:bold)
call  s:highlight('Include',         s:Grey2,   s:clear,   s:italic)
call  s:highlight('Define',          s:Grey2,   s:clear,   s:italic)
call  s:highlight('Macro',           s:Grey2,   s:clear,   s:none)
call  s:highlight('PreCondit',       s:Grey2,   s:clear,   s:italic)
call  s:highlight('Type',            s:Blue,    s:clear,   s:none)
call  s:highlight('StorageClass',    s:Orange,  s:clear,   s:bold)
call  s:highlight('Structure',       s:Orange,  s:clear,   s:bold)
call  s:highlight('Name',            s:Grey0,   s:clear,   s:none)
call  s:highlight('Typedef',         s:Grey0,   s:clear,   s:bold)
call  s:highlight('Special',         s:Grey0,   s:clear,   s:none)
call  s:highlight('SpecialChar',     s:Blue,    s:clear,   s:none)
call  s:highlight('Delimiter',       s:Orange,  s:clear,   s:none)
call  s:highlight('SpecialComment',  s:Grey1,   s:clear,   s:none)
call  s:highlight('Debug',           s:Orange,  s:clear,   s:none)
call  s:highlight('Underlined',      s:Grey1,   s:clear,   s:underline)
call  s:highlight('Error',           s:Orange,  s:clear,   s:underline)
call  s:highlight('Todo',            s:Grey4,   s:Magenta, s:bold)
call  s:highlight('Directory',       s:Grey1,   s:clear,   s:bold)
call  s:highlight('CursorLine',      s:clear,   s:clear,   s:bold)
call  s:highlight('MatchPatern',     s:Grey0,   s:Green,   s:none)
call  s:highlight('ColorColumn',     s:Orange,  s:Grey0,   s:none)

" --- INTERFACE ---------------------------------------------------------------
call  s:highlight('Normal',        s:White,    s:clear,  s:none)
call  s:highlight('Visual',        s:Grey4,    s:Grey1,  s:none)
call  s:highlight('Cursor',        s:clear,    s:Grey0,  s:none)
call  s:highlight('Special',       s:Magenta,  s:clear,  s:none)
call  s:highlight('iCursor',       s:clear,    s:Grey0,  s:none)
call  s:highlight('LineNr',        s:Grey3,    s:clear,  s:none)
call  s:highlight('NonText',       s:Grey3,    s:clear,  s:none)
call  s:highlight('CursorLineNR',  s:Red,      s:Grey5,  s:bold)
call  s:highlight('VertSplit',     s:Grey3,    s:clear,  s:none)
call  s:highlight('StatusLine',    s:Grey2,    s:Grey4,  s:none)
call  s:highlight('StatusLineNC',  s:Grey4,    s:Grey4,  s:none)

" --- VIMDIFF -----------------------------------------------------------------
call  s:highlight('DiffAdd',    s:Grey4, s:Green,  s:bold)
call  s:highlight('DiffDelete', s:Red, s:Red,      s:none)
call  s:highlight('DiffChange', s:Grey4, s:Orange, s:bold)
call  s:highlight('DiffText',   s:Grey4, s:Orange, s:bold)

" --- GIT GUTTER --------------------------------------------------------------
call  s:highlight('GitGutterAdd',         s:Grey4, s:Green,  s:none)
call  s:highlight('GitGutterChange',      s:Grey4, s:Orange, s:none)
call  s:highlight('GitGutterDelete',      s:Grey4, s:Red,    s:none)
call  s:highlight('GitGutterChangeDelete',s:Grey4, s:Red,    s:none)
call  s:highlight('SignColumn',           s:Grey4, s:clear,  s:none)

" Vimscript syntax highlighting
call  s:highlight('vimOption',   s:Grey1,  s:clear,  s:none)

" --- OMNICOMPLETE ------------------------------------------------------------
call  s:highlight('Pmenu',       s:Grey1,  s:Grey4,  s:none)
call  s:highlight('PmenuSbar',   s:clear,  s:Grey4,  s:none)
call  s:highlight('PmenuThumb',  s:clear,  s:Grey4,  s:none)
call  s:highlight('PmenuSel',    s:Grey4,  s:Red,  s:none)

" --- NERDTREE ----------------------------------------------------------------
call s:highlight('NERDTreeClosable', s:Orange, s:clear, s:none)

" --- RIPGREP -----------------------------------------------------------------

" --- PYTHON ------------------------------------------------------------------
call  s:highlight('pythonFunction',  s:Grey1,  s:clear,  s:none)
call  s:highlight('pythonBuiltin',   s:Grey1,  s:clear,  s:italic)

" --- GOLANG ------------------------------------------------------------------
" Requires plug: fatih/vim-go
call  s:highlight('goPackage',      s:Grey2,    s:clear,  s:italic)
call  s:highlight('goImport',       s:Orange,   s:clear,  s:italic)
call  s:highlight("goDirective",    s:Grey0,   s:clear,  s:none)
call  s:highlight("goDeclaration",  s:Magenta,   s:clear,  s:none)
call  s:highlight("goStatement",    s:Green,    s:clear,  s:none)
call  s:highlight("goConditional",  s:Green,  s:clear,  s:none)
call  s:highlight("goConstants",    s:Blue,   s:clear,  s:none)
call  s:highlight("goTodo",         s:Red,   s:clear,  s:none)
call  s:highlight("goDeclType",     s:Magenta,   s:clear,  s:none)
call  s:highlight("goBuiltins",     s:Green,   s:clear,  s:none)
call  s:highlight("goRepeat",       s:Grey2,   s:clear,  s:none)
call  s:highlight("goLabel",        s:Blue,   s:clear,  s:none)

" --- RUST --------------------------------------------------------------------
" Requires plug: rust-lang/rust.vim
call  s:highlight('rustMacro',    s:Orange,   s:clear,  s:none)
call  s:highlight('rustKeyword',  s:Magenta,  s:clear,  s:none)
call  s:highlight('rustType',     s:Orange,   s:clear,  s:none)
call  s:highlight('rustTrait',    s:Orange,   s:clear,  s:none)
call  s:highlight('rustString',   s:Blue,     s:clear,  s:none)
call  s:highlight('rustNumber',   s:Green,    s:clear,  s:none)
set cursorline
