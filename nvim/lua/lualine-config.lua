require('lualine').setup({
    options = {
        icons_enabled = false,
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' }
    },
    sections = {
        lualine_c = { { 'filename', path = 3 } }
    },
    tabline = {
        lualine_a = { { 'buffers', max_length = vim.o.columns, use_mode_colors = true } },
    }
})
