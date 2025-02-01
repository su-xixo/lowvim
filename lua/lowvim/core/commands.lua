vim.api.nvim_create_user_command('PrettierMssg', function(opts)
    local args =
        vim.split(opts.args, '%s+', { plain = false, trimempty = true })
    local mssg = table.concat(args, ' ', 1, #args - 1)
    local length = tonumber(args[#args]) or 30

    if not length or length <= 0 then
        print('Error: Length must be a positive number.')
        return
    end
    -- print(mssg, length)
    require('lowvim.utils.misc').prettier_mssg(mssg, length)
end, {
    nargs = 1,
    desc = 'Format a message with a specified length. Usage: :PrettierMssg <message> <length>',
})
