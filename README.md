# README

## Prerequisites
[Neovim](https://neovim.io/) config files for standalone usage or together with vscode.

Vim pluggin manager [vim-plug](https://github.com/junegunn/vim-plug) is required.


## Recommendations
[Nushell](https://www.nushell.sh/) is recommended, or you need to slightly modify [init.vim](./init.vim).

[Bob](https://github.com/mordechaihadad/bob) makes life easy to install, update and switch between different Neovim versions on any OS.

For alternative ways to install Neovim, you may choose [Homebrew](https://brew.sh) for macOS and [Scoop](https://scoop.sh) for Windows.

[Powerline Font](https://github.com/powerline/powerline) is recommended to use in your terminal.
In this case [Cascadia Mono PL](https://github.com/microsoft/cascadia-code) is a good choice.

## Use Cases

### Neovim

With [vim-plug](https://github.com/junegunn/vim-plug) already installed, just copy and paste [init.vim](init.vim) and run `:PlugInstall` inside neovim.

If plugins are not suitable in your case, [plug-free.vim](plug-free.vim) is an alternative.

### Vscode
To use with vscode, modify vscode neovim plugin settings:

Vscode-neovim > Neovim Init Vim Paths