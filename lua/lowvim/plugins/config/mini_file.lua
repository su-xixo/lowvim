local plugin_options = {
    mappings = {
        close = 'q',
        go_in = 'l',
        -- Default 'L'
        go_in_plus = '<CR>',
        -- swaped following 2 go_outa and go_out_plus
        -- go_out_plus: when you go out, it shows you only 1 item to the right
        -- go_out: shows you all the items to the right
        go_out = 'H',
        go_out_plus = 'h',
        mark_goto = "'",
        mark_set = 'm',
        reset = '<BS>',
        reveal_cwd = '@',
        show_help = 'g?',
        -- Default '='
        synchronize = 's',
        trim_left = '<',
        trim_right = '>',
    },
    options = {
        permanent_delete = true,
        use_as_default_explorer = true,
    },
    windows = {
        preview = true,
        -- Width of focused window
        width_focus = 50,
        -- Width of non-focused window
        width_nofocus = 15,
        -- Width of preview window
        width_preview = 70,
    },
}
require('mini.files').setup(plugin_options)
