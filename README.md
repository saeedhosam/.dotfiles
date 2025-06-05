1. Tabs are controlled by tmux's panes, while windows should always be inside Neovim.

# Installed things

All the below is according to Arch.

- Neovim: main editor
  - package name: `neovim`
  - you'll need to add mason's binaries to your path in order for Conform.nvim to detect them.
    - For Nushell, add this to your ~/.config/nushell/env.nu file: `$env.PATH = ($env.PATH | prepend "~/.local/share/nvim/mason/bin")`
- Kdeconnect: contact with my phone
  - package name: `kdeconnect`
- Git: of course yep why not
  - package name: `git`
- Dysk: to display the free space available, usually just type `dysk` in the shell
  - package name: `dysk`
- Fileflight: same as dysk but GUI
  - package name: `filelight`
- Btop: like a task manager but advanced and with vim-like bindings
  - package name: `btop`
- Rofi
- Ghostty
- Flameshot
- Copyq
- Zathura: don't forget to make it the default viewier
- Libreoffice
- Qutebrowser: just experimenting it, it's good tho but needs time
- Telegram
- TickTick

## Full entry:

sudo pacman -Syu neovim kdeconnect git dysk filelight btop
