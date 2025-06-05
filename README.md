1. Tabs are controlled by tmux's panes, while windows should always be inside Neovim.

# Installed things

All the below is according to Arch.

- Neovim: main editor
  - package name `neovim`
  - you'll need to add mason's binaries to your path in order for Conform.nvim to detect them.
    - For Nushell, add this to your ~/.config/nushell/env.nu file: `$env.PATH = ($env.PATH | prepend "~/.local/share/nvim/mason/bin")`
- Kdeconnect: contact with my phone

## Full entry:

sudo pacman -Syu kdeconnect neovim git git-base dysk btop
