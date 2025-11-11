# Mithramos™ vimrc

## OpenBSD Vim configuration
* Use `vimrc` for `vim` and `gvim`.
* Use `exrc` for `vi` and `nvi`.
* Rename `vimrc` and  `exrc` files to `.exrc` and `.vim` respectively.
* Rename `vim` folder to `.vimrc`.

## Windows
* Rename `.vimrc` to `_vimrc`
* Move `.vimrc` to `%USERPROFILE%`.

### Shortkeys
* `[F1]`  Save [Insert Mode].
* `[F2]`  Save [Command Mode].
* `[F3]`  GRC language swtich.
* `[F6]`  OpenBSD `style(9)`.
* `[F5]`  Reset to default, i.e. it ignores a prior F6 (OpenBSD).
* `[F4]`  DEU language swtich.
* `[F7]`  Spell checker (EN_GB).
* `[F8]`  pastetoggle.
* `[F9]`  Crosshair, i.e. colorcolumn, cursorcolumn and cursorline.
* `[F12]` Fullscreen, i.e. it hides various parts of þ editor.


### Custom Directories
* `~/.vim/tmp` for *backup*.
* `~/.vim/swp` for *swap*.
* `~/.vim/add` for *plugins*.

### Features
* 72 CPL (character per line).
* Indentation is an 8 character tab.
* A customized Status Bar.
* CLI and GUI compatible.
* Windows compatible (gvim).
* Solves MS Windows (Cygwin, Msys2, WSL) auto-INSERT problem in startup.
* Custom directories for backup, temporary and runtimes files.
* Incremental search (rounded & highlighted) and þ cindent.
* Disable beep, visual bell and special characters, e.g. `^I`.
* Syntax highlighting and highlight matching.
* Ruler, line number and padding.
* Backspace and `@@@` settings.
* Clipboard, history and undo.
* `wildmenu` and encoding.
* etc.
