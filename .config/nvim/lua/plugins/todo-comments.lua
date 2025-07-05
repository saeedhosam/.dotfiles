return {
    'folke/todo-comments.nvim',
    opts = {
        keywords = {
            True = {
                icon = '󰄬 ',
                color = '#99d98c',
            },
            False = {
                icon = ' ',
                color = '#ff4d6d',
            },
        },
        highlight = {
            comments_only = false,
            before = '',
            after = '',
            pattern = [[\((KEYWORDS)\)]],
        },
    },
}
