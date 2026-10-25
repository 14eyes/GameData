return function(arg1)
    local str = "__BOOTSTRAP"
    local v = "stack traceback:"
    local str2 = "^%?:%-1: (.+)$"
    local str3 = "^.-" .. str .. ".-:%d+: (.+)$"
    local bUDGET_SENTINEL = arg1.BUDGET_SENTINEL
    local test = arg1.TEST
    local version = arg1.VERSION
    local luaInstances = arg1.LuaInstances
    local luaSignalMap = arg1.LuaSignalMap
    local base = arg1.SysLibs.base
    local game = arg1.SysLibs.game
    local enum = arg1.SysLibs.Enum
    local lUA_ENABLE_BUDGET_LIMIT = arg1.LUA_ENABLE_BUDGET_LIMIT
    local lUA_BUDGET_PER_CHECK_COUNT = arg1.LUA_BUDGET_PER_CHECK_COUNT
    local lUA_BUDGET_LIMIT_COUNT = arg1.LUA_BUDGET_LIMIT_COUNT
    local lUA_BUDGET_LIMIT_ERROR_MSG = arg1.LUA_BUDGET_LIMIT_ERROR_MSG
    local lUA_REPLACE_STRING_REP = arg1.LUA_REPLACE_STRING_REP
    local lUA_REPLACE_STRING_FORMAT = arg1.LUA_REPLACE_STRING_FORMAT
    local lUA_REPLACE_TABLE_CONCAT = arg1.LUA_REPLACE_TABLE_CONCAT
    local lUA_REPLACE_TABLE_MOVE = arg1.LUA_REPLACE_TABLE_MOVE
    local lUA_STRING_REP_MAX_LENGTH = arg1.LUA_STRING_REP_MAX_LENGTH
    local lUA_STRING_REP_MAX_LENGTH_ERROR_MSG = arg1.LUA_STRING_REP_MAX_LENGTH_ERROR_MSG
    local lUA_STRING_FORMAT_MAX_FORMAT_LENGTH = arg1.LUA_STRING_FORMAT_MAX_FORMAT_LENGTH
    local lUA_STRING_FORMAT_MAX_FORMAT_LENGTH_ERROR_MSG = arg1.LUA_STRING_FORMAT_MAX_FORMAT_LENGTH_ERROR_MSG
    local lUA_TABLE_CONCAT_MAX_STRING_LENGTH = arg1.LUA_TABLE_CONCAT_MAX_STRING_LENGTH
    local lUA_TABLE_CONCAT_MAX_STRING_LENGTH_ERROR_MSG = arg1.LUA_TABLE_CONCAT_MAX_STRING_LENGTH_ERROR_MSG
    local lUA_TABLE_MOVE_MAX_COUNT = arg1.LUA_TABLE_MOVE_MAX_COUNT
    local lUA_TABLE_MOVE_MAX_COUNT_ERROR_MSG = arg1.LUA_TABLE_MOVE_MAX_COUNT_ERROR_MSG
    local lUA_BAD_ARGUMENT_ERROR_FORMAT = arg1.LUA_BAD_ARGUMENT_ERROR_FORMAT
    local lUA_BAD_ARGUMENT_ERROR_FORMAT_WITH_GOT_TYPE = arg1.LUA_BAD_ARGUMENT_ERROR_FORMAT_WITH_GOT_TYPE
    local lUA_CANNOT_CHANGE_PROTECT_TABLE_ERROR_FORMAT = arg1.LUA_CANNOT_CHANGE_PROTECT_TABLE_ERROR_FORMAT
    local lUA_META_METHOD_NOT_SUPPORTED_ERROR_FORMAT = arg1.LUA_META_METHOD_NOT_SUPPORTED_ERROR_FORMAT
    local lUA_ATTEMPT_MODIFY_RESERVED_KEY = arg1.LUA_ATTEMPT_MODIFY_RESERVED_KEY
    local lUA_ATTEMPT_MODIFY_READ_ONLY_TABLE = arg1.LUA_ATTEMPT_MODIFY_READ_ONLY_TABLE
    local str4 = "object length is not an integer"
    local n = 65536
    local str5 = "too many elements to concat"
    local str6 = "'__tostring' must return a string"
    local str7 = "cannot call '%s' before OnInit"
    local str8 = "cannot set '%s' before OnInit"
    local lUA_NESTING_LIMIT_EXCEEDED_ERROR = arg1.LUA_NESTING_LIMIT_EXCEEDED_ERROR
    local str9 = "cannot call '%s' on destroyed script"
    local tbl = {}
    local tbl2 = {}
    local tbl3 = {}
    local tbl4 = {}
    local tbl5 = {}
    local tbl6 = {}
    local tbl7 = {}
    local tbl8 = {}
    local tbl9 = {}
    local tbl10 = {}
    local tbl11 = {}
    tbl.tostring = tostring
    tbl.error = arg1.error
    tbl.pcall = arg1.pcall
    tbl.xpcall = arg1.xpcall
    tbl.rawget = arg1.rawget
    tbl.rawset = arg1.rawset
    tbl.setmetatable = arg1.setmetatable
    tbl.getmetatable = arg1.getmetatable
    tbl.require = base.Require
    tbl.exception = base.SendExceptionToUser
    tbl.log = base.logPrint
    tbl.logwarn = base.logWarn
    tbl.logerr = base.logError
    tbl6.enabletick = base.EnableScriptTick
    tbl6.handlers = base.UpdateCustomValueHandlers
    tbl6.enablescript = base.EnableScript
    tbl3.rep = string.rep
    tbl3.format = string.format
    tbl4.concat = table.concat
    tbl4.move = table.move
    tbl5.getinfo = arg1.debug.getinfo
    tbl5.sethook = arg1.debug.sethook
    tbl5.traceback = arg1.debug.traceback
    tbl2.time = arg1.os_time
    tbl2.date = arg1.os_date
    tbl2.clock = arg1.os_clock
    tbl2.difftime = arg1.os_difftime
    local obj = tbl.setmetatable({}, {__mode = "k"})
    local obj2 = tbl.setmetatable({}, {__mode = "k"})
    local obj3 = tbl.setmetatable({}, {__mode = "k"})
    local func
    local func2
    local func3
    local tbl12 = {}
    local function pairs2(arg1)
        return function()
            return nil
        end
    end

    local function tostring2(arg1)
        return "table"
    end

    local function newindex(arg1, arg2, arg3)
        tbl.error(lUA_ATTEMPT_MODIFY_READ_ONLY_TABLE, 0)
    end

    local function func4(arg1)
        if type(arg1) == "table" then
            obj[arg1] = true
        end

        return arg1
    end

    local function func5(arg1)
        return type(arg1) == "table"
    end

    local function func6(index)
        func4(index)
        return func4(tbl.setmetatable({}, {
            __index = index,
            __newindex = newindex,
            __pairs = pairs2,
            __ipairs = pairs2,
            __metatable = false,
            __tostring = tostring2
        }))
    end

    local function func7(arg1)
        if not arg1 then
            return true
        end

        if arg1.what == "C" then
            return true
        end

        if arg1.short_src == "?" then
            return true
        end

        return string.find(arg1.short_src, str, 1, true) ~= nil
    end

    local function func8(arg1)
        if not arg1 then
            return nil
        end

        local str
        if func7(arg1) then
        else
            if arg1.name then
                local format = tbl3.format
                local v = "%s:%s: in function '%s'"
                local str2 = tostring(arg1.short_src)
                local func = tostring
                local currentline = arg1.currentline
                local currentline2
                if -2 < currentline then
                    currentline2 = arg1.currentline
                    if currentline2 then
                        goto lbl_28
                    end
                end

                currentline2 = "?"
                ::lbl_28::
                str = format(v, str2, func(currentline2), tostring(arg1.name))
            else
                if arg1.what == "main" then
                    str = tbl3.format("%s: in main chunk", tostring(arg1.short_src))
                else
                    if arg1.func then
                        if obj2[arg1.func] then
                            local format = tbl3.format
                            local v = "%s:%s: in function '%s'"
                            local str2 = tostring(arg1.short_src)
                            local func = tostring
                            local currentline = arg1.currentline
                            local currentline2
                            if -2 < currentline then
                                currentline2 = arg1.currentline
                                if currentline2 then
                                    goto lbl_66
                                end
                            end

                            currentline2 = "?"
                            ::lbl_66::
                            str = format(v, str2, func(currentline2), tostring(obj2[arg1.func]))
                        end
                    else
                        local format = tbl3.format
                        local v = "%s: %s: in function <%s:%s>"
                        local str2 = tostring(arg1.short_src)
                        local func = tostring
                        local currentline = arg1.currentline
                        local currentline2
                        if -2 < currentline then
                            currentline2 = arg1.currentline
                            if currentline2 then
                                goto lbl_87
                            end
                        end

                        currentline2 = "?"
                        ::lbl_87::
                        str = format(v, str2, func(currentline2), tostring(arg1.short_src), tostring(arg1.linedefined))
                    end
                end
            end
        end

        return str
    end

    local function func9()
        local tbl = {v}
        local n = 1
        while true do
            local getinfo = tbl5.getinfo(n, "Slnf")
            if not getinfo then
                break
            end

            local v2 = func8(getinfo)
            if v2 ~= nil then
                tbl[#tbl + 1] = "\t" .. v2
            end

            n = n + 1
            if 200 < n then
                break
            end
        end

        local str = tbl4.concat(tbl, "\n")
        return str
    end

    local function func10(arg1)
        if type(arg1) ~= "number" then
            return false
        end

        return arg1 ~= arg1
    end

    local function func11(arg1)
        if type(arg1) ~= "number" then
            return false
        end

        return math.abs(arg1) == math.huge
    end

    local function func12(arg1, arg2, arg3, arg4)
        if arg4 == nil then
            local str = tbl3.format(lUA_BAD_ARGUMENT_ERROR_FORMAT, tbl7.tostring(arg1), arg2, arg3)
            tbl.error(str, 0)
        else
            local str = tbl3.format(lUA_BAD_ARGUMENT_ERROR_FORMAT_WITH_GOT_TYPE, tbl7.tostring(arg1), arg2, arg3, arg4)
            tbl.error(str, 0)
        end
    end

    local function func13(arg1, arg2, arg3)
        local str = "number"
        local valueType = type(arg1)
        if valueType ~= "number" then
            local v = tbl3.format(lUA_BAD_ARGUMENT_ERROR_FORMAT_WITH_GOT_TYPE, tbl7.tostring(arg2), arg3, str, valueType)
            tbl.error(v, 0)
        elseif arg1 ~= arg1 then
            local v = tbl3.format(lUA_BAD_ARGUMENT_ERROR_FORMAT_WITH_GOT_TYPE, tbl7.tostring(arg2), arg3, str, "NaN")
            tbl.error(v, 0)
        else
            if math.abs(arg1) == math.huge then
                local v = tbl3.format(lUA_BAD_ARGUMENT_ERROR_FORMAT_WITH_GOT_TYPE, tbl7.tostring(arg2), arg3, str, "inf")
                tbl.error(v, 0)
            end
        end
    end

    local function func14(index)
        func4(index)
        local v = {}
        tbl.setmetatable(v, {
            __index = index,
            __newindex = newindex,
            __pairs = pairs2,
            __ipairs = pairs2,
            __tostring = function(arg1)
                return "Enum"
            end,
            __metatable = false
        })

        func4(v)
        obj3[v] = "Enums"
        return v
    end

    local function func15(index, arg2)
        func4(index)
        local v = {}
        tbl.setmetatable(v, {
            __index = index,
            __newindex = newindex,
            __pairs = function(arg1)
                return function(arg1, arg2)
                    return next(index, arg2)
                end, arg1, nil
            end,
            __ipairs = pairs2,
            __tostring = function(arg1)
                return arg2
            end,
            __metatable = false
        })

        func4(v)
        obj3[v] = "Enum"
        return v
    end

    local tbl13 = {}
    for k, value in pairs(enum) do
        if type(value) == "table" then
            tbl13[k] = func15(value, k)
        end
    end

    local enum2 = func14(tbl13)
    function tbl7.require(arg1)
        local valueType = type(arg1)
        if valueType ~= "string" then
            func12(1, "require", "string", valueType)
            return nil
        end

        return tbl.require(arg1)
    end

    function tbl7.errhandler(arg1)
        if arg1 == bUDGET_SENTINEL then
            return arg1
        else
            if type(arg1) ~= "string" then
                return func("unknown error")
            else
                if string.find(arg1, v, 1, true) ~= nil then
                    return arg1
                else
                    arg1 = func2(arg1)
                    return tbl.tostring(arg1) .. "\n" .. func9()
                end
            end
        end
    end

    local function func16(...)
        local n = select("#", ...)
        if n == 0 then
            return ""
        elseif n == 1 then
            local v = select(1, ...)
            return tbl7.tostring(v)
        else
            local tbl = {}
            for i = 1, n do
                local v = select(i, ...)
                table.insert(tbl, tbl7.tostring(v))
            end

            return tbl4.concat(tbl, "\t")
        end
    end

    if test then
        function tbl7.print(...)
            tbl.log(func16(...))
        end

        function tbl7.warn(...)
            tbl.logwarn(func16(...))
        end

        function tbl7.printerr(...)
            tbl.logerr(func16(...))
        end
    else
        function tbl7.print(...) end
        function tbl7.warn(...) end
        function tbl7.printerr(...) end
    end

    function tbl7.error(arg1, arg2)
        if arg2 ~= nil then
            func13(arg2, 2, "error")
        end

        arg1 = tbl7.tostring(arg1)
        local n = 1
        if type(arg2) == "number" then
            arg2 = math.floor(arg2)
            if arg2 < 0 then
                arg2 = n
            elseif arg2 ~= 0 then
                if n > arg2 then
                    arg2 = n
                end
            else
                arg2 = 0
            end
        else
            arg2 = n
        end

        if arg2 == 0 then
            tbl.error(arg1, 0)
            return
        end

        local v = 1
        local n2 = 1
        while true do
            local getinfo = tbl5.getinfo(n2, "Slnf")
            if not getinfo then
                break
            end

            if func7(getinfo) then
            else
                if v == arg2 then
                    local v2 = func8(getinfo)
                    tbl.error(tostring(v2) .. ": " .. arg1, 0)
                    return
                end

                v = v + 1
            end

            n2 = n2 + 1
        end

        tbl.error(arg1, 0)
    end

    function tbl7.assert(arg1, arg2, ...)
        local v
        if not arg1 then
            local error = tbl7.error
            local str = arg2 or v
            if not arg2 then
                str = "assertion failed!"
            end

            error(str, 1)
        end

        local v2 = arg1
        local v3 = arg2
        local v4 = ...
        return v2, v3, v4
    end

    function tbl7.pcall(arg1, ...)
        local pack = table.pack(tbl.pcall(arg1, ...))
        if not pack[1] then
            local v = pack[2]
            if v == bUDGET_SENTINEL then
                tbl.error(v, 0)
            end

            if type(v) ~= "string" then
                return false, "unknown error"
            end

            local func = func2
            local v2 = v
            local v3 = func(v2)
            local flag = false
            local str = v3 or v2
            if not v3 then
                str = "unknown error"
            end

            return flag, str
        end

        return table.unpack(pack, 1, pack.n)
    end

    function tbl7.xpcall(arg1, arg2, ...)
        local func
        if type(arg2) ~= "function" then
            func12(2, "xpcall", "function", type(arg2))
            return false, ""
        else
            function func(arg1)
                if arg1 == bUDGET_SENTINEL then
                    return arg1
                end

                local func = func2
                local v = arg1
                arg1 = func(v)
                local func3 = arg2
                local str = arg1 or v
                if not arg1 then
                    str = "unknown error"
                end

                local v2 = func3(str)
                local ok, v3 = tbl.pcall(tbl7.tostring, v2)
                if not ok then
                    if v3 == bUDGET_SENTINEL then
                        return v3
                    end

                    return "unknown error"
                else
                    return v3
                end
            end
        end

        local pack = table.pack
        local ok, v, v2, v3, v4 = tbl.xpcall(arg1, func, ...)
        local v5 = pack(ok, v, v2, v3, v4)
        if not v5[1] then
            local v6 = v5[2]
            if v6 == bUDGET_SENTINEL then
                local error = tbl.error
                v2 = v6
                error(v2, 0)
            end

            local flag = false
            local str = v6 or v2
            if not v6 then
                str = "unknown error"
            end

            return flag, str
        end

        return table.unpack(v5, 1, v5.n)
    end

    function tbl7.typeof(arg1)
        local valueType = type(arg1)
        local v = valueType == "table"
        local v2 = valueType == "userdata"
        if not v and not v2 then
            return valueType
        end

        if v2 then
            local mt = tbl.getmetatable(arg1)
            if type(mt) == "string" then
                return mt
            else
                return "userdata"
            end
        end

        local v3 = obj3[arg1]
        if v3 ~= nil then
            return v3
        end

        return "table"
    end

    function tbl7.tostring(arg1)
        local valueType = type(arg1)
        if valueType == "string" then
            return arg1
        elseif valueType == "number" then
            if func10(arg1) then
                return "nan"
            else
                if func11(arg1) then
                    if arg1 < 0 then
                        return "-inf"
                    else
                        return "inf"
                    end
                end
            end
        elseif valueType == "function" then
            return "<function>"
        elseif valueType == "table" then
            if not func5(arg1) then
                local mt = tbl.getmetatable(arg1)
                local str
                if mt ~= nil then
                    if type(mt) == "table" then
                        goto lbl_55
                    end
                end

                str = "<table>"
                do
                    return str
                end

                ::lbl_55::
                local v = tbl.rawget(mt, "__tostring")
                if type(v) ~= "function" then
                    return "<table>"
                end

                local ok, v2 = tbl.pcall(v, arg1)
                if not ok then
                    tbl.error(v2, 0)
                    return "<table>"
                end

                local valueType2 = type(v2)
                if valueType2 == "string" then
                    return v2
                elseif valueType2 == "number" then
                    return tbl7.tostring(v2)
                end

                tbl.error(str6, 0)
                return "<table>"
            end
        end

        return tbl.tostring(arg1)
    end

    function tbl8.rep(arg1, arg2, arg3)
        if type(arg1) ~= "string" then
            func12(1, "rep", "string")
        end

        func13(arg2, 2, "rep")
        if arg3 ~= nil then
            if type(arg3) ~= "string" then
                func12(3, "rep", "string")
            end
        end

        if arg2 <= -1 then
            return ""
        end

        arg2 = math.floor(arg2)
        if not arg3 then
            arg3 = ""
        end

        local count = #arg3
        local v = #arg1
        if arg2 > lUA_STRING_REP_MAX_LENGTH and (0 < v or 0 < count) then
            tbl.error(lUA_STRING_REP_MAX_LENGTH_ERROR_MSG, 0)
        end

        if v * arg2 + count * (arg2 - 1) > lUA_STRING_REP_MAX_LENGTH then
            tbl.error(lUA_STRING_REP_MAX_LENGTH_ERROR_MSG, 0)
        end

        return tbl3.rep(arg1, arg2, arg3)
    end

    function tbl8:format(...)
        if type(self) ~= "string" then
            func12(1, "format", "string")
        end

        local str = self:gsub("%%%%", "")
        for k in str:gmatch("%%[%-%+ #0]*(%d+)") do
            if tonumber(k) > lUA_STRING_FORMAT_MAX_FORMAT_LENGTH then
                tbl.error(lUA_STRING_FORMAT_MAX_FORMAT_LENGTH_ERROR_MSG, 0)
            end
        end

        for k in str:gmatch("%%[%-%+ #0]*%d*%.(%d+)") do
            if tonumber(k) > lUA_STRING_FORMAT_MAX_FORMAT_LENGTH then
                tbl.error(lUA_STRING_FORMAT_MAX_FORMAT_LENGTH_ERROR_MSG, 0)
            end
        end

        return tbl3.format(self, ...)
    end

    function tbl9:concat(arg1, arg2, arg3)
        if type(self) ~= "table" then
            func12(1, "concat", "table")
        end

        local count = #self
        if type(count) == "number" and count == count then
            if math.abs(count) ~= math.huge then
                goto lbl_31
            end
        end

        tbl.error(str4, 0)
        ::lbl_31::
        if arg2 ~= nil then
            func13(arg2, 3, "concat")
        end

        if arg3 ~= nil then
            func13(arg3, 4, "concat")
        end

        if arg1 ~= nil then
            local v
            if tbl7.tostring(arg1) then
                goto lbl_53
                arg1 = v or arg1
            end
        end

        arg1 = ""
        ::lbl_53::
        if arg2 == nil or not arg2 then
            arg2 = 1
        end

        if arg3 == nil or not arg3 then
            arg3 = count
        end

        arg2 = math.floor(arg2)
        arg3 = math.floor(arg3)
        if arg2 > arg3 then
            return ""
        end

        if arg2 <= math.maxinteger - n then
            if arg3 > arg2 + n then
                tbl.error(str5, 0)
            end
        end

        local v = #arg1
        local n2 = 0
        for i = arg2, arg3 do
            local v2 = self[i]
            local valueType = type(v2)
            if valueType == "string" then
                n2 = n2 + #v2
            else
                if valueType == "number" then
                    n2 = n2 + 24
                else
                end
            end

            if n2 > lUA_TABLE_CONCAT_MAX_STRING_LENGTH then
                tbl.error(lUA_TABLE_CONCAT_MAX_STRING_LENGTH_ERROR_MSG, 0)
            end
        end

        if n2 + v * (arg3 - arg2) > lUA_TABLE_CONCAT_MAX_STRING_LENGTH then
            tbl.error(lUA_TABLE_CONCAT_MAX_STRING_LENGTH_ERROR_MSG, 0)
        end

        return tbl4.concat(self, arg1, arg2, arg3)
    end

    function tbl9.move(arg1, arg2, arg3, arg4, arg5)
        if type(arg1) ~= "table" then
            func12(1, "move", "table", type(arg1))
        end

        if arg5 ~= nil then
            local v = arg5
            if v ~= arg1 then
                if type(v) ~= "table" then
                    func12(5, "move", "table", type(v))
                end
            end
        end

        if arg2 ~= nil then
            func13(arg2, 2, "move")
        end

        if arg3 ~= nil then
            func13(arg3, 3, "move")
        end

        if arg4 ~= nil then
            func13(arg4, 4, "move")
        end

        local n
        if arg2 ~= nil then
            n = math.floor(arg2)
            if n then
                goto lbl_63
            end
        end

        n = nil
        ::lbl_63::
        local v
        if arg3 ~= nil then
            v = math.floor(arg3)
            if v then
                goto lbl_72
            end
        end

        v = nil
        ::lbl_72::
        local n2
        if arg4 ~= nil then
            n2 = math.floor(arg4)
            if n2 then
                goto lbl_81
            end
        end

        n2 = nil
        ::lbl_81::
        if n ~= nil and v ~= nil and n2 ~= nil and n <= v then
            if n <= math.maxinteger - lUA_TABLE_MOVE_MAX_COUNT then
                if v >= n + lUA_TABLE_MOVE_MAX_COUNT then
                    local flag = false
                    local n3
                    if not (0 < n) then
                        if not (v < math.maxinteger + n) then
                            goto lbl_117
                        end
                    end

                    n3 = v - n + 1
                    flag = n2 > math.maxinteger - n3 + 1
                    ::lbl_117::
                    if not flag then
                        tbl.error(lUA_TABLE_MOVE_MAX_COUNT_ERROR_MSG, 0)
                    end
                end
            end
        end

        return tbl4.move(arg1, arg2, arg3, arg4, arg5)
    end

    function tbl10.isnan(arg1)
        if type(arg1) ~= "number" then
            func12(1, "isnan", "number", type(arg1))
        end

        return func10(arg1)
    end

    function tbl10.isinf(arg1)
        if type(arg1) ~= "number" then
            func12(1, "isinf", "number", type(arg1))
        end

        return func11(arg1)
    end

    function tbl11.traceback(arg1)
        if arg1 == nil then
            return func9()
        else
            return tbl7.tostring(arg1) .. "\n" .. func9()
        end
    end

    local tbl14 = {}
    tbl14.__add = true
    tbl14.__sub = true
    tbl14.__mul = true
    tbl14.__div = true
    tbl14.__mod = true
    tbl14.__pow = true
    tbl14.__unm = true
    tbl14.__idiv = true
    tbl14.__band = true
    tbl14.__bor = true
    tbl14.__bxor = true
    tbl14.__bnot = true
    tbl14.__shl = true
    tbl14.__shr = true
    tbl14.__eq = true
    tbl14.__lt = true
    tbl14.__le = true
    tbl14.__index = true
    tbl14.__newindex = true
    tbl14.__call = true
    tbl14.__len = true
    tbl14.__concat = true
    tbl14.__tostring = true
    tbl14.__pairs = true
    tbl14.__ipairs = true
    tbl14.__mode = true
    tbl14.__name = true
    tbl14.__metatable = true
    tbl14.__gc = false
    function tbl7.getmetatable(arg1)
        if type(arg1) ~= "table" then
            return nil
        end

        if func5(arg1) then
            return nil
        end

        return tbl.getmetatable(arg1)
    end

    function tbl7.setmetatable(arg1, arg2)
        if type(arg1) ~= "table" then
            func12(1, "setmetatable", "table", type(arg1))
        end

        if func5(arg1) then
            tbl.error(lUA_CANNOT_CHANGE_PROTECT_TABLE_ERROR_FORMAT, 0)
        end

        if arg2 ~= nil then
            local k, v = next(arg2)
            while k ~= nil do
                if type(k) == "string" then
                    if k:sub(1, 2) == "__" then
                        if tbl14[k] == false then
                            tbl.error(string.format(lUA_META_METHOD_NOT_SUPPORTED_ERROR_FORMAT, tbl7.tostring(k)), 0)
                        end
                    end
                end

                local k2, v2 = next(arg2, k)
                k = k2
            end
        end

        return tbl.setmetatable(arg1, arg2)
    end

    function tbl7:rawget(arg1)
        if type(self) ~= "table" then
            func12(1, "rawget", "table", type(self))
        end

        if func5(self) then
            if arg1 == nil then
                return nil
            else
                return self[arg1]
            end
        end

        return tbl.rawget(self, arg1)
    end

    function tbl7.rawset(arg1, arg2, arg3)
        if type(arg1) ~= "table" then
            func12(1, "rawset", "table", type(arg1))
        end

        if func5(arg1) then
            return nil
        end

        return tbl.rawset(arg1, arg2, arg3)
    end

    local tbl15 = {}
    for k, value in pairs(game) do
        if type(value) == "function" then
            tbl15[k] = value
        end
    end

    local game2 = func6(tbl15)
    local index = {}
    function index.FromRGBA(arg1, arg2, arg3, arg4)
        func13(arg1, 1, "FromRGBA")
        func13(arg2, 2, "FromRGBA")
        func13(arg3, 3, "FromRGBA")
        if arg4 ~= nil then
            func13(arg4, 4, "FromRGBA")
        end

        if arg4 == nil then
            arg4 = 255
        end

        local n = math.floor(math.min(math.max(arg4, 0), 255))
        local v = math.floor(math.min(math.max(arg1, 0), 255))
        local n2 = math.floor(math.min(math.max(arg2, 0), 255))
        local n3 = math.floor(math.min(math.max(arg3, 0), 255))
        return n * 16777216 + v * 65536 + n2 * 256 + n3
    end

    function index.FromRGB(arg1, arg2, arg3)
        func13(arg1, 1, "FromRGB")
        func13(arg2, 2, "FromRGB")
        func13(arg3, 3, "FromRGB")
        local n = math.floor(math.min(math.max(arg1, 0), 255))
        local v = math.floor(math.min(math.max(arg2, 0), 255))
        local n2 = math.floor(math.min(math.max(arg3, 0), 255))
        return 255 * 16777216 + n * 65536 + v * 256 + n2
    end

    function index.ToRGBA(arg1)
        func13(arg1, 1, "ToRGBA")
        local n = math.floor(arg1 / 16777216) % 256
        local v = math.floor(arg1 / 65536) % 256
        local n2 = math.floor(arg1 / 256) % 256
        local n3 = math.floor(arg1) % 256
        return math.floor(v), math.floor(n2), math.floor(n3), math.floor(n)
    end

    func4(index)
    local color = func4(tbl.setmetatable({}, {
        __index = index,
        __newindex = newindex,
        __pairs = pairs2,
        __ipairs = pairs2,
        __call = function(arg1, ...)
            return index.FromRGBA(...)
        end,
        __metatable = false,
        __tostring = tostring2
    }))

    local math2 = func6({
        abs = math.abs,
        ceil = math.ceil,
        floor = math.floor,
        max = math.max,
        min = math.min,
        sqrt = math.sqrt,
        sin = math.sin,
        cos = math.cos,
        tan = math.tan,
        asin = math.asin,
        acos = math.acos,
        atan = math.atan,
        deg = math.deg,
        rad = math.rad,
        pi = math.pi,
        huge = math.huge,
        fmod = math.fmod,
        exp = math.exp,
        log = math.log,
        random = math.random,
        randomseed = math.randomseed,
        maxinteger = math.maxinteger,
        mininteger = math.mininteger,
        tointeger = math.tointeger,
        type = math.type,
        modf = math.modf,
        ult = math.ult,
        isnan = tbl10.isnan,
        isinf = tbl10.isinf
    })

    local func17 = func6
    local tbl16 = {}
    local format
    if lUA_REPLACE_STRING_FORMAT == true then
        format = tbl8.format
        if format then
            goto lbl_394
        end
    end

    format = tbl3.format
    ::lbl_394::
    tbl16.format = format
    tbl16.find = string.find
    tbl16.match = string.match
    tbl16.gsub = string.gsub
    tbl16.sub = string.sub
    tbl16.upper = string.upper
    tbl16.lower = string.lower
    tbl16.len = string.len
    tbl16.reverse = string.reverse
    tbl16.char = string.char
    local rep
    if lUA_REPLACE_STRING_REP == true then
        rep = tbl8.rep
        if rep then
            goto lbl_428
        end
    end

    rep = tbl3.rep
    ::lbl_428::
    tbl16.rep = rep
    tbl16.byte = string.byte
    tbl16.gmatch = string.gmatch
    tbl16.dump = nil
    local string2 = func17(tbl16)
    local mt = tbl.getmetatable("")
    tbl.rawset(mt, "__index", string2)
    func4(mt)
    local func18 = func6
    local tbl17 = {insert = table.insert, remove = table.remove, sort = table.sort}
    local concat
    if lUA_REPLACE_TABLE_CONCAT == true then
        concat = tbl9.concat
        if concat then
            goto lbl_465
        end
    end

    concat = tbl4.concat
    ::lbl_465::
    tbl17.concat = concat
    tbl17.unpack = table.unpack
    tbl17.pack = table.pack
    local move
    if lUA_REPLACE_TABLE_MOVE == true then
        move = tbl9.move
        if move then
            goto lbl_478
        end
    end

    move = tbl4.move
    ::lbl_478::
    tbl17.move = move
    local v2 = func6({
        math = math2,
        string = string2,
        table = func18(tbl17),
        os = func6({time = tbl2.time, date = tbl2.date, clock = tbl2.clock, difftime = tbl2.difftime}),
        utf8 = func6({
            len = utf8.len,
            codepoint = utf8.codepoint,
            char = utf8.char,
            offset = utf8.offset,
            codes = utf8.codes,
            charpattern = utf8.charpattern
        }),
        debug = func6({traceback = tbl11.traceback}),
        game = game2,
        Enum = enum2,
        Color = color,
        tonumber = tonumber,
        tostring = tbl7.tostring,
        select = select,
        print = tbl7.print,
        warn = tbl7.warn,
        printerr = tbl7.printerr,
        require = tbl7.require,
        ipairs = ipairs,
        pairs = pairs,
        type = type,
        typeof = tbl7.typeof,
        next = next,
        rawequal = rawequal,
        rawlen = rawlen,
        error = tbl7.error,
        pcall = tbl7.pcall,
        xpcall = tbl7.xpcall,
        assert = tbl7.assert,
        setmetatable = tbl7.setmetatable,
        getmetatable = tbl7.getmetatable,
        rawget = tbl7.rawget,
        rawset = tbl7.rawset
    })

    function func(arg1)
        return "internal error"
    end

    local function errHandler(arg1)
        local ok, v = tbl.pcall(tbl7.errhandler, arg1)
        if ok then
            return v
        end

        return func(arg1)
    end

    function func2(arg1)
        if type(arg1) ~= "string" then
            return arg1
        end

        local m = arg1:match(str2)
        if m then
            return m
        end

        if not arg1:find(str, 1, true) then
            return arg1
        end

        local v = arg1:match(str3)
        if v then
            return v
        end

        return func(arg1)
    end

    local n2 = 0
    local n3 = 0
    local v3
    local function func19()
        n3 = n3 + lUA_BUDGET_PER_CHECK_COUNT
        if n3 > lUA_BUDGET_LIMIT_COUNT then
            v3 = func9()
            tbl.error(bUDGET_SENTINEL, 0)
        end
    end

    local function func20(arg1)
        if arg1 == true then
            local v = lUA_ENABLE_BUDGET_LIMIT
            if v then
                v = 0 < n2
            end

            if v then
                tbl5.sethook()
            end

            return v
        else
            tbl5.sethook(func19, "", lUA_BUDGET_PER_CHECK_COUNT)
            return false
        end
    end

    local function func21(arg1, ...)
        if type(arg1) ~= "function" then
            return
        end

        local ok, v = tbl.xpcall(arg1, tbl7.errhandler, ...)
        if not ok then
            if n2 == 0 then
                if test then
                    tbl.exception(func())
                end
            else
                if v == bUDGET_SENTINEL then
                    tbl.error(v, 0)
                else
                    if test then
                        tbl.exception(v)
                    end
                end
            end
        end
    end

    local function funcHandler(arg1, ...)
        if 0 < n2 then
            if lUA_ENABLE_BUDGET_LIMIT then
                if n3 > lUA_BUDGET_LIMIT_COUNT then
                    return
                end
            end

            if 32 <= n2 then
                tbl.error(lUA_NESTING_LIMIT_EXCEEDED_ERROR, 0)
            end
        end

        n2 = n2 + 1
        if n2 == 1 then
            if lUA_ENABLE_BUDGET_LIMIT then
                n3 = 0
                v3 = nil
                tbl5.sethook(func19, "", lUA_BUDGET_PER_CHECK_COUNT)
            end
        end

        local ok, str = tbl.xpcall(arg1, tbl7.errhandler, ...)
        local v = v3
        n2 = n2 - 1
        if n2 == 0 then
            if lUA_ENABLE_BUDGET_LIMIT then
                tbl5.sethook()
                n3 = 0
                v3 = nil
            end

            func3()
        end

        if not ok then
            if n2 == 0 then
                if lUA_ENABLE_BUDGET_LIMIT then
                    if str == bUDGET_SENTINEL then
                        local str2 = lUA_BUDGET_LIMIT_ERROR_MSG
                        if v ~= nil and v ~= "" then
                            str2 = lUA_BUDGET_LIMIT_ERROR_MSG .. "\n" .. v
                        end

                        str = str2
                    end
                end

                if type(str) ~= "string" then
                    str = "unknown error"
                end

                if test then
                    tbl.exception(str)
                end
            else
                tbl.error(str, 0)
            end
        else
            return str
        end
    end

    local tbl18 = {}
    local n4 = 0
    local tbl19 = {}
    local n5 = 0
    local function func22(arg1)
        if arg1 == nil then
            return
        end

        local runtimeId = arg1.runtimeId
        if tbl19[runtimeId] == nil then
            tbl19[runtimeId] = arg1
            n5 = n5 + 1
        end
    end

    local function func23()
        for k, v in pairs(tbl19) do
            if v ~= nil then
                if v.tickEnabled then
                    if tbl18[k] == nil then
                        tbl18[k] = v
                        n4 = n4 + 1
                    end
                else
                    if tbl18[k] ~= nil then
                        tbl18[k] = nil
                        n4 = n4 - 1
                    end
                end
            end

            tbl19[k] = nil
        end

        n5 = 0
    end

    local function tickHandler(arg1, arg2, arg3)
        if 0 < n5 then
            func23()
        end

        if 0 < n4 then
            for k, v in pairs(tbl18) do
                if v ~= nil then
                    if v.tickEnabled then
                        func21(v.exports.OnUpdate, arg1)
                        if 0 < arg2 then
                            func21(v.exports.OnLevelUpdate, arg2)
                        end
                    end
                end
            end
        end
    end

    local tbl20 = {}
    local tbl21 = {}
    local n6 = 0
    local function func24(arg1, arg2, arg3)
        local tbl = tbl20[arg1]
        if tbl == nil then
            tbl = {}
            tbl20[arg1] = tbl
        end

        if tbl[arg2] == nil then
            tbl[arg2] = arg3
            local v = luaSignalMap[arg2]
            if v == nil then
                v = {}
                luaSignalMap[arg2] = v
            end

            table.insert(v, arg3)
        else
            tbl[arg2] = arg3
        end
    end

    local function func25(arg1, arg2)
        local v = tbl20[arg1]
        if v == nil then
            return
        end

        local v2 = v[arg2]
        if v2 == nil then
            return
        end

        v[arg2] = nil
        local v3 = luaSignalMap[arg2]
        if v3 ~= nil then
            for i = 1, #v3 do
                if v3[i] == v2 then
                    table.remove(v3, i)
                    break
                end
            end
        end
    end

    local function func26(arg1)
        local v = tbl20[arg1]
        if v == nil then
            return
        end

        for k, value in pairs(v) do
            local v2 = luaSignalMap[k]
            if v2 ~= nil then
                for i = 1, #v2 do
                    if v2[i] == value then
                        table.remove(v2, i)
                        break
                    end
                end
            end
        end

        tbl20[arg1] = nil
    end

    local function remoteSignalHandler(arg1, arg2)
        local v = luaSignalMap[arg1]
        if v ~= nil then
            if #v ~= 0 then
                goto lbl_8
            end
        end

        do
            return
        end

        ::lbl_8::
        local count = #v
        for i = 1, count do
            tbl21[i] = v[i]
        end

        n6 = count
        for i = 1, count do
            func21(tbl21[i], arg1, arg2)
        end

        for i = count, 1, -1 do
            tbl21[i] = nil
        end

        n6 = 0
    end

    local tbl22 = {}
    local tbl23 = {}
    local tbl24 = {}
    local tbl25 = {}
    local n7 = 0
    local function func27()
        local customVariableEntityType = enum.CustomVariableEntityType
        local n = 0
        local v = 0
        local n2 = 0
        local v2 = tbl22[customVariableEntityType.Level]
        if v2 ~= nil then
            for k, value in pairs(v2) do
                if value ~= nil then
                    if 0 < #value then
                        n = 1
                        break
                    end
                end
            end
        end

        local v3 = tbl22[customVariableEntityType.PlayerSelf]
        if v3 ~= nil then
            for k, value in pairs(v3) do
                if value ~= nil then
                    if 0 < #value then
                        v = 1
                        break
                    end
                end
            end
        end

        local v4 = tbl22[customVariableEntityType.AvatarSelf]
        if v4 ~= nil then
            for k, value in pairs(v4) do
                if value ~= nil then
                    if 0 < #value then
                        n2 = 1
                        break
                    end
                end
            end
        end

        tbl6.handlers(n, v, n2)
    end

    local function func28(arg1, arg2, arg3, arg4)
        local tbl = tbl23[arg1]
        if tbl == nil then
            tbl = {}
            tbl23[arg1] = tbl
        end

        local v = tbl[arg2]
        if v == nil then
            v = {}
            tbl[arg2] = v
        end

        if v[arg3] == nil then
            v[arg3] = arg4
            local tbl2 = tbl22[arg2]
            if tbl2 == nil then
                tbl2 = {}
                tbl22[arg2] = tbl2
            end

            local tbl3 = tbl2[arg3]
            if tbl3 == nil then
                tbl3 = {}
                tbl2[arg3] = tbl3
            end

            table.insert(tbl3, arg4)
        else
            v[arg3] = arg4
        end

        func27()
    end

    local function func29(arg1, arg2, arg3)
        local v = tbl23[arg1]
        if v == nil then
            return
        end

        local v2 = v[arg2]
        if v2 == nil then
            return
        end

        local v3 = v2[arg3]
        if v3 == nil then
            return
        end

        v2[arg3] = nil
        local v4 = tbl22[arg2]
        if v4 ~= nil then
            local v5 = v4[arg3]
            if v5 ~= nil then
                for i = 1, #v5 do
                    if v5[i] == v3 then
                        table.remove(v5, i)
                        break
                    end
                end
            end
        end

        func27()
    end

    local function func30(arg1)
        local v = tbl23[arg1]
        if v == nil then
            return
        end

        for k, value in pairs(v) do
            for key, v2 in pairs(value) do
                local v3 = tbl22[k]
                if v3 ~= nil then
                    local v4 = v3[key]
                    if v4 ~= nil then
                        for i = 1, #v4 do
                            if v4[i] == v2 then
                                table.remove(v4, i)
                                break
                            end
                        end
                    end
                end
            end
        end

        tbl23[arg1] = nil
        func27()
    end

    local function func31(arg1, arg2)
        local v = arg1[arg2]
        if v ~= nil then
            if #v ~= 0 then
                goto lbl_8
            end
        end

        do
            return
        end

        ::lbl_8::
        for i = 1, #v do
            n7 = n7 + 1
            tbl24[n7] = v[i]
            tbl25[n7] = arg2
        end
    end

    local function customValueChangedHandler(arg1, arg2, arg3)
        local v = tbl22[arg1]
        if v == nil then
            return
        end

        n7 = 0
        if arg2 ~= nil then
            func31(v, arg2)
        end

        if arg3 ~= nil then
            for i = 1, #arg3 do
                func31(v, arg3[i])
            end
        end

        if 0 < n7 then
            for i = 1, n7 do
                func21(tbl24[i], arg1, tbl25[i])
            end

            for i = n7, 1, -1 do
                tbl24[i] = nil
                tbl25[i] = nil
            end

            n7 = 0
        end
    end

    function func3()
        if 0 < n6 then
            for i = n6, 1, -1 do
                tbl21[i] = nil
            end

            n6 = 0
        end

        if 0 < n7 then
            for i = n7, 1, -1 do
                tbl24[i] = nil
                tbl25[i] = nil
            end

            n7 = 0
        end
    end

    local function func32(arg1, arg2, arg3)
        local typeof = tbl7.typeof(arg1)
        if typeof ~= "Script" then
            func12(1, arg2, "Script", typeof)
        end

        if arg1.alive ~= true then
            tbl.error(tbl3.format(str9, arg2), 0)
        end

        if not arg3 then
            local v = tbl12[arg1.id]
            if v ~= nil then
                if v.loading then
                    tbl.error(tbl3.format(str7, arg2), 0)
                end
            end
        end
    end

    local tbl26 = {}
    function tbl26:GetParam(arg1)
        func32(self, "GetParam", true)
        if type(arg1) ~= "string" then
            func12(2, "GetParam", "string", type(arg1))
        end

        if arg1 == "" then
            return nil
        end

        local v = tbl12[self.id]
        local v2
        if v ~= nil then
            if v.params ~= nil then
                goto lbl_32
            end
        end

        v2 = nil
        do
            return v2
        end

        ::lbl_32::
        return v.params[arg1]
    end

    function tbl26:Invoke(arg1, ...)
        func32(self, "Invoke", false)
        if type(arg1) ~= "string" then
            func12(2, "Invoke", "string", type(arg1))
        end

        if arg1 == "" then
            return nil
        end

        local v = tbl12[self.id]
        local v2
        if v ~= nil then
            if v.exports ~= nil then
                goto lbl_32
            end
        end

        v2 = nil
        do
            return v2
        end

        ::lbl_32::
        local export = v.exports[arg1]
        if type(export) ~= "function" then
            return nil
        end

        return export(...)
    end

    function tbl26:EnableUpdate(arg1)
        func32(self, "EnableUpdate", false)
        if type(arg1) ~= "boolean" then
            func12(2, "EnableUpdate", "boolean", type(arg1))
        end

        tbl6.enabletick(self.id, arg1)
    end

    function tbl26:RegisterServerSignalHandler(arg1, arg2)
        func32(self, "RegisterServerSignalHandler", false)
        if type(arg1) ~= "string" then
            func12(2, "RegisterServerSignalHandler", "string", type(arg1))
        end

        if arg2 ~= nil then
            if type(arg2) ~= "function" then
                func12(3, "RegisterServerSignalHandler", "function", type(arg2))
            end
        end

        if arg2 ~= nil then
            func24(self.id, arg1, arg2)
        else
            func25(self.id, arg1)
        end
    end

    function tbl26:UnregisterServerSignalHandler(arg1)
        func32(self, "UnregisterServerSignalHandler", false)
        if type(arg1) ~= "string" then
            func12(2, "UnregisterServerSignalHandler", "string", type(arg1))
        end

        func25(self.id, arg1)
    end

    function tbl26:RegisterCustomVariableChangedHandler(arg1, arg2, arg3)
        func32(self, "RegisterCustomVariableChangedHandler", false)
        if tbl7.typeof(arg1) == "EnumItem" then
            if arg1.EnumType == "CustomVariableEntityType" then
                goto lbl_19
            end
        end

        func12(2, "RegisterCustomVariableChangedHandler", "CustomVariableEntityType")
        ::lbl_19::
        if type(arg2) ~= "string" then
            func12(3, "RegisterCustomVariableChangedHandler", "string", type(arg2))
        end

        if arg3 ~= nil then
            if type(arg3) ~= "function" then
                func12(4, "RegisterCustomVariableChangedHandler", "function", type(arg3))
            end
        end

        if arg3 ~= nil then
            func28(self.id, arg1, arg2, arg3)
        else
            func29(self.id, arg1, arg2)
        end
    end

    function tbl26:UnregisterCustomVariableChangedHandler(arg1, arg2)
        func32(self, "UnregisterCustomVariableChangedHandler", false)
        if tbl7.typeof(arg1) == "EnumItem" then
            if arg1.EnumType == "CustomVariableEntityType" then
                goto lbl_19
            end
        end

        func12(2, "UnregisterCustomVariableChangedHandler", "CustomVariableEntityType")
        ::lbl_19::
        if type(arg2) ~= "string" then
            func12(3, "UnregisterCustomVariableChangedHandler", "string", type(arg2))
        end

        func29(self.id, arg1, arg2)
    end

    local function func33(arg1)
        if type(arg1) ~= "number" then
            return false
        end

        local v = tbl12[arg1]
        if v == nil then
            return false
        end

        return v.enabled == true
    end

    local function func34(arg1)
        if type(arg1) ~= "number" then
            return nil
        end

        local v = tbl12[arg1]
        if v == nil then
            return nil
        end

        return v.name
    end

    local function func35(arg1, arg2)
        if type(arg1) ~= "number" then
            return nil
        end

        if type(arg2) ~= "string" then
            return nil
        end

        if arg2 == "" then
            return nil
        end

        local v = tbl12[arg1]
        local v2
        if v ~= nil then
            if v.exports ~= nil then
                goto lbl_27
            end
        end

        v2 = nil
        do
            return v2
        end

        ::lbl_27::
        local export = v.exports[arg2]
        if type(export) ~= "function" then
            return nil
        end

        return export, v
    end

    local function func36(id, scriptMappingId, object, exports, path, params, enabled)
        local fields = {}
        fields.alive = true
        fields.id = id
        fields.scriptMappingId = scriptMappingId
        fields.object = object
        fields.path = path
        local v = {}
        v.runtimeId = id
        v.object = object
        v.exports = exports
        v.tickEnabled = false
        v.enabled = enabled
        v.name = tbl3.format("Script('%s'):%s", path, id)
        v.params = params
        v.dynamicExports = nil
        v.fields = fields
        v.loading = true
        func4(v)
        tbl12[id] = v
        local tbl2 = {}
        func4(tbl2)
        tbl.setmetatable(tbl2, {
            __index = function(arg1, arg2)
                if arg2 == "enabled" then
                    return func33(id)
                end

                local v2 = fields[arg2]
                if v2 ~= nil then
                    return v2
                end

                local dynamicExport = tbl26[arg2]
                if dynamicExport ~= nil then
                    return dynamicExport
                end

                if v.loading then
                    return nil
                end

                local v3, v4 = func35(id, arg2)
                if v3 == nil then
                    return nil
                end

                if v4.dynamicExports == nil then
                    v4.dynamicExports = {}
                else
                    dynamicExport = v4.dynamicExports[arg2]
                end

                if dynamicExport ~= nil then
                    return dynamicExport
                end

                local function func(arg1, ...)
                    func32(arg1, arg2, false)
                    local func, v = func35(id, arg2)
                    if func == nil then
                        return nil
                    end

                    return func(...)
                end

                v4.dynamicExports[arg2] = func
                return func
            end,
            __newindex = function(arg1, arg2, arg3)
                if arg2 == "enabled" then
                    if type(arg3) ~= "boolean" then
                        func12(2, "enabled", "boolean", type(arg3))
                    end

                    if fields.alive ~= true then
                        tbl.error(tbl3.format(str9, "enabled"), 0)
                    end

                    local v = tbl12[id]
                    if v ~= nil then
                        if v.loading then
                            tbl.error(tbl3.format(str8, "enabled"), 0)
                        end
                    end

                    if arg3 ~= func33(id) then
                        tbl6.enablescript(id, arg3)
                    end
                else
                    tbl.error(lUA_ATTEMPT_MODIFY_READ_ONLY_TABLE, 0)
                end
            end,
            __pairs = pairs2,
            __ipairs = pairs2,
            __tostring = function(arg1)
                return func34(id)
            end,
            __metatable = false
        })

        obj3[tbl2] = "Script"
        luaInstances[id] = tbl2
        return tbl2
    end

    local function func37(arg1)
        if arg1 == nil then
            return
        end

        if luaInstances[arg1] ~= nil then
            luaInstances[arg1] = nil
        end

        local v = tbl12[arg1]
        if v ~= nil then
            v.fields.alive = false
            tbl12[arg1] = nil
        end
    end

    local function scriptStateHandler(arg1, arg2, tickEnabled)
        local v = func20(true)
        if arg2 == 1 then
            local v2 = tbl12[arg1]
            if v2 ~= nil then
                v2.fields.alive = false
                if v2.tickEnabled == true then
                    v2.tickEnabled = false
                    func22(v2)
                end
            end

            func26(arg1)
            func30(arg1)
            luaInstances[arg1] = nil
            tbl12[arg1] = nil
        elseif arg2 == 2 then
            local v2 = tbl12[arg1]
            if v2 ~= nil then
                if v2.tickEnabled ~= tickEnabled then
                    v2.tickEnabled = tickEnabled
                    func22(v2)
                end
            end
        elseif arg2 == 3 then
            local v2 = tbl12[arg1]
            if v2 ~= nil then
                v2.enabled = tickEnabled
            end
        elseif arg2 == 4 then
            func37(arg1)
        end

        if v then
            func20(false)
        end
    end

    local function anyInvokeHandler(arg1, ...) end
    local tbl27 = {}
    tbl27._ENV = true
    tbl27._G = true
    tbl27.script = true
    local function func38(arg1, arg2, arg3, arg4)
        if not arg2 then
            arg2 = {}
        end

        if not arg3 then
            arg3 = {}
        end

        if not arg4 then
            arg4 = {}
        end

        arg2.script = func36(arg1, arg2.prefabId, arg2.object, arg4, arg2.path, arg2.params, arg2.enabled)
        arg2.prefabId = nil
        arg2.object = nil
        arg2.path = nil
        arg2.params = nil
        arg2.enabled = nil
        func4(arg2)
        func4(arg3)
        func4(arg4)
        local declaredExports = {}
        local flag = true
        local v = {}
        for k, value in pairs(tbl27) do
            v[k] = value
        end

        for k, value in pairs(arg2) do
            v[k] = true
        end

        local proxy = {}
        local function func(arg1)
            if arg1 == "_ENV" or arg1 == "_G" then
                return proxy
            end

            local v = arg3[arg1]
            if v ~= nil then
                return v
            end

            local v3 = arg2[arg1]
            if v3 ~= nil then
                return v3
            end

            local v4 = arg4[arg1]
            if v4 ~= nil then
                return v4
            end

            return v2[arg1]
        end

        local function func2(arg1, arg2)
            if v[arg1] then
                tbl.error(lUA_ATTEMPT_MODIFY_RESERVED_KEY, 0)
            end

            if flag then
                if type(arg2) == "function" then
                    arg4[arg1] = arg2
                    declaredExports[arg1] = true
                    return
                end
            end

            arg3[arg1] = arg2
        end

        tbl.setmetatable(proxy, {
            __index = function(arg1, arg2)
                return func(arg2)
            end,
            __newindex = function(arg1, arg2, arg3)
                func2(arg2, arg3)
            end,
            __tostring = function()
                return "ENV"
            end,
            __metatable = false
        })

        func4(proxy)
        obj3[proxy] = "ENV"
        local function func3()
            flag = false
            local v = tbl12[arg1]
            if v ~= nil then
                v.loading = false
            end

            for k, value in pairs(arg4) do
                if type(value) == "function" then
                    obj2[value] = k
                end
            end
        end

        return {
            proxy = proxy,
            declaredExports = declaredExports,
            finishLoading = function()
                local v = func20(true)
                local ok, v2 = tbl.pcall(func3)
                if v then
                    func20(false)
                end

                if not ok then
                    tbl.error(v2, 0)
                end

                return v2
            end
        }
    end

    return {
        createProxyEnv = function(arg1, arg2, arg3, arg4)
            local v = func20(true)
            local ok, v2 = tbl.pcall(func38, arg1, arg2, arg3, arg4)
            if v then
                func20(false)
            end

            if not ok then
                tbl.error(v2, 0)
            end

            return v2
        end,
        luaInterEnv = {
            errHandler = errHandler,
            funcHandler = funcHandler,
            tickHandler = tickHandler,
            remoteSignalHandler = remoteSignalHandler,
            customValueChangedHandler = customValueChangedHandler,
            scriptStateHandler = scriptStateHandler,
            anyInvokeHandler = anyInvokeHandler
        }
    }
end
