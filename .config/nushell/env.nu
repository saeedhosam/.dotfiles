# Basic Nushell Environment
$env.XDG_CURRENT_DESKTOP = "sway"
$env.PATH = ($env.PATH | prepend "~/.local/share/nvim/mason/bin")
