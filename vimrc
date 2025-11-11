set nocompatible
set title
set number
set ruler
set showmode
set showcmd
set confirm
set hidden
set history=1024
set undolevels=1024
set clipboard=unnamed
set wildmenu
set wildmode=list:longest,full
set ttyfast
set nolist
set visualbell
set t_vb=
set t_u7=
set shm+=I
set backspace=indent,eol,start
set display=truncate

set tabstop=8
set softtabstop=0
set shiftwidth=8

syntax off
colorscheme koehler
set background=dark
set guicursor+=a:blinkon0
set guicursor+=i:hor100
set cursorline
set cursorlineopt=number

highlight cursorlinenr term=bold cterm=bold ctermbg=darkred guibg=darkred gui=bold
highlight cursorline ctermfg=white ctermbg=darkred guibg=darkred guifg=white gui=NONE
highlight cursorcolumn ctermfg=white ctermbg=darkred guibg=darkred guifg=white gui=NONE
highlight SpellBad cterm=underline ctermbg=darkred ctermfg=white ctermul=yellow gui=undercurl guisp=red guibg=black guifg=NONE
highlight EndOfBuffer term=NONE cterm=bold ctermbg=NONE ctermfg=black gui=bold guibg=NONE guifg=black
highlight Normal term=NONE cterm=NONE ctermfg=231 ctermbg=black gui=NONE guifg=#FFCC00 guibg=black

set cindent
set cinoptions=(4200,u4200,+0.5s,*500,:0,t0,U4200
set indentkeys=0{,0},0),:,0#,!^F,o,O,e

set noshowmatch
set matchpairs+=<:>
let g:loaded_matchparen=1
let g:is_posix=1

set incsearch
set ignorecase
set shiftround
highlight search cterm=NONE ctermfg=0 ctermbg=7

set encoding=utf-8
set ffs=unix,dos,mac
if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
	set fileencodings=ucs-bom,utf-8,latin1
endif

set backup
set backupdir=~/.vim/tmp
set dir=~/.vim/swp
set runtimepath+=~/.vim/add

set showtabline=2
"set cmdheight=2
set cmdheight=1
"set laststatus=2
set laststatus=0
if has("statusline")
	set statusline=%1*\%02n\ %t\ %w%h%r%q%m%=[%.20{expand('%:p:h')}]\ %5O\ %3l:%-3L\ %3c:%-3v\ %3p%%\ \ %*
	highlight User1 ctermfg=red ctermbg=black guifg=red guibg=black
endif

if has("gui_running")
	let g:rehash256 = 1
	set t_Co=256
	set cursorline
	set guioptions-=r
	set guioptions-=T
	highlight cursor guifg=black guibg=lightgrey
	highlight search guibg=darkgrey guifg=black
endif

if has("win32")
	set ffs=dos,unix,mac
	set guifont=JuliaMono_Light:h12
endif

nnoremap <F1> :w<CR>
inoremap <F1> <ESC>:w<CR>a

nnoremap <F2> :w<CR>
inoremap <F2> <ESC>:w<CR>

nnoremap <silent> <F3> :<C-U>call FuncLangEL()<CR>
inoremap <silent> <F3> <ESC>:<C-U>call FuncLangEL()<CR>a

let s:VarLangEL=1
function! FuncLangEL()
	if s:VarLangEL
		set keymap=greek_utf-8
	else
		set keymap=
	endif
	let s:VarLangEL = !s:VarLangEL
endfunction

nnoremap <silent> <F4> :<C-U>call FuncLangDE()<CR>
inoremap <silent> <F4> <ESC>:<C-U>call FuncLangDE()<CR>a

let s:VarLangDE=1
function! FuncLangDE()
	if s:VarLangDE
		set keymap=german-qwertz
	else
		set keymap=
	endif
	let s:VarLangDE = !s:VarLangDE
endfunction

nnoremap <silent> <F5> :call FuncReset()<CR>
inoremap <silent> <F5> <ESC>:call FuncReset()<CR>i

function! FuncReset()
	syntax off
	filetype plugin indent on
	set textwidth=72
	set shiftwidth=8
	set tabstop=8
	set nolist
	set indentexpr=
	set noautoindent
	set nosmartindent
	set cindent
	set cinoptions=(4200,u4200,+0.5s,*500,:0,t0,U4200
	set indentkeys=0{,0},0),:,0#,!^F,o,O,e
	set backspace=indent,eol,start
endfunction

nnoremap <silent> <F6> :call OpenBSD_Style()<CR>
inoremap <silent> <F6> <ESC>:call OpenBSD_Style()<CR>i

function! IgnoreParenIndent()
	let indent = cindent(v:lnum)
	if indent > 4000
		if cindent(v:lnum - 1) > 4000
			return indent(v:lnum - 1)
		else
			return indent(v:lnum - 1) + 4
		endif
	else
		return (indent)
	endif
endfunction

function! OpenBSD_Style()
	setlocal cindent
	setlocal cinoptions=(4200,u4200,+0.5s,*500,:0,t0,U4200
	setlocal indentexpr=IgnoreParenIndent()
	setlocal indentkeys=0{,0},0),:,0#,!^F,o,O,e
	setlocal noexpandtab
	setlocal shiftwidth=8
	setlocal tabstop=8
	setlocal textwidth=80
endfunction

nnoremap <silent> <F7> :<C-U>call FuncSpellEN()<CR>
inoremap <silent> <F7> <ESC>:<C-U>call FuncSpellEN()<CR>a

let s:VarSpellEN=1
function! FuncSpellEN()
	if s:VarSpellEN
		set spell spelllang=en_gb
	else
		set nospell
	endif
	let s:VarSpellEN = !s:VarSpellEN
endfunction

set pastetoggle=<F8>
"nnoremap <F8> :set invpaste paste?<CR>
"inoremap <F8> <C-O>:set invpaste paste?<CR>

nnoremap <silent> <F9> :<C-U>call FuncCrosshair()<CR>
inoremap <silent> <F9> <ESC>:<C-U>call FuncCrosshair()<CR>a

let s:VarCrosshair=1
function! FuncCrosshair()
	if s:VarCrosshair
		set colorcolumn=72
		set cursorcolumn
		set cursorlineopt=both
		set cursorline
	else
		set colorcolumn=
		set cursorlineopt=number
		set nocursorcolumn
		if !s:VarFull
			set nocursorline
		endif
	endif
	let s:VarCrosshair = !s:VarCrosshair
endfunction

nnoremap <silent> <F12> :<C-U>call FuncFull()<CR>
inoremap <silent> <F12> <ESC>:<C-U>call FuncFull()<CR>a

let s:VarFull=1
function! FuncFull()
	if s:VarFull
		set nonumber
		set noruler
		set noshowmode
		set showcmd
		set nocursorline
		set foldcolumn=4
		set showtabline=0
	else
		set number
		set ruler
		set showmode
		set noshowcmd
		set cursorline
		set foldcolumn=0
		set showtabline=2
	endif
	if !s:VarCrosshair
		set cursorlineopt=both
		set cursorline
	endif
	let s:VarFull = !s:VarFull
endfunction

let mapleader="t"
map <leader>te :tabedit<CR>
map <leader>to :tabonly<CR>
map <leader>tc :tabclose<CR>
map <leader>tm :tabmove
map <leader>g :tabNext<CR>

set tags+=/var/db/libc.tags
set tags+=/var/db/sys_tags
