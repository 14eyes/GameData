local Reload = {}
local tbl = {}
local v = table
local v2 = debug

local function list(arg1)
    if Reload.postfix then
        arg1 = arg1 .. Reload.postfix
    end

    local tbl = {}
    for i, searcher in ipairs(package.searchers) do
        local v2, v3 = searcher(arg1)
        local valueType = type(v2)
        if valueType == "function" then
            return v2, v3
        elseif valueType == "string" then
            v.insert(tbl, v2)
        end
    end

    print(string.format("module '%s' not found:%s", arg1, v.concat(tbl)))
end

local func = {}
func.__newindex = print
func.__pairs = print
func.__metatable = "SANDBOX"
local tbl2 = {}
local tbl3 = {}
local tbl4 = {}
tbl4.__mode = "kv"
local obj
local obj2
local tbl5 = {}
tbl5.__metatable = "MODULE"
tbl5.__newindex = print
tbl5.__pairs = print

function tbl5.__tostring(arg1)
    return obj2[arg1]
end

local function func2(arg1)
    local str = "[" .. arg1 .. "]"
    if obj2[str] then
        return obj2[str]
    else
        local tbl = {}
        obj2[str] = tbl
        obj2[tbl] = str
        return setmetatable(tbl, tbl5)
    end
end

function tbl5.__index(arg1, arg2)
    assert(type(arg2) == "string", "module field is not string")
    local str = obj2[arg1] .. "." .. arg2
    if obj2[str] then
        return obj2[str]
    else
        local tbl = {}
        obj2[str] = tbl
        obj2[tbl] = str
        return setmetatable(tbl, tbl5)
    end
end

local function func3()
    return setmetatable({}, func)
end

function tbl.require(arg1)
    assert(type(arg1) == "string")
    if tbl2[arg1] then
        return tbl2[arg1]
    end

    local loader, v = list(arg1)
    local getupvalue, v3 = v2.getupvalue(loader, 1)
    if getupvalue == "_ENV" then
        v2.setupvalue(loader, 1, func3())
    end

    local module = loader(arg1, v)
    if not module then
        module = true
    end

    tbl3[arg1] = {module = module}
    if getupvalue == "_ENV" then
        v2.setupvalue(loader, 1, nil)
        tbl3[arg1].loader = loader
    end

    tbl2[arg1] = func2(arg1)
    return tbl2[arg1]
end

local tbl6 = {}
tbl6.__metatable = "GLOBAL"

function tbl6.__tostring(arg1)
    return obj[arg1]
end

tbl6.__newindex = print
tbl6.__pairs = print

local function func4(arg1)
    if obj[arg1] then
        return obj[arg1]
    else
        local tbl = {}
        obj[tbl] = arg1
        obj[arg1] = tbl
        return setmetatable(tbl, tbl6)
    end
end

function tbl6.__index(arg1, arg2)
    local v = obj[arg1]
    assert(type(arg2) == "string", "Global name must be a string")
    return func4(v .. "." .. arg2)
end

local inext = ipairs({})
local tbl7 = {}
tbl7.require = tbl.require
tbl7.pairs = pairs
tbl7.next = next
tbl7.ipairs = ipairs
tbl7._inext = inext
tbl7.print = print

function func.__index(arg1, arg2)
    assert(type(arg2) == "string", "Global name must be a string")
    if tbl7[arg2] then
        return tbl7[arg2]
    else
        return func4(arg2)
    end
end

local function func5(arg1)
    local v = obj[arg1]
    local v2 = _G
    for i in string.gmatch(v, "[_%a]%w*") do
        if v2 == nil then
            print("Invalid global", v)
        end

        v2 = v2[i]
    end

    return v2
end

local function func6(arg1)
    local v = obj2[arg1]
    local LOADED = v2.getregistry()._LOADED
    local pos, v3, v4 = string.find(v, "^%[([_%w]+)%]")
    if pos == nil then
        print("Invalid module " .. v)
    end

    local assert2 = assert(LOADED[v4])
    for i in string.gmatch(v:sub(v3 + 1), "[_%a]%w*") do
        if assert2 == nil then
            print("Invalid module key", v)
        end

        assert2 = assert2[i]
    end

    return assert2
end

function tbl.value(arg1)
    local mt = getmetatable(arg1)
    if mt == "GLOBAL" then
        return func5(arg1)
    elseif mt == "MODULE" then
        return func6(arg1)
    else
        print("Invalid object", arg1)
    end
end

function tbl.init(arg1)
    obj = setmetatable({}, tbl4)
    obj2 = setmetatable({}, tbl4)
    for k, v in pairs(tbl2) do
        tbl2[k] = nil
    end

    for k, v in pairs(tbl3) do
        tbl3[k] = nil
    end

    if arg1 then
        for i, v in ipairs(arg1) do
            tbl2[v] = func2(v)
        end
    end
end

function tbl.isdummy(arg1)
    if tbl7[arg1] then
        return true
    end

    return getmetatable(arg1) ~= nil
end

function tbl.module(arg1)
    return tbl3[arg1]
end

function tbl.clear()
    obj = nil
    obj2 = nil
    for k, v in pairs(tbl3) do
        tbl3[k] = nil
    end
end

function list()
    local tbl = {}
    for k in pairs(v2.getregistry()._LOADED) do
        v.insert(tbl, k)
    end

    return tbl
end

Reload.list = list
list = {}
list.number = true
list.string = true
list.boolean = true

function func(arg1)
    local func = Reload.print
    local tbl2 = {}
    local tbl3 = {}
    local tbl4 = {}
    local func2
    function func2(arg1)
        if tbl.isdummy(arg1) then
            if func then
                func("ENUM", arg1, v.concat(tbl3, "."))
            end

            v.insert(tbl2, {arg1, v.unpack(tbl3)})
            return
        end

        local valueType = type(arg1)
        if valueType == "function" or valueType == "table" then
            if func then
                func("ENUM", arg1, v.concat(tbl3, "."))
            end

            v.insert(tbl2, {arg1, v.unpack(tbl3)})
            if tbl4[arg1] then
                return
            end

            tbl4[arg1] = true
        else
            return
        end

        local n = #tbl3 + 1
        if valueType == "function" then
            local n2 = 1
            while true do
                local getupvalue, v3 = v2.getupvalue(arg1, n2)
                if getupvalue == nil or getupvalue == "" then
                    break
                end

                if not getupvalue:find("^[_%w]") then
                    func("Invalid upvalue : " .. v.concat(tbl3, "."))
                end

                local valueType2 = type(v3)
                if valueType2 == "function" or valueType2 == "table" then
                    tbl3[n] = getupvalue
                    tbl3[n + 1] = n2
                    func2(v3)
                    tbl3[n] = nil
                    tbl3[n + 1] = nil
                end

                n2 = n2 + 1
            end
        else
            for k, value in pairs(arg1) do
                if not list[type(k)] then
                    func("Invalid key : " .. k .. " " .. v.concat(tbl3, "."))
                end

                tbl3[n] = k
                func2(value)
                tbl3[n] = nil
            end
        end
    end

    func2(arg1)
    return tbl2
end

function tbl2(arg1, arg2, arg3, ...)
    if arg1 == nil or arg2 == nil then
        return arg1
    end

    local valueType = type(arg1)
    if valueType == "table" then
        return tbl2(arg1[arg2], arg3, ...)
    else
        assert(valueType == "function")
        local n = 1
        while true do
            local getupvalue, v = v2.getupvalue(arg1, n)
            if getupvalue == nil or arg2 == "" then
                return
            end

            if getupvalue == arg2 then
                return tbl2(v, ...)
            end

            n = n + 1
        end
    end
end

function tbl3(arg1, arg2, arg3, arg4)
    local func = Reload.print
    for i, value in ipairs(arg1) do
        local v2 = value[1]
        if tbl.isdummy(v2) then
            v.insert(arg4, value)
        else
            local ok, v3 = pcall(tbl2, arg2, v.unpack(value, 2))
            if not ok then
                local tbl3 = {v.unpack(value, 2)}
                func("type mismatch : " .. v.concat(tbl3, ","))
            end

            if v3 == nil then
                local flag = arg3[v2]
                if not flag then
                    flag = false
                end

                arg3[v2] = flag
            else
                if type(v3) ~= type(v2) then
                    local tbl3 = {v.unpack(value, 2)}
                    func("Not a table : " .. v.concat(tbl3, ","))
                end
            end

            if arg3[v2] then
                if arg3[v2] ~= v3 then
                    local tbl3 = {v.unpack(value, 2)}
                    func("Ambiguity table : " .. v.concat(tbl3, ","))
                end
            end

            arg3[v2] = v3
            if func then
                func("MATCH", v3, v.unpack(value, 2))
            end
        end
    end
end

function tbl4(arg1, arg2)
    if not arg1 then
        return
    end

    local n = 1
    while true do
        local getupvalue, v = v2.getupvalue(arg1, n)
        if getupvalue == nil or arg2 == "" then
            return
        end

        if getupvalue == arg2 then
            return n
        end

        n = n + 1
    end
end

function obj(arg1, arg2)
    for k, v in pairs(arg1) do
        if type(k) == "function" then
            local n = 1
            while true do
                local getupvalue, v3 = v2.getupvalue(k, n)
                if getupvalue == nil or getupvalue == "" then
                    break
                end

                local index = tbl4(v, getupvalue)
                local upvalueid = v2.upvalueid(k, n)
                if not arg2[upvalueid] and index then
                    arg2[upvalueid] = {func = v, index = index, oldid = v2.upvalueid(v, index)}
                elseif index then
                    if v2.upvalueid(v, index) ~= arg2[upvalueid].oldid then
                        print(string.format("Ambiguity upvalue : %s .%s", tostring(k), getupvalue))
                    end
                end

                n = n + 1
            end
        end
    end
end

function obj2(arg1)
    local LOADED = v2.getregistry()._LOADED
    local v = {}
    for i, value in ipairs(arg1) do
        tbl.require(value)
        local module = tbl.module(value)
        local objects = func(module.module)
        local old_module = LOADED[value]
        local tbl2 = {globals = {}, map = {}, upvalues = {}, old_module = old_module, module = module, objects = objects}
        v[value] = tbl2
        tbl3(objects, old_module, tbl2.map, tbl2.globals)
        obj(tbl2.map, tbl2.upvalues)
    end

    return v
end

function tbl5(arg1, arg2, arg3, arg4, arg5, ...)
    if arg2 == nil then
        return false
    end

    if type(arg2) == "table" then
        if not arg4 then
            arg2[arg3] = arg1
            return true
        end

        return tbl5(arg1, arg2[arg3], arg4, arg5, ...)
    else
        local n = 1
        while true do
            local getupvalue, v = v2.getupvalue(arg2, n)
            if getupvalue == nil or arg3 == "" then
                return false
            end

            if getupvalue == arg3 then
                if not arg5 then
                    v2.setupvalue(arg2, n, arg1)
                    return true
                end

                return tbl5(arg1, v, arg5, ...)
            end

            n = n + 1
        end
    end
end

function func2(arg1, arg2)
    local func = Reload.print
    for k in pairs(arg2) do
        if type(k) == "function" then
            local n = 1
            while true do
                local getupvalue, v = v2.getupvalue(k, n)
                if getupvalue == nil or getupvalue == "" then
                    break
                end

                local v3 = arg1[v2.upvalueid(k, n)]
                if v3 then
                    if func then
                        func("JOIN", k, getupvalue)
                    end

                    v2.upvaluejoin(k, n, v3.func, v3.index)
                end

                n = n + 1
            end
        end
    end
end

function func3(arg1)
    local LOADED = v2.getregistry()._LOADED
    local func = Reload.print
    for k, value in pairs(arg1) do
        if value.old_module then
            local map = value.map
            func2(value.upvalues, map)
            for key, v3 in pairs(map) do
                if type(key) == "table" and v3 then
                    if func then
                        func("COPY", v3)
                    end

                    for k2, v4 in pairs(key) do
                        if type(v4) == "table" then
                            if getmetatable(v4) == nil then
                                if v3[k2] ~= nil then
                                    goto lbl_52
                                end
                            end
                        end

                        v3[k2] = v4
                        ::lbl_52::
                    end
                end
            end

            for i, object in ipairs(value.objects) do
                local v4 = object[1]
                if not tbl.isdummy(v4) then
                    if not map[v4] then
                        local v5 = tbl5(v4, value.old_module, v.unpack(object, 2))
                        if func then
                            func("MOVE", k, v.concat(object, ".", 2), v5)
                        end
                    end
                end
            end
        else
            LOADED[k] = value.module.module
        end
    end
end

function tbl6(arg1)
    local LOADED = v2.getregistry()._LOADED
    local func = Reload.print
    local n = 0
    for k, value in pairs(arg1) do
        for key, global in pairs(value.globals) do
            local v3 = global[1]
            local str = tostring(v3)
            local v4
            local flag
            local flag2
            if getmetatable(v3) == "GLOBAL" then
                local v5 = _G
                for i in string.gmatch(str, "[_%a]%w*") do
                    if v5 == nil then
                        flag2 = true
                        break
                    end

                    v5 = v5[i]
                end

                v4 = v5
            else
                local pos, v5, v6 = string.find(str, "^%[([_%w]+)%]")
                if pos == nil then
                    break
                end

                local v7 = LOADED[v6]
                if v7 == nil then
                    break
                end

                for i in string.gmatch(str:sub(v5 + 1), "[_%a]%w*") do
                    if v7 == nil then
                        flag2 = true
                        break
                    end

                    v7 = v7[i]
                end

                if getmetatable(v7) == "MODULE" then
                else
                    flag = true
                    v4 = v7
                end
            end

            if flag2 then
                if func then
                    func("GLOBAL INVALID", str)
                end

                value.globals[key] = nil
            elseif not flag then
                n = n + 1
                if func then
                    func("GLOBAL", str, v4)
                end

                tbl5(v4, LOADED[k], v.unpack(global, 2))
                value.globals[key] = nil
            end
        end
    end

    return n
end

function func4(arg1)
    local getregistry = v2.getregistry()
    local running = coroutine.running()
    local tbl = {}
    tbl[arg1] = true
    tbl[running] = true
    local func = v2.getmetatable
    local getinfo = v2.getinfo
    local getlocal = v2.getlocal
    local setlocal = v2.setlocal
    local getupvalue = v2.getupvalue
    local setupvalue = v2.setupvalue
    local getuservalue = v2.getuservalue
    local setuservalue = v2.setuservalue
    local v = type
    local v3 = next
    local func2 = rawset
    tbl[tbl] = true
    local func3
    local func5
    function func5(arg1_2, arg2)
        local v = getinfo(arg1_2, arg2 + 1, "f")
        if v == nil then
            return
        end

        func3(v.func)
        local n = 1
        while true do
            local v2, v3 = getlocal(arg1_2, arg2 + 1, n)
            if v2 == nil then
                if 0 < n then
                    n = -1
                else
                    break
                end
            end

            local v4 = arg1[v3]
            if v4 then
                setlocal(arg1_2, arg2 + 1, n, v4)
                func3(v4)
            else
                func3(v3)
            end

            if 0 < n then
                n = n + 1
            else
                n = n - 1
            end
        end

        return func5(arg1_2, arg2 + 1)
    end

    function func3(arg1_2)
        if tbl[arg1_2] then
            return
        end

        local v2 = v(arg1_2)
        if v2 == "table" then
            tbl[arg1_2] = true
            local v4 = func(arg1_2)
            if v4 then
                func3(v4)
            end

            local tbl2
            for k, value in v3, arg1_2, nil do
                local v5 = arg1[value]
                if v5 then
                    func2(arg1_2, k, v5)
                    func3(v5)
                else
                    func3(value)
                end

                local v6 = arg1[k]
                if v6 then
                    if tbl2 == nil then
                        tbl2 = {}
                    end

                    tbl2[k] = v6
                else
                    func3(k)
                end
            end

            if tbl2 then
                for k, value in v3, tbl2, nil do
                    local v6
                    arg1_2[value] = arg1_2[k]
                    arg1_2[k] = v6
                    func3(value)
                end
            end
        elseif v2 == "userdata" then
            tbl[arg1_2] = true
            local v6 = func(arg1_2)
            if v6 then
                func3(v6)
            end

            local v7 = getuservalue(arg1_2)
            if v7 then
                local v8 = arg1[v7]
                if v8 then
                    setuservalue(arg1_2, v8)
                    func3(v8)
                else
                    func3(v7)
                end
            end
        elseif v2 == "thread" then
            tbl[arg1_2] = true
            func5(arg1_2, 2)
        elseif v2 == "function" then
            tbl[arg1_2] = true
            local n = 1
            while true do
                local v8, v9 = getupvalue(arg1_2, n)
                if v8 == nil then
                    break
                end

                local v10 = arg1[v9]
                if v10 then
                    setupvalue(arg1_2, n, v10)
                    func3(v10)
                else
                    func3(v9)
                end

                n = n + 1
            end
        end
    end

    for k, value in pairs({nil, 0, true, "", running, func4, v2.upvalueid(func4, 1)}) do
        local v4 = func(value)
        if v4 then
            func3(v4)
        end
    end

    func5(running, 2)
    func3(getregistry)
end

function Reload:reload()
    local func = Reload.print
    local LOADED = v2.getregistry()._LOADED
    local tbl2 = {}
    for i, value in ipairs(self) do
        tbl2[value] = true
    end

    local tbl3 = {}
    for k in pairs(LOADED) do
        if not tbl2[k] then
            v.insert(tbl3, k)
        end
    end

    tbl.init(tbl3)
    local ok, v3 = xpcall(obj2, v2.traceback, self)
    if not ok then
        tbl.clear()
        if func then
            func("print", v3)
        end

        return ok, v3
    end

    func3(v3)
    for k, value in pairs(v3) do
        if value.module.loader then
            v2.setupvalue(value.module.loader, 1, _ENV)
        end
    end

    local v4
    repeat
        v4 = tbl6(v3)
    until v4 == 0

    local tbl4 = {}
    for k, value in pairs(v3) do
        for key, v5 in pairs(value.map) do
            if type(key) == "function" then
                tbl4[v5] = key
            end
        end
    end

    tbl.clear()
    func4(tbl4)
    return true
end

return Reload
