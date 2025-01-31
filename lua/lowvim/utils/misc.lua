local M = {}
M.prettier_mssg = function(message, max_char)
    local mssg = message or 'Sample'
    local max_char = max_char or 18

    local prefix_padding = (max_char / 2) - (math.floor(#mssg / 2))
    local suffix_padding = (max_char / 2) - (#mssg - math.floor(#mssg / 2))
    local rep = function(c, n)
        local str = ''
        for i = 1, n do
            str = str .. c
        end
        return str
    end

    local res = string.format(
        '--%s %s %s--',
        rep(' ', prefix_padding),
        mssg,
        rep(' ', suffix_padding)
    )
    local mssg_res =
        string.format('%s\n%s\n%s\n', rep('-', #res), res, rep('-', #res))
    print(mssg_res)
    -- for linux
    os.execute('echo "' .. mssg_res .. '" | xclip -selection clipboard')
end
return M
