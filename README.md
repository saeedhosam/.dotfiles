1. Tabs are controlled by tmux's panes, while windows should always be inside Neovim.

# Installed things

All the below is according to Arch.

- Neovim: main editor
  - package name: `neovim`
  - you'll need to add mason's binaries to your path in order for Conform.nvim to detect them.
    - For Nushell, add this to your ~/.config/nushell/env.nu file: `$env.PATH = ($env.PATH | prepend "~/.local/share/nvim/mason/bin")`
- Kdeconnect: contact with my phone
  - package name: `kdeconnect`
- git: of course yep why not
  - package name: `git`
- dysk: to display the free space available, usually just type `dysk` in the shell
  - package name: `dysk`
- Fileflight: same as dysk but GUI
  - package name: `filelight`
- btop: like a task manager but advanced and with vim-like bindings
  - package name: `btop`

## Full entry:

sudo pacman -Syu neovim kdeconnect git dysk filelight btop
