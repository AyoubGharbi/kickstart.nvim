require('telescope').setup {
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case'
        },
        file_sorter       = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix     = '> ',
        color_devicons    = true,

        file_previewer    = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer    = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer  = require('telescope.previewers').vim_buffer_qflist.new,

        extensions        = {
            fzy_native = {
                override_generic_sorter = false,
                override_file_sorter = true,
            },
        },
        mappings          = {
            i = {
                ['<C-u>'] = false,
                ['<C-d>'] = false,
            },
        },
    },
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')