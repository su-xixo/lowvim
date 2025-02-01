local plugin_options = {
    delete_to_trash = true,
    float = {
        preview_split = 'right',
    },
    keymaps = {
        ['?'] = { 'actions.show_help', mode = 'n' },
        ['.'] = { 'actions.toggle_hidden', mode = 'n' },
        ['q'] = 'actions.close',
    },
}
require('oil').setup(plugin_options)
