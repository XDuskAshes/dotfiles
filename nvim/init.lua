-- Personal NeoVim configurations by XDuskAshes
-- <https://github.com/XDuskAshes/nvim-config/>
-- MIT License

require("xduskashes.main") -- "Main" or "Core" of my configs
require("xduskashes.lazy") -- Lazy.nvim

-- Set leader keys
vim.g.mapleader = " " -- <Leader>
vim.g.maplocalleader = "\\" -- <LocalLeader>

-- Plugin setup
--
-- nvim-tree
-- <https://github.com/nvim-tree/nvim-tree.lua>
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup()

-- lualine
-- <https://github.com/nvim-lualine/lualine.nvim>
require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '\\', right = '/' },
        section_separators = { left = '|', right = '|' },
        disabled_filetypes = {
            statusline = {},
            winbar = {}
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
            statusline = 100,
            tabline = 100,
            winbar = 100
        }
    },
    
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'filename'},
        lualine_c = {'location'},
        lualine_x = {'fileformat','filetype'},
        lualine_z = {''}
    }
}

-- gruvbox
-- <https://github.com/ellisonleao/gruvbox.nvim>
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- When everything loads
print("Configs hopefully loaded smoothly.")
