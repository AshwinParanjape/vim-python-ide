# Vim as a Python IDE in 2022

A common reason for not using Vim for Python coding is that it has a weak out-of-the-box support for Python, especially when compared modern IDEs like PyCharm or VS Code. 
With the advancements over the last two years, nearly all the niceties of modern IDEs can now be made available in vim. 
With this repository it takes 5 minutes to set up Vim as a powerful Python code editor/IDE with a minimal but comprehensive set of features.

## Features 
To avoid bloat, I have tried to keep the most essential features for Python coding. 
These are features that I reach for on a regular (daily) basis. 

**Language Help**
- Code Navigation - go to definition, references, type definition, implementation
- Linting & Diagnostics - static type checking, errors, warnings
- Intellisense auto-complete - recommend variables in scope, object methods, function parameters, 
- Display docs - popup documentation of classes and methods
- Auto formatting - Automatically format according to standardized style guides
- Visual debugging - (as opposed to command line) debug with variables, call stack, and step through code etc. 
- Pythonic Folding and indentation - Fold classes, functions

**General goodness**
- Fuzzy file (name) search - open files by partially matching with file names
- Fuzzy full-text search - search for arbitrary patterns in files
- File tree - visualize the directory tree and open files
- Easy git operation - list unstaged files, compare diffs, stage files with one keystroke

## Setup
If you want all of these features, and don't mind starting vimrc from scratch, simply clone this repository and run `bash setup.sh`. *It will overwrite your .vimrc, but save the old one as .vimrc.backup .* This is done to automate installation while avoiding a clash with the previous setup. 

It uses [Plug](https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim) as the plugin manager and has a separate vimrc file with keybindings/configurations corresponding to each plugin that you can customize. You can even exclude the plugin and the corresponding vimrc file if you don't want to use it. If you fork this repo, and push your customizations, you can easily setup vim anywhere (e.g. friend's computer, servers). The setup script will automatically install the vim plugins and coc extensions.

For full text search, I like using ripgrep (rg), a fast regex search written in Rust, for full text serach, (exposed as `:Rg` via fzf). To install ripgrep on your system follow these [installation instructions](https://github.com/BurntSushi/ripgrep#installation).

The installation script adds the default keybindings for each package (for e.g. `coc.vimrc`). But feel free to edit them and make them your own. Each plugin has good documentation on how to update the keybindings.

## Plugins (a.k.a. what's being installed)
We will use the following plugins 
- [CoC](https://github.com/neoclide/coc.nvim) to get modern code help from a language server (over LSP) like Code navigation, linting, autocomplete, docs, formatting
- [Vimspector](https://github.com/puremourning/vimspector) for visual debugging
- [SimpylFold](https://github.com/tmhedberg/SimpylFold) for python specific code folding for vim, [FastFold](https://github.com/Konfekt/FastFold) to speed up folding
- [IndentPython](https://www.vim.org/scripts/script.php?script_id=974) to follow PEP 8 while indenting python code
- [CtrlP](https://github.com/kien/ctrlp.vim) for fuzzy file, buffer, mru, tag, etc finding
- [FzF](https://github.com/junegunn/fzf) for fuzzy full-text search with ripgrep
- [Fugitive](https://github.com/tpope/vim-fugitive) for git operation
- [NerdTree](https://github.com/preservim/nerdtree) a tree (file) explorer

## History
I have been using vim for around 10 years now, and switched to coding in Python on a regular basis around 7 years ago. 
While Vim did offer intellisense-like abilities (ctags) for C/C++, it had little support for Python (AFAIK).
Around 4 years ago, as I started working with a large Python codebase, and PyCharm with Vim keybindings seemed like a more pragmatic choice.  
Python is a lot more tolerable with types and linting. And PyCharm had good intellisense and autocomplete too, which made life much easier. 
Last year, I tried VS Code, which is now roughly up to par with PyCharm for most usecases, again with vim keybindings. 
However, I felt I was coding slower in PyCharm or VS Code overall, despite the convenience of all the IDE-like features. 
Some of the keybindings would misfire, and I often had to google "how to do X in Pycharm/VSCode" and learn new keystrokes or shortcuts. 
Meanwhile, a lot had happened in vim land over the last four years, most importantly appearence of projects like CoC, Ale and Vimspector, 
which brought most of the useful IDE like features back to Vim. And thus I decided to create a Vim setup for myself. 
It took me about a day, but I feel satisfied with the development experience and increased my coding/code-manipulation speed drastically. 
