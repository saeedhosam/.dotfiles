return {
    'mason-org/mason.nvim',
    cmd = { 'Mason', 'MasonInstall', 'MasonUpdate' },
    opts = {
        PATH = 'skip',
        ui = {
            icons = {
                package_pending = ' ',
                package_installed = ' ',
                package_uninstalled = ' ',
            },
        },
        max_concurrent_installers = 10,
        ensure_installed = {
            'lua_ls',
            'ts_ls',
            'marksman',
            'taplo',
            'ruff',
            'hyprls',
            'clangd',
            'qmlls',
        },
    },
}
