# rajayonin's Vim cheatseet

## Modes
There are 3 modes on Vim, each mode having its own specific commands:
1. **NORMAL mode:** Keypresses represent actions. Enter it by pressing `Esc`.
2. **INSERT mode:** Keypresses represent characters. There are many ways of entering it (see [Insertion](#insertion)).
3. **VISUAL mode:** Here you can select characters like you would in a regular text editor. Enter it by pressing `v`.


# Actions
The following actions can only be done in NORMAL mode.  
To cancel any action, press `Esc`.

## Movement
- `h, j, k, l` - **move**  
Move cursor left, down, up, or right.
- `w` - **word**  
Move cursor to the beggining of the next word.
- `e` - **end**  
Move cursor to the end of the word
- `b` - **beggining**  
Move cursor to the beggining of the previous word.
- `0` - **start of line**  
Move cursor to the beggining of the line.
- `$` - **end of line**  
Move cursor to the end of the line.
- `%` - **parenthesis**  
Move cursor to matching parenthesis.
- `}`, `{` - **block**  
Jump to next/previous block/paragraph
- `gg`, `G` - **goto**    
Move cursor to the beggining/end of the file.
    - `[n]gg` - **goto line**  
    Move cursor to the beggining of line _n_.

## Insertion

- `i`, `I` - **insert**  
Enter insert mode at cursor/at beggining of line
- `r[char]` - **replace**  
Replace character under cursor with _char_, enter insert mode at cursor.
    - `R`  
    Replace more than one character, until `ESC` is pressed.
- `a`, `A` - **append**  
Enter insert mode after the cursor/after the end of the line.   
Usefull in combination with end: `ea` - insert to the end of the word.
- `o`, O - **newline**  
Add a new line after/before the current one, enter insert mode on new line.
- `S` - **clear line**  
Clear current line, enter insert mode.

## Edition

- `x`, `X` - **remove**  
Remove character at/before cursor.
- `d[movement]` - **delete** (cut)  
Delete characters in the range of _movement_, and copy to clipboard.  
Eg.: `de` deletes until til the end of the word.
    - `dd` - **delete line**  
    Delete the current line, copy to clipboard.   
    Moves cursor to the beggining of next line.
    - `D`  
    Deletes until the end of the current line.
- `J` - **join**  
Join line below to the current one, with one space in between.
    - gJ  
    Join line below to the current one, without space in between
- `>>`, `<<` - **indent/de-indent**
Indent/de-indent current line one shiftwidth.
    - `>%`, `<%` - **indent/de-indent block**  
    Indent/de-indent current paragraph one shiftwidth.
- `==` - **re-indent**
Removes indentation of the current line.
    - `=%` - **re-indent block**  
    Re-indents current block.
- `gu[movement]`, `gU[movement]` - **upper/lower case**  
Change to upper/lower case in the range of _movement_.
- `y[movement]` - **yank** (copy)  
Copy characters in _movement_ to clipboard.
    - `yy` - **yank line**  
    Copy the current line to clipboard.
- `p`, `P` - **put** (paste)  
Paste the clipboard after/before cursor.
- `u` - **undo**  
Undo last change.  
This includes actions and everything done in INSERT mode.
    - `U` - **restore line**  
    Restore last modified line.
- `Ctrl`+`r` - **redo**  
Redo last undo.
- `.` - **repeat action**  
Repeat last action.

## Search
- `f[char]`, `F[char]` - **find**  
Move to next/previous _char_ in line.
    - `;`, `,` - **repeat find ** 
    Repeat last next/previous find.
- /[text] - **search**  
Search _text_.
    - n, N - **match**  
    Go to next/previous match.

## Action modifiers
- `[n][action]` - **repeat**  
Repeats _action_ _n_ times.

## Other
- `Ctrl`+`y`, `Ctrl`+`e` - **scroll**  
Move screen up/down one line (without moving cursor)


# Commands

Commands can only be executed in NORMAL mode, and are preceded by `:`.
- `:w` - **write**  
Saves the current file.
- `:q` - **quit**  
Quit Vim.
- `:x` - **save & quit**
Saves current file and quits Vim.

Commands can be "forced" by adding `!` at the end.  
Eg.: `:q!` - **force quit**.


# Macros

Macros are series of inputs that can be recorded and redone.
- `q[macro]` - **start macro**
Starts recording a new _macro_.
    - `q` - **stop macro**
    Stops recording the current macro.
- `@[macro]` - **run macro**  
Runs _macro_.
    - `@@` - **rerun macro**  
    Reruns last macro.

# rajayonin-specific
These are some extra actions/commands I use, and must be included in the .vimrc config file. To check my file, click [here](https://github.com/rajayonin/rc/blob/main/.vimrc).

- `Alt`+`j`, `Alt`+`k` - **move line up/down**  
Moves current line up/down.