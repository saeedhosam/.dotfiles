# Oh on

## TO-DOs

- [x] NVIM: Make the blink.cmp ignore the enter key, I juust want it to accpet
      when pressing ctrl+y
- [x] NVIM: Add the serround plugin
- [ ] NVIM: Make it so that when you press <leader>r only in nvim, the program
      runs by identifying the extention of the current file.
- [ ] NVIM: Display the error when you run programs via nvim

- [ ] Quickshell: Make a todo list that's connected to a todo list app and add
      the morning routine; prayer, qur'an, adhkar
- [ ] Quickshell: Create a chat for local or api AI

## Workflow

- `hyprland`
- `neovim`
- `discord`
- `zen-browser` for general stuff
- `brave` for ad blocking browsing
- `qutebrowser` for reading documentation
- `obsidian`
- `quickshell`
- `ghostty` for Arch
- `alacritty` for Windows
- `tmux`
- `copyq`
- `zathura`
- `GSuite`
- `fileflight` for GUI and `dysk` for TUI
- `rofi`
- `yazi`
- `btop`
- `kdeconnect`
- `grim`
- `wl-clipboard`
- `nushell`
- `mpv`
- `matugen`
- `fontconfig` and its fonts
- `git`
- `base-devel`
- `spotify-launcher`
- `pavucontrol`
- `swww`
- `networkmanager`
- `fastfetch`
- `stow`

## Commands

- `sudo pacman -S stow pavucontrol networkmanager fastfetch swww spotify-launcher neovim git base-devel dysk filelight ghostty fontconfig nerd-fonts ttf-dejavu ttf-cascadia-code ttf-opensans noto-fonts mpv hyprland discord nushell qutebrowser alacritty tmux copyq zathura rofi yazi btop kdeconnect grim wl-clipboard`
- `yay -S zen-browser quickshell obsidian matugen-bin brave-bin google-chrome`

## Windows

Here are the commands used to make symbolic links, install Alacritty, and
Neovim.

- `cmd /c mklink /D "%APPDATA%\alacritty" "%USERPROFILE%\.dotfiles\.config\alacritty"`
- `cmd /c mklink /D "%LOCALAPPDATA%\nvim" "%USERPROFILE%\.dotfiles\.config\nvim"`
