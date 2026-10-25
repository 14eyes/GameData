local func = unpack

if not func then
    func = table.unpack
end

local function async_to_sync(callback, arg2)
    return function(...)
        local running = coroutine.running()
        if not running then
            running = error("this function must be run in coroutine")
        end

        local tbl
        local flag = false
        local function v(...)
            if flag then
                assert(coroutine.resume(running, ...))
            else
                tbl = {...}
            end
        end

        local tbl2 = {...}
        local insert = table.insert
        local v2 = tbl2
        local n = arg2
        if not n then
            n = #tbl2 + 1
        end

        insert(v2, n, v)
        callback(func(tbl2))
        if tbl == nil then
            flag = true
            tbl = {coroutine.yield()}
        end

        return func(tbl)
    end
end

local function coroutine_call(arg1)
    return function(...)
        local create = coroutine.create(arg1)
        assert(coroutine.resume(create, ...))
    end
end

local current = {}
local tbl = {}

tbl.__index = {
    MoveNext = function(arg1)
        arg1.Current = arg1.co()
        if arg1.Current == current then
            arg1.Current = nil
            return false
        else
            return true
        end
    end,
    Reset = function(arg1)
        arg1.co = coroutine.wrap(arg1.w_func)
    end
}

return {
    async_to_sync = async_to_sync,
    coroutine_call = coroutine_call,
    cs_generator = function(callback, ...)
        local v = {}
        local v2, v3, v4 = ...
        v[1] = v2
        v[2] = v3
        v[3] = v4
        local obj = setmetatable({
            w_func = function()
                callback(func(v))
                return current
            end
        }, tbl)

        obj:Reset()
        return obj
    end,
    loadpackage = function(...)
        for i, searcher in ipairs(package.searchers) do
            local v = searcher(...)
            if type(v) == "function" then
                return v
            end
        end
    end,
    hotfix_ex = function(arg1, arg2, callback)
        local v = assert
        v(type(arg2) == "string", "invalid argument: #2 string needed, #3 function needed!")
        function v(...)
            xlua.hotfix(arg1, arg2, nil)
            local tbl = {callback(...)}
            xlua.hotfix(arg1, arg2, v)
            return func(tbl)
        end

        xlua.hotfix(arg1, arg2, v)
    end,
    bind = function(callback, arg2)
        return function(...)
            return callback(arg2, ...)
        end
    end,
    deepcopy = function(arg1, arg2)
        local tbl = {}
        local v
        local valueType = type(arg2)
        if valueType == "table" then
            v = arg2
        end

        function valueType(arg1, arg2)
            if type(arg1) ~= "table" then
                return arg1
            else
                if tbl[arg1] then
                    return tbl[arg1]
                end
            end

            local v
            if arg2 ~= nil then
                v = arg2
            else
                v = {}
            end

            tbl[arg1] = v
            for k, value in pairs(arg1) do
                v[valueType(k)] = valueType(value)
            end

            return setmetatable(v, getmetatable(arg1))
        end

        return valueType(arg1, v)
    end,
    do_require = function(arg1)
        if package.loaded[arg1] ~= nil then
            package.loaded[arg1] = nil
        end

        require(arg1)
    end,
    unrequire = function(arg1)
        package.loaded[arg1] = nil
        _G[arg1] = nil
        actorUtils.UnrequireLua(arg1)
    end,
    state = function(arg1, arg2)
        local mt = getmetatable(arg1)
        for k, v in pairs(mt) do
            rawset(arg2, k, v)
        end

        local index = arg2.__index
        local newindex = arg2.__newindex
        function arg2.__index(arg1, arg2_2)
            local v = rawget(arg2, arg2_2)
            if not v then
                v = index(arg1, arg2_2)
            end

            return v
        end

        function arg2.__newindex(arg1, arg2_2, arg3)
            if rawget(arg2, arg2_2) ~= nil then
                rawset(arg2, arg2_2, arg3)
            else
                newindex(arg1, arg2_2, arg3)
            end
        end

        debug.setmetatable(arg1, arg2)
        return arg2
    end,
    print_func_ref_by_csharp = function()
        local getregistry = debug.getregistry()
        for k, v in pairs(getregistry) do
            if type(k) == "number" then
                if type(v) == "function" then
                    if getregistry[v] == k then
                        local getinfo = debug.getinfo(v)
                        print(string.format("%s:%d", getinfo.short_src, getinfo.linedefined))
                    end
                end
            end
        end
    end,
    debug_log = function(arg1)
        if NG_HSOD_DEBUG then
            print(arg1)
        end
    end,
    unity_debug_log = function(arg1)
        CS.UnityEngine.Debug.Log(arg1)
    end,
    begin_sample = function(arg1)
        if NG_HSOD_STAT then
            CS.UnityEngine.Profiling.Profiler.BeginSample(arg1)
        end
    end,
    end_sample = function()
        if NG_HSOD_STAT then
            CS.UnityEngine.Profiling.Profiler.EndSample()
        end
    end
}
