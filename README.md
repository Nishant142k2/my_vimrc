# My vim Rc

A streamlined Vim configuration inspired by ThePrimeagen's workflow, focusing on efficient navigation, file management, and editing without unnecessary complexity.

## Features

- **Smart defaults**: Relative line numbers, smart indenting, persistent undo
- **Centered cursor**: Search results and movements keep cursor in viewport
- **FZF integration**: Fast file and content searching
- **Harpoon**: Quick file navigation between frequently used files
- **Git integration**: Fugitive for Git operations
- **Modern editing**: Commentary, surround, and repeat plugins
- **Gruvbox theme**: Easy on the eyes color scheme

## Installation

1. Install [vim-plug](https://github.com/junegunn/vim-plug):
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

2. Create undodir:
```bash
mkdir -p ~/.vim/undodir
```

3. Copy the configuration to `~/.vimrc`

4. Install plugins:
```bash
vim +PlugInstall +qall
```

5. Install FZF and ripgrep for search:
```bash
# macOS
brew install fzf ripgrep

# Ubuntu/Debian
sudo apt install fzf ripgrep
```

## Key Bindings

**Leader key**: `Space`

### File Navigation
- `<leader>pv` - Open file explorer
- `<leader>pf` - Fuzzy find files
- `<leader>ps` - Search in files (ripgrep)

### Harpoon (Quick File Switching)
- `<leader>a` - Add file to harpoon
- `<leader>h` - Toggle harpoon menu
- `<leader>1-4` - Jump to harpooned file 1-4

### Editing
- `<leader>y` - Yank to system clipboard
- `<leader>p` - Paste without losing register
- `J/K` (visual mode) - Move selected lines up/down
- `jj` - Exit insert mode

### Window Navigation
- `Ctrl-h/j/k/l` - Navigate between splits

### Basic Operations
- `<leader>w` - Save file
- `<leader>q` - Quit

## Plugins

- **tpope/vim-commentary** - Comment/uncomment code
- **tpope/vim-surround** - Surround text with quotes, brackets, etc.
- **tpope/vim-fugitive** - Git integration
- **tpope/vim-vinegar** - Enhanced netrw file explorer
- **junegunn/fzf** - Fuzzy finder
- **ThePrimeagen/harpoon** - Quick file navigation
- **morhetz/gruvbox** - Color scheme

## Notes

- This config is for **Vim**, not Neovim
- Mouse support is disabled by default
- Swap files and backup files are disabled
- Undo history persists between sessions
