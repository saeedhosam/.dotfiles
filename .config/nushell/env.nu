# Basic Nushell Environment
$env.PATH = ($env.PATH | prepend "~/.local/share/nvim/mason/bin")
$env.PATH = ($env.PATH | append '/usr/lib/qt6/bin')
