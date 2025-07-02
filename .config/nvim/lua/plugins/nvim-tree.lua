dofile(vim.g.base46_cache .. 'nvimtree')
local HEIGHT_RATIO = 0.8 -- You can change this
local WIDTH_RATIO = 0.5 -- You can change this too
return {
    'nvim-tree/nvim-tree.lua',
    enabled = false,
    opts = {
        filters = { dotfiles = false },
        disable_netrw = true,
        hijack_cursor = true,
        sync_root_with_cwd = true,
        update_focused_file = {
            enable = true,
            update_root = false,
        },
        view = {
            preserve_window_proportions = true,
            float = {
                enable = true,
                open_win_config = function()
                    local screen_w = vim.opt.columns:get()
                    local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
                    local window_w = screen_w * WIDTH_RATIO
                    local window_h = screen_h * HEIGHT_RATIO
                    local window_w_int = math.floor(window_w)
                    local window_h_int = math.floor(window_h)
                    local center_x = (screen_w - window_w) / 2
                    local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()
                    return {
                        border = 'rounded',
                        relative = 'editor',
                        row = center_y,
                        col = center_x,
                        width = window_w_int,
                        height = window_h_int,
                    }
                end,
            },
            width = function()
                return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
            end,
        },
        renderer = {
            root_folder_label = false,
            highlight_git = true,
            indent_markers = { enable = true },
            icons = {
                glyphs = {
                    default = '󰈚',
                    folder = {
                        default = '',
                        empty = '',
                        empty_open = '',
                        open = '',
                        symlink = '',
                    },
                    git = { unmerged = '' },
                },
            },
        },
        on_attach = function(bufnr)
            local api = require 'nvim-tree.api'
            local map = vim.keymap.set
            local function opts(desc)
                return {
                    desc = 'nvim-tree: ' .. desc,
                    buffer = bufnr,
                    noremap = true,
                    silent = true,
                    nowait = true,
                }
            end
            api.config.mappings.default_on_attach(bufnr)
            -- custom bindings
            map('n', 'H', api.tree.change_root_to_parent, opts 'Up')
            map('n', '.', api.tree.change_root_to_node, opts 'Down')
            map('n', '?', api.tree.toggle_help, opts 'Help')
            map('n', 'h', api.node.navigate.parent_close, opts 'Close Directory')
            map('n', 'L', api.node.open.preview, opts 'Open Preview')
            map('n', '\\', '<cmd>NvimTreeToggle<CR><cmd>NvimTreeRefresh<CR>', { desc = 'toggle nvim tree' })

            -- Custom mapping for 'l' to handle PDFs differently
            map('n', 'l', function()
                local node = api.tree.get_node_under_cursor()
                if node.name:match '%.pdf$' then
                    vim.fn.jobstart({ 'zathura', node.absolute_path }, { detach = true })
                else
                    api.node.open.edit()
                end
            end, opts 'Open (or open PDF in zathura)')
        end,
    },
}
