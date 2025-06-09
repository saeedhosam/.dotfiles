-- this plugin has a customized statusline and bufferline from nvchad, if you want to enable it, you need to disable the respective 2 plugins, statusline and bufferline
return {
    'nvchad/ui',
    lazy = false,
    config = function()
        require 'nvchad'
    end,
}
