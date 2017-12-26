# paste.vim

Paste from clipboard at full speed using pbpaste, xclip or xsel.

## Installation

Use your plugin manager of choice.

- [Vundle](https://github.com/gmarik/vundle)
  - Add `Bundle 'enricobacis/paste.vim'` to .vimrc
  - Run `:BundleInstall`
- [NeoBundle](https://github.com/Shougo/neobundle.vim)
  - Add `NeoBundle 'enricobacis/paste.vim'` to .vimrc
  - Run `:NeoBundleInstall`
- [vim-plug](https://github.com/junegunn/vim-plug)
  - Add `Plug 'enricobacis/paste.vim'` to .vimrc
  - Run `:PlugInstall`

## Usage

After you have installed the plugin you can use the default mapping

    <leader>v

to paste the current content of the clipboard at cursor position.

This is way faster than pasting in normal mode and paste mode.

## Configuration

You can disable the default mapping ang configure your own:

    let g:paste_no_mappings = 1
    nnoremap <shortcut> :Paste<CR>
