return {
    {
        'CopilotC-Nvim/CopilotChat.nvim',
        dependencies = {
            { 'nvim-lua/plenary.nvim', branch = 'master' },
        },
        build = 'make tiktoken',
        opts = {
            window = {
                layout = 'float',
                border = 'rounded',
                title = 'Copilot',
                width = 0.8,
                height = 0.8,
            },
            headers = {
                user = ' Saeed ',
                assistant = ' Soul ',
                tool = 'Tool: ',
            },
            show_folds = false,
        },
    },
}
