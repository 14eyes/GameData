dispatch_funcs = {}

function dispatch_funcs.on_level_destroy(...)
    for i, v in ipairs({...}) do
        print(i, v)
    end

    print("on_level_destroy in lua")
    level.destroy()
end

function dispatch_funcs.dispatch_func(arg1, ...)
    local func = dispatch_funcs[arg1]
    if func ~= nil then
        return func(...)
    else
        print("get func failed " .. arg1)
    end

    return nil
end

return dispatch_funcs
