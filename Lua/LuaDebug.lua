local v = require
local func
local v2

if loadstring then
    v2 = loadstring
else
    v2 = load
end

local func2 = setfenv

if not func2 then
    function func2(arg1, arg2)
        local n = 1
        while true do
            local getupvalue = debug.getupvalue(arg1, n)
            if getupvalue == "_ENV" then
                debug.upvaluejoin(arg1, n, function()
                    return arg2
                end, 1)

                break
            elseif not getupvalue then
                break
            end

            n = n + 1
        end

        return arg1
    end
end

local tbl = {}
local luaDebugTool

if LuaDebugTool then
    luaDebugTool = LuaDebugTool
else
    if CS then
        if CS.LuaDebugTool then
            luaDebugTool = CS.LuaDebugTool
        end
    end
end

local v3 = luaDebugTool
local func3 = v2
local getinfo = debug.getinfo

local function func4()
    local v = _G
    local string2 = require("string")
    local math2 = require("math")
    local core = require("socket.core")
    local v2 = core
    function v2.connect4(arg1, arg2, arg3, arg4)
        return core.connect(arg1, arg2, arg3, arg4, "inet")
    end

    function v2.connect6(arg1, arg2, arg3, arg4)
        return core.connect(arg1, arg2, arg3, arg4, "inet6")
    end

    if not v2.connect then
        function v2.connect(arg1, arg2, arg3, arg4)
            local tcp, v = core.tcp()
            if not tcp then
                return nil, v
            end

            if arg3 then
                local bind, v2 = tcp:bind(arg3, arg4, -1)
                if not bind then
                    return nil, v2
                end
            end

            local connect, v2 = tcp:connect(arg1, arg2)
            if not connect then
                return nil, v2
            end

            return tcp
        end
    end

    function v2.bind(arg1, arg2, arg3)
        if arg1 == "*" then
            arg1 = "0.0.0.0"
        end

        local getaddrinfo, v2 = core.dns.getaddrinfo(arg1)
        if not getaddrinfo then
            return nil, v2
        end

        local str = "no info on address"
        for i, value in v.ipairs(getaddrinfo) do
            local v4, v3
            if value.family == "inet" then
                local tcp4, v5 = core.tcp4()
                v3 = v5
                v4 = tcp4
            else
                local tcp6, v5 = core.tcp6()
                v3 = v5
                v4 = tcp6
            end

            if not v4 then
                return nil, v3
            end

            v4:setoption("reuseaddr", true)
            local bind, v5 = v4:bind(value.addr, arg2)
            str = v5
            if not bind then
                v4:close()
            else
                local listen, v6 = v4:listen(arg3)
                str = v6
                if not listen then
                    v4:close()
                else
                    return v4
                end
            end
        end

        return nil, str
    end

    v2.try = v2.newtry()
    function v2:choose()
        return function(arg1, arg2, arg3)
            local valueType = v.type(arg1)
            if valueType ~= "string" then
                valueType = "default"
                local v2 = arg1
                arg3 = arg2
                arg2 = v2
                arg1 = valueType
            end

            local str = arg1 or valueType
            if not arg1 then
                str = "nil"
            end

            local func = self[str]
            if not func then
                v.error("unknown key (" .. v.tostring(arg1) .. ")", 3)
            else
                return func(arg2, arg3)
            end
        end
    end

    local sourcet = {}
    local sinkt = {}
    v2.sourcet = sourcet
    v2.sinkt = sinkt
    v2.BLOCKSIZE = 2048
    sinkt["close-when-done"] = function(arg1)
        return v.setmetatable({
            getfd = function()
                return arg1:getfd()
            end,
            dirty = function()
                return arg1:dirty()
            end
        }, {
            __call = function(arg1_2, arg2, arg3)
                if not arg2 then
                    arg1:close()
                    return 1
                else
                    return arg1:send(arg2)
                end
            end
        })
    end

    sinkt["keep-open"] = function(arg1)
        return v.setmetatable({
            getfd = function()
                return arg1:getfd()
            end,
            dirty = function()
                return arg1:dirty()
            end
        }, {
            __call = function(arg1_2, arg2, arg3)
                if arg2 then
                    return arg1:send(arg2)
                else
                    return 1
                end
            end
        })
    end

    sinkt.default = sinkt["keep-open"]
    v2.sink = v2.choose(sinkt)
    sourcet["by-length"] = function(arg1, arg2)
        return v.setmetatable({
            getfd = function()
                return arg1:getfd()
            end,
            dirty = function()
                return arg1:dirty()
            end
        }, {
            __call = function()
                if arg2 <= 0 then
                    return nil
                end

                local n = math2.min(core.BLOCKSIZE, arg2)
                local receive, v = arg1:receive(n)
                if v then
                    return nil, v
                end

                arg2 = arg2 - string2.len(receive)
                return receive
            end
        })
    end

    sourcet["until-closed"] = function(arg1)
        local n
        return v.setmetatable({
            getfd = function()
                return arg1:getfd()
            end,
            dirty = function()
                return arg1:dirty()
            end
        }, {
            __call = function()
                if n then
                    return nil
                end

                local receive, v, v2 = arg1:receive(core.BLOCKSIZE)
                if not v then
                    return receive
                elseif v == "closed" then
                    arg1:close()
                    n = 1
                    return v2
                else
                    return nil, v
                end
            end
        })
    end

    sourcet.default = sourcet["until-closed"]
    v2.source = v2.choose(sourcet)
    return v2
end

local function func5()
    local v = require("math")
    local string2 = require("string")
    local table2 = require("table")
    local v2
    local tbl = {}
    local tbl2 = {}
    tbl.EMPTY_ARRAY = {}
    tbl.EMPTY_OBJECT = {}
    local func
    local func2
    local func4
    local func5
    local func6
    local func7
    local func8
    local func9
    local func10
    function tbl:encode()
        if self == nil then
            return "null"
        end

        local valueType = type(self)
        if valueType == "string" then
            return "\"" .. tbl2.encodeString(self) .. "\""
        end

        if valueType == "number" or valueType == "boolean" then
            return tostring(self)
        end

        if valueType == "table" then
            local v = {}
            local v2, v3 = func9(self)
            if v2 then
                for i = 1, v3 do
                    table2.insert(v, tbl.encode(self[i]))
                end
            else
                for k, value in pairs(self) do
                    if func10(k) then
                        if func10(value) then
                            table2.insert(v, "\"" .. tbl2.encodeString(k) .. "\":" .. tbl.encode(value))
                        end
                    end
                end
            end

            if v2 then
                return "[" .. table2.concat(v, ",") .. "]"
            else
                return "{" .. table2.concat(v, ",") .. "}"
            end
        end

        if valueType == "function" then
            if self == tbl.null then
                return "null"
            end
        end

        assert(false, "encode attempt to encode unsupported type " .. valueType .. ":" .. tostring(self))
    end

    function tbl.decode(arg1, arg2)
        if not arg2 or not arg2 then
            arg2 = 1
        end

        arg2 = func8(arg1, arg2)
        assert(arg2 <= string2.len(arg1), "Unterminated JSON encoded object found at position in [" .. arg1 .. "]")
        local str = string2.sub(arg1, arg2, arg2)
        if str == "{" then
            return func6(arg1, arg2)
        end

        if str == "[" then
            return func(arg1, arg2)
        end

        if string2.find("+-0123456789.e", str, 1, true) then
            return func5(arg1, arg2)
        end

        if str == "\"" or str == "'" then
            return func7(arg1, arg2)
        end

        if string2.sub(arg1, arg2, arg2 + 1) == "/*" then
            return tbl.decode(arg1, func2(arg1, arg2))
        end

        return func4(arg1, arg2)
    end

    function tbl.null()
        return tbl.null
    end

    function func(arg1, arg2)
        local v = {}
        local len = string2.len(arg1)
        assert(string2.sub(arg1, arg2, arg2) == "[", "decode_scanArray called but array does not start at position " .. arg2 .. " in string:\n" .. arg1)
        arg2 = arg2 + 1
        local flag
        repeat
            arg2 = func8(arg1, arg2)
            assert(len >= arg2, "JSON String ended unexpectedly scanning array.")
            local str = string2.sub(arg1, arg2, arg2)
            if str == "]" then
                return v, arg2 + 1
            end

            if str == "," then
                arg2 = func8(arg1, arg2 + 1)
            end

            assert(len >= arg2, "JSON String ended unexpectedly scanning array.")
            local decode, v3 = tbl.decode(arg1, arg2)
            arg2 = v3
            v2 = decode
            table2.insert(v, v2)
            flag = false
        until flag
    end

    function func2(arg1, arg2)
        assert(string2.sub(arg1, arg2, arg2 + 1) == "/*", "decode_scanComment called but comment does not start at position " .. arg2)
        local pos = string2.find(arg1, "*/", arg2 + 2)
        assert(pos ~= nil, "Unterminated comment in string at " .. arg2)
        return pos + 2
    end

    function func4(arg1, arg2)
        local tbl = {["true"] = true, ["false"] = false, null = nil}
        local v = {}
        local str = "false"
        local str2 = "null"
        v[1] = "true"
        v[2] = str
        v[3] = str2
        for k, value in pairs(v) do
            if string2.sub(arg1, arg2, arg2 + string2.len(value) - 1) == value then
                return tbl[value], arg2 + string2.len(value)
            end
        end

        assert(nil, "Failed to scan constant from string " .. arg1 .. " at starting position " .. arg2)
    end

    function func5(arg1, arg2)
        local n = arg2 + 1
        local len = string2.len(arg1)
        local str = "+-0123456789.e"
        while true do
            if not (string2.find(str, string2.sub(arg1, n, n), 1, true) and n <= len) then
                break
            end

            n = n + 1
        end

        local v = "return " .. string2.sub(arg1, arg2, n - 1)
        local func = func3(v)
        assert(func, "Failed to scan number [ " .. v .. "] in JSON string at position " .. arg2 .. " : " .. n)
        return func(), n
    end

    function func6(arg1, arg2)
        local v = {}
        local len = string2.len(arg1)
        assert(string2.sub(arg1, arg2, arg2) == "{", "decode_scanObject called but object does not start at position " .. arg2 .. " in string:\n" .. arg1)
        arg2 = arg2 + 1
        local flag
        repeat
            arg2 = func8(arg1, arg2)
            assert(len >= arg2, "JSON string ended unexpectedly while scanning object.")
            local str = string2.sub(arg1, arg2, arg2)
            if str == "}" then
                return v, arg2 + 1
            end

            if str == "," then
                arg2 = func8(arg1, arg2 + 1)
            end

            assert(len >= arg2, "JSON string ended unexpectedly scanning object.")
            local decode, v2 = tbl.decode(arg1, arg2)
            arg2 = v2
            local v3 = decode
            assert(len >= arg2, "JSON string ended unexpectedly searching for value of key " .. v3)
            arg2 = func8(arg1, arg2)
            assert(len >= arg2, "JSON string ended unexpectedly searching for value of key " .. v3)
            assert(string2.sub(arg1, arg2, arg2) == ":", "JSON object key-value assignment mal-formed at " .. arg2)
            arg2 = func8(arg1, arg2 + 1)
            assert(len >= arg2, "JSON string ended unexpectedly searching for value of key " .. v3)
            local decode2, v4 = tbl.decode(arg1, arg2)
            arg2 = v4
            v[v3] = decode2
            flag = false
        until flag
    end

    local tbl3 = {}
    tbl3["\\t"] = "\t"
    tbl3["\\f"] = "\f"
    tbl3["\\r"] = "\r"
    tbl3["\\n"] = "\n"
    tbl3["\\b"] = "\b"
    setmetatable(tbl3, {
        __index = function(arg1, arg2)
            return string2.sub(arg2, 2)
        end
    })

    function func7(arg1, arg2)
        assert(arg2, "decode_scanString(..) called without start position")
        local str = string2.sub(arg1, arg2, arg2)
        assert(str == "\"" or str == "'", "decode_scanString called for a non-string")
        local tbl = {}
        local n = arg2
        while true do
            if string2.find(arg1, str, n + 1) == n + 1 then
                break
            end

            local v2 = n
            local pos, v3 = string2.find(arg1, "\\.", n + 1)
            n = v3
            local v4 = pos
            local pos2, v5 = string2.find(arg1, str, v2 + 1)
            if not v4 or v4 > pos2 then
                n = v5 - 1
                v4 = pos2
            end

            table2.insert(tbl, string2.sub(arg1, v2 + 1, v4 - 1))
            if string2.sub(arg1, v4, n) == "\\u" then
                local str2 = string2.sub(arg1, n + 1, n + 4)
                n = n + 4
                local num = tonumber(str2, 16)
                assert(num, "String decoding failed: bad Unicode escape " .. str2 .. " at position " .. v4 .. " : " .. n)
                local str3
                if num < 128 then
                    str3 = string2.char(num % 128)
                elseif num < 2048 then
                    str3 = string2.char(192 + v.floor(num / 64) % 32, 128 + num % 64)
                else
                    str3 = string2.char(224 + v.floor(num / 4096) % 16, 128 + v.floor(num / 64) % 64, 128 + num % 64)
                end

                table2.insert(tbl, str3)
            else
                table2.insert(tbl, tbl3[string2.sub(arg1, v4, n)])
            end
        end

        table2.insert(tbl, string2.sub(n, n + 1))
        assert(string2.find(arg1, str, n + 1), "String decoding failed: missing closing " .. str .. " at position " .. n .. "(for string at position " .. arg2 .. ")")
        return table2.concat(tbl, ""), n + 2
    end

    function func8(arg1, arg2)
        local str = " \n\r\t"
        local len = string2.len(arg1)
        while true do
            if not (string2.find(str, string2.sub(arg1, arg2, arg2), 1, true) and arg2 <= len) then
                break
            end

            arg2 = arg2 + 1
        end

        return arg2
    end

    local tbl4 = {}
    tbl4["\""] = "\\\""
    tbl4["\\"] = "\\\\"
    tbl4["/"] = "\\/"
    tbl4["\b"] = "\\b"
    tbl4["\f"] = "\\f"
    tbl4["\n"] = "\\n"
    tbl4["\r"] = "\\r"
    tbl4["\t"] = "\\t"
    function tbl2.encodeString(arg1)
        return tostring(arg1):gsub(".", function(arg1)
            return tbl4[arg1]
        end)
    end

    function func9(eMPTY_ARRAY)
        if eMPTY_ARRAY == tbl.EMPTY_ARRAY then
            return true, 0
        end

        if eMPTY_ARRAY == tbl.EMPTY_OBJECT then
            return false
        end

        local n = 0
        for k, value in pairs(eMPTY_ARRAY) do
            if type(k) == "number" then
                if v.floor(k) == k and 1 <= k then
                    if not func10(value) then
                        return false
                    end

                    n = v.max(n, k)
                end
            elseif k == "n" then
                local count = eMPTY_ARRAY.n
                if not count then
                    count = #eMPTY_ARRAY
                end

                if value ~= count then
                    return false
                end
            else
                if func10(value) then
                    return false
                end
            end
        end

        return true, n
    end

    function func10(arg1)
        local valueType = type(arg1)
        return valueType == "string" or valueType == "boolean" or valueType == "number" or valueType == "nil" or valueType == "table"
    end

    return tbl
end

local func6 = print
local v4
local connect
local v5 = func5()
local tbl2 = {}
tbl2.fileMaps = {}
tbl2.Run = true
tbl2.StepIn = false
tbl2.StepInLevel = 0
tbl2.StepNext = false
tbl2.StepNextLevel = 0
tbl2.StepOut = false
tbl2.breakInfos = {}
tbl2.runTimeType = nil
tbl2.isHook = true
tbl2.pathCachePaths = {}
tbl2.isProntToConsole = 1
tbl2.isFoxGloryProject = false
tbl2.isDebugPrint = true
tbl2.hookType = "lrc"
tbl2.currentFileName = ""
tbl2.currentTempFunc = nil
tbl2.splitFilePaths = {}
tbl2.DebugLuaFie = ""
tbl2.version = "1.0.7"
local func7
local resume = coroutine.resume
local v6 = coroutine

local function resume2(arg1, ...)
    if tbl2.isHook then
        if coroutine.status(arg1) ~= "dead" then
            debug.sethook(arg1, func7, "lrc")
        end
    end

    return resume(arg1, ...)
end

v6.resume = resume2

tbl2.event = {
    S2C_SetBreakPoints = 1,
    C2S_SetBreakPoints = 2,
    S2C_RUN = 3,
    C2S_HITBreakPoint = 4,
    S2C_ReqVar = 5,
    C2S_ReqVar = 6,
    S2C_NextRequest = 7,
    C2S_NextResponse = 8,
    C2S_NextResponseOver = 9,
    S2C_StepInRequest = 10,
    C2S_StepInResponse = 11,
    S2C_StepOutRequest = 12,
    C2S_StepOutResponse = 13,
    C2S_LuaPrint = 14,
    S2C_LoadLuaScript = 16,
    C2S_SetSocketName = 17,
    C2S_LoadLuaScript = 18,
    C2S_DebugXpCall = 20,
    S2C_DebugClose = 21
}

function print(...)
    if tbl2.isProntToConsole ~= 1 then
        if tbl2.isProntToConsole ~= 3 then
            goto lbl_10
        end
    end

    func6(...)
    ::lbl_10::
    if tbl2.isProntToConsole ~= 1 then
        if tbl2.isProntToConsole ~= 2 then
            goto lbl_62
        end
    end

    if v4 then
        local v = {...}
        local str = ""
        if #v == 0 then
            v = {"nil"}
        end

        for k, value in pairs(v) do
            str = str .. tostring(value) .. "\t"
        end

        local tbl3 = {event = tbl2.event.C2S_LuaPrint, data = {msg = tbl.encode(str), type = 1}}
        local encode = v5.encode(tbl3)
        v4:send(encode .. "__debugger_k0204__")
    end

    ::lbl_62::
end

function luaIdePrintWarn(...)
    if tbl2.isProntToConsole ~= 1 then
        if tbl2.isProntToConsole ~= 3 then
            goto lbl_10
        end
    end

    func6(...)
    ::lbl_10::
    if tbl2.isProntToConsole ~= 1 then
        if tbl2.isProntToConsole ~= 2 then
            goto lbl_62
        end
    end

    if v4 then
        local v = {...}
        local str = ""
        if #v == 0 then
            v = {"nil"}
        end

        for k, value in pairs(v) do
            str = str .. tostring(value) .. "\t"
        end

        local tbl3 = {event = tbl2.event.C2S_LuaPrint, data = {msg = tbl.encode(str), type = 2}}
        local encode = v5.encode(tbl3)
        v4:send(encode .. "__debugger_k0204__")
    end

    ::lbl_62::
end

function luaIdePrintErr(...)
    if tbl2.isProntToConsole ~= 1 then
        if tbl2.isProntToConsole ~= 3 then
            goto lbl_10
        end
    end

    func6(...)
    ::lbl_10::
    if tbl2.isProntToConsole ~= 1 then
        if tbl2.isProntToConsole ~= 2 then
            goto lbl_62
        end
    end

    if v4 then
        local v = {...}
        local str = ""
        if #v == 0 then
            v = {"nil"}
        end

        for k, value in pairs(v) do
            str = str .. tostring(value) .. "\t"
        end

        local tbl3 = {event = tbl2.event.C2S_LuaPrint, data = {msg = tbl.encode(str), type = 3}}
        local encode = v5.encode(tbl3)
        v4:send(encode .. "__debugger_k0204__")
    end

    ::lbl_62::
end

local function func8(arg1, arg2)
    local pos = string.find(arg1, arg2, 1)
    while pos do
        local v = string.find(arg1, arg2, pos + 1)
        if not v then
            break
        end

        pos = v
    end

    return pos
end

function resume2(arg1)
    local pos, v = string.find(arg1, "/%.%./")
    if pos then
        local str = string.sub(arg1, 1, pos - 1)
        local v2 = func8(str, "/")
        arg1 = string.sub(str, 1, v2 - 1) .. string.sub(arg1, v)
        arg1 = resume2(arg1)
        return arg1
    else
        return arg1
    end
end

local function func9(arg1)
    arg1 = arg1:gsub("\\", "/")
    arg1 = arg1:gsub("//", "/")
    arg1 = arg1:gsub("/./", "/")
    if arg1:find("@") == 1 then
        arg1 = arg1:sub(2)
    end

    if arg1:find("%./") == 1 then
        arg1 = arg1:sub(3)
    end

    arg1 = resume2(arg1)
    local len = string.len(arg1)
    local tbl = {}
    local str = ".txt.lua"
    local v = ".txt"
    local str2 = ".bytes"
    tbl[1] = ".lua"
    tbl[2] = str
    tbl[3] = v
    tbl[4] = str2
    table.sort(tbl, function(arg1, arg2)
        return string.len(arg1) > string.len(arg2)
    end)

    local tbl2 = {}
    for i, value in ipairs(tbl) do
        table.insert(tbl2, string.len(value))
    end

    local len2 = string.len(arg1)
    for i, value in ipairs(tbl) do
        if string.sub(arg1, len2 - tbl2[i] + 1) == value then
            arg1 = string.sub(arg1, 1, len2 - tbl2[i])
            break
        end
    end

    local v2 = func8(arg1, "/")
    local str3, str4
    if v2 then
        str3 = string.sub(arg1, v2 + 1)
        str4 = string.sub(arg1, 1, v2)
        arg1 = str4 .. str3
    else
        local v3 = func8(arg1, "%.")
        if not v3 then
            str3 = arg1
            str4 = ""
        else
            str4 = string.sub(arg1, 1, v3):gsub("%.", "/")
            str3 = string.sub(arg1, v3 + 1)
            arg1 = str4 .. str3
        end
    end

    return arg1, str4, str3
end

local function func10(arg1, arg2)
    arg1 = tostring(arg1)
    arg2 = tostring(arg2)
    if arg2 == "" then
        return false
    end

    local n = 0
    local tbl = {}
    for k, v in function()
        return string.find(arg1, arg2, n, true)
    end, nil, nil do
        table.insert(tbl, string.sub(arg1, n, k - 1))
        n = v + 1
    end

    table.insert(tbl, string.sub(arg1, n))
    return tbl
end

local function func11(arg1)
    arg1 = string.gsub(arg1, "^[ \t\n\r]+", "")
    return string.gsub(arg1, "[ \t\n\r]+$", "")
end

local function func12(name, arg2)
    local valueType = type(arg2)
    local encode = ""
    if valueType ~= "table" then
        local str = tostring(arg2)
        encode = tbl.encode(str)
    else
        if tbl2.isFoxGloryProject then
            encode = tbl.encode("table")
        else
            local ok, v = xpcall(function()
                encode = tostring(arg2)
                encode = tbl.encode(encode)
            end, function(arg1)
                encode = tbl.encode("table")
            end)
        end
    end

    return {name = name, valueType = valueType, valueStr = encode}
end

local function func13(arg1)
    local n = 1
    local locals = {}
    while true do
        local getlocal, v = debug.getlocal(arg1, n)
        if not getlocal then
            break
        end

        if getlocal ~= "(*temporary)" then
            locals[getlocal] = v
        end

        n = n + 1
    end

    local func = getinfo(arg1, "f").func
    local v = 1
    local ups = {}
    while func do
        local getupvalue, ENV = debug.getupvalue(func, v)
        if not getupvalue then
            break
        end

        if getupvalue == "_ENV" then
            ups._ENV_ = ENV
        else
            ups[getupvalue] = ENV
        end

        v = v + 1
    end

    return {locals = locals, ups = ups}
end

local function func14(arg1, event)
    local stack = {}
    local vars = {}
    local funcs = {}
    for i = arg1, 100 do
        local v = getinfo(i)
        local flag = true
        if i == arg1 then
            local source = v.source
            if source:find(tbl2.DebugLuaFie) then
                return
            end

            if source == "=[C]" then
                flag = false
            end
        end

        if not v then
            break
        end

        if flag then
            local src, v2, v3 = func9(v.source)
            local tbl = {
                src = src,
                scoreName = v.name,
                currentline = v.currentline,
                linedefined = v.linedefined,
                what = v.what,
                nameWhat = v.namewhat
            }

            local v4 = func13(i + 1)
            table.insert(stack, tbl)
            table.insert(vars, v4)
            table.insert(funcs, v.func)
        end

        if v.what == "main" then
            break
        end
    end

    local tbl = {stack = stack, vars = vars, funcs = funcs}
    local v = {stack = tbl.stack, vars = tbl.vars, funcs = tbl.funcs, event = event, funcsLength = #tbl.funcs}
    tbl2.currentTempFunc = v.funcs[1]
    return v
end

local func15

local function func16()
    if jit then
        if tbl2.debugLuaType ~= "jit" then
            local str = "\229\189\147\229\137\141luajit\231\137\136\230\156\172\228\184\186: " .. jit.version .. " \232\175\183\228\189\191\231\148\168LuaDebugjit \232\191\155\232\161\140\232\176\131\232\175\149!"
            print(str)
        end
    end

    if connect then
        local receive, v = connect:receive()
        if receive then
            local decode = v5.decode(receive)
            if decode.event == tbl2.event.S2C_SetBreakPoints then
                func15(decode.data)
            else
                if decode.event == tbl2.event.S2C_LoadLuaScript then
                    func(decode.data, false)
                end
            end
        end
    end
end

local function func17(arg1)
    if tbl2.splitFilePaths[arg1] then
        return tbl2.splitFilePaths[arg1]
    end

    local n = 0
    local splitFilePath = {}
    for k, v in function()
        return string.find(arg1, "/", n, true)
    end, nil, nil do
        local str = string.sub(arg1, n, k - 1)
        table.insert(splitFilePath, str)
        n = v + 1
    end

    local str = string.sub(arg1, n)
    table.insert(splitFilePath, str)
    tbl2.splitFilePaths[arg1] = splitFilePath
    return splitFilePath
end

function func15(arg1)
    local breakInfos = tbl2.breakInfos
    for i, v in ipairs(arg1) do
        v.fileName = string.lower(v.fileName)
        v.serverPath = string.lower(v.serverPath)
        local v2 = breakInfos[v.fileName]
        if not v2 then
            breakInfos[v.fileName] = {}
            v2 = breakInfos[v.fileName]
        end

        local tbl, lines
        if v.breakDatas then
            if #v.breakDatas ~= 0 then
                goto lbl_35
            end
        end

        v2[v.serverPath] = nil
        goto lbl_90
        ::lbl_35::
        tbl = v2[v.serverPath]
        if not tbl then
            tbl = {pathNames = func17(v.serverPath), hitCounts = {}}
            v2[v.serverPath] = tbl
        end

        lines = {}
        for j, breakData in ipairs(v.breakDatas) do
            lines[breakData.line] = breakData
            if breakData.hitCondition then
                if breakData.hitCondition ~= "" then
                    breakData.hitCondition = tonumber(breakData.hitCondition)
                end
            else
                breakData.hitCondition = 0
            end

            if not tbl.hitCounts[breakData.line] then
                tbl.hitCounts[breakData.line] = 0
            end
        end

        tbl.lines = lines
        for k, hitCount in pairs(tbl.hitCounts) do
            if not lines[k] then
                tbl.hitCounts[k] = nil
            end
        end

        ::lbl_90::
        local n = 0
        for k, value in pairs(v2) do
            n = n + 1
        end

        if n == 0 then
            breakInfos[v.fileName] = nil
        end
    end

    local flag = false
    for k, v in pairs(breakInfos) do
        flag = true
        break
    end

    if flag then
        if not tbl2.isHook then
            debug.sethook(func7, "lrc")
        end

        tbl2.isHook = true
    else
        if tbl2.isHook then
            debug.sethook()
        end

        tbl2.isHook = false
    end
end

local str = "192.168.1.102"
local n = 7003

local function func18(arg1, event, data)
    local encode = v5.encode({event = event, data = data})
    arg1:send(encode .. "__debugger_k0204__")
end

function debugger_conditionStr(arg1, arg2, callback)
    local ok, v = xpcall(function()
        local tbl = {}
        local locals = arg2[1].locals
        local ups = arg2[1].ups
        if ups then
            for k, v in pairs(ups) do
                tbl[k] = v
            end
        end

        if locals then
            for k, v in pairs(locals) do
                tbl[k] = v
            end
        end

        setmetatable(tbl, {__index = _G})
        local func = func3("return " .. arg1)
        func2(func, tbl)
        return func()
    end, function(arg1)
        print(arg1)
    end)

    if ok and v then
        callback()
    end
end

function func(arg1, arg2)
    local ok, v = xpcall(function()
        local luastr = arg1.luastr
        if arg2 then
            local tbl = {_G = _G}
            local n = arg1.frameId + 1
            local func = tbl2.currentDebuggerData.funcs[n]
            local var = tbl2.currentDebuggerData.vars[n]
            local locals = var.locals
            local ups = var.ups
            for k, v in pairs(ups) do
                tbl[k] = v
            end

            for k, v in pairs(locals) do
                tbl[k] = v
            end

            setmetatable(tbl, {__index = _G})
            local v = func3(luastr)
            func2(v, tbl)
            v()
        else
            func3(luastr)()
        end
    end, function(arg1)
        print(arg1)
    end)

    if ok then
        func18(v4, tbl2.event.C2S_LoadLuaScript, {msg = "\230\137\167\232\161\140\228\187\163\231\160\129\230\136\144\229\138\159"})
        if arg2 then
            func18(v4, tbl2.event.C2S_HITBreakPoint, tbl2.currentDebuggerData.stack)
        end
    else
        func18(v4, tbl2.event.C2S_LoadLuaScript, {msg = "\229\138\160\232\189\189\228\187\163\231\160\129\229\164\177\232\180\165"})
    end
end

local function func19(arg1)
    arg1 = string.lower(arg1)
    if tbl2.pathCachePaths[arg1] then
        tbl2.currentLineFile = tbl2.pathCachePaths[arg1]
        return tbl2.pathCachePaths[arg1]
    end

    local currentLineFile, v, pathCachePath = func9(arg1)
    tbl2.currentLineFile = currentLineFile
    tbl2.pathCachePaths[arg1] = pathCachePath
    return pathCachePath
end

local function func20(arg1, arg2)
    local userDataInfo = v3.getUserDataInfo(arg2)
    local v = {}
    if tolua then
        if tolua.getpeer then
            local getpeer = tolua.getpeer(arg2)
            if getpeer then
                for k, value in pairs(getpeer) do
                    local v2 = func12(k, value)
                    table.insert(v, v2)
                end
            end
        end
    end

    for i = 1, userDataInfo.Count do
        local v2 = userDataInfo[i - 1]
        local tbl2 = {
            name = v2.name,
            valueType = v2.valueType,
            valueStr = tbl.encode(v2.valueStr),
            isValue = v2.isValue,
            csharp = true
        }

        table.insert(v, tbl2)
    end

    return v
end

local function func21(arg1, arg2)
    local v
    local ok, v2 = xpcall(function()
        local func = func3("return " .. arg2)
        func2(func, arg1)
        v = func()
    end, function(arg1)
        print(arg1, "====>")
        v = nil
    end)

    return v
end

local func22

function func22(arg1, arg2, arg3)
    local str = ""
    for i = arg3, #arg2 do
        local v = arg2[i]
        if v == "[metatable]" then
        elseif i == arg3 then
            if string.find(v, "%.") then
                if str == "" then
                    i = arg3 + 1
                    arg1 = arg1[v]
                end

                if i >= #arg2 then
                    return arg3, arg1
                end

                return func22(arg1, arg2, i)
            else
                str = v
            end
        else
            if string.find(v, "%[") then
                str = str .. v
            else
                if type(v) == "string" then
                    str = str .. "[\"" .. v .. "\"]"
                else
                    str = str .. "[" .. v .. "]"
                end
            end
        end
    end

    local v = func21(arg1, str)
    return #arg2, v
end

local func23

function func23(arg1, arg2, arg3)
    local v = arg3[arg2]
    local cSharpValue = v3.getCSharpValue(arg1, v)
    if cSharpValue then
        if arg2 == #arg3 then
            return #arg3, cSharpValue
        else
            local v2, v4 = func23(cSharpValue, arg2 + 1, arg3)
            if not v4 then
                local tbl = {}
                for i = v2, #arg3 do
                    table.insert(tbl, arg3[i])
                end

                local debugger_searchVarByKeys2, v5 = debugger_searchVarByKeys(arg1, searckKeys, 1)
                return debugger_searchVarByKeys2, v5
            else
                return v2, v4
            end
        end
    else
        return arg2, cSharpValue
    end
end

local func24

function func24(arg1, arg2, arg3)
    local v, v2 = func22(arg1, arg3, 1)
    if not v3 then
        return v, v2
    end

    if v2 then
        if v == #arg2 then
            return v, v2
        else
            local count = #arg2
            local v4, v5 = func23(v2, v + 1, arg2)
            return v4, v5
        end
    else
        local tbl = {}
        for i = 1, #arg3 - 1 do
            table.insert(tbl, arg2[i])
        end

        if #tbl == 0 then
            return #arg2, nil
        end

        return func24(arg1, arg2, tbl)
    end
end

local func25

function func25(arg1, arg2, vars, arg4, variablesReference, debugSpeedIndex, arg7)
    for i, v in ipairs(arg7) do
        if arg2 == v then
            return vars
        end
    end

    table.insert(arg7, arg2)
    local v
    for k, value in pairs(arg2) do
        v = nil
        if type(k) == "string" then
            xpcall(function()
                v = arg1[k]
            end, function(arg1)
                v = nil
            end)

            if v == nil then
                xpcall(function()
                    if string.find(k, "__") then
                        v = value
                    end
                end, function(arg1)
                    v = nil
                end)
            end
        end

        if v then
            local v2 = func12(k, v)
            table.insert(vars, v2)
            if 10 < #vars then
                func18(arg4, tbl2.event.C2S_ReqVar, {
                    variablesReference = variablesReference,
                    debugSpeedIndex = debugSpeedIndex,
                    vars = vars,
                    isComplete = 0
                })

                vars = {}
            end
        end
    end

    local mt = getmetatable(arg2)
    if mt then
        local func = func25
        local v2 = arg1
        local v3 = mt
        local v4 = vars
        v = arg4
        return func(v2, v3, v4, v, variablesReference, debugSpeedIndex, arg7)
    else
        return vars
    end
end

local function func26(arg1, vars, arg3, variablesReference, debugSpeedIndex, arg6)
    if arg6 == "userdata" then
        if tolua then
            if tolua.getpeer then
                arg1 = tolua.getpeer(arg1)
            end
        else
            return vars
        end
    end

    if arg1 == nil then
        return vars
    end

    for k, v in pairs(arg1) do
        local v2 = func12(k, v)
        table.insert(vars, v2)
        if 10 < #vars then
            func18(arg3, tbl2.event.C2S_ReqVar, {
                variablesReference = variablesReference,
                debugSpeedIndex = debugSpeedIndex,
                vars = vars,
                isComplete = 0
            })

            vars = {}
        end
    end

    return vars
end

local function func27(arg1, arg2, variablesReference, debugSpeedIndex)
    local vars = {}
    local valueType = type(arg1)
    local mt
    if valueType == "userdata" then
        if tolua then
            if tolua.getpeer then
                mt = getmetatable(arg1)
                vars = func26(arg1, vars, arg2, variablesReference, debugSpeedIndex, valueType)
            end
        end

        if v3 then
            local v = func20(arg2, arg1, variablesReference, debugSpeedIndex)
            for i, value in ipairs(v) do
                if value.valueType == "System.Byte[]" then
                    if arg1[value.name] then
                        if type(arg1[value.name]) == "string" then
                            local tbl3 = {name = value.name, valueType = "string", valueStr = tbl.encode(arg1[value.name])}
                            table.insert(vars, tbl3)
                        end
                    end
                else
                    table.insert(vars, value)
                end

                if 10 < #vars then
                    func18(arg2, tbl2.event.C2S_ReqVar, {
                        variablesReference = variablesReference,
                        debugSpeedIndex = debugSpeedIndex,
                        vars = vars,
                        isComplete = 0
                    })

                    vars = {}
                end
            end

            mt = getmetatable(arg1)
        end
    else
        mt = getmetatable(arg1)
        vars = func26(arg1, vars, arg2, variablesReference, debugSpeedIndex, valueType)
    end

    if mt then
        vars = func25(arg1, mt, vars, arg2, variablesReference, debugSpeedIndex, {})
    end

    func18(arg2, tbl2.event.C2S_ReqVar, {
        variablesReference = variablesReference,
        debugSpeedIndex = debugSpeedIndex,
        vars = vars,
        isComplete = 1
    })
end

local function func28(arg1, arg2)
    local variablesReference = arg1.variablesReference
    local debugSpeedIndex = arg1.debugSpeedIndex
    xpcall(function()
        local frameId = arg1.frameId
        local v = arg1.type
        local keys = arg1.keys
        local locals
        if v == 1 then
            locals = tbl2.currentDebuggerData.vars[frameId + 1].locals
        elseif v == 2 then
            locals = tbl2.currentDebuggerData.vars[frameId + 1].ups
        elseif v == 3 then
            locals = _G
        end

        if #keys == 0 then
            func27(locals, arg2, variablesReference, debugSpeedIndex)
            return
        end

        local v2, str = func24(locals, keys, keys)
        if str then
            local valueType = type(str)
            if valueType == "table" or valueType == "userdata" then
                func27(str, arg2, variablesReference, debugSpeedIndex)
            else
                if valueType == "function" then
                    str = tostring(str)
                end

                func18(arg2, tbl2.event.C2S_ReqVar, {
                    variablesReference = variablesReference,
                    debugSpeedIndex = debugSpeedIndex,
                    vars = tbl.encode(str),
                    isComplete = 1,
                    varType = valueType
                })
            end
        else
            func18(arg2, tbl2.event.C2S_ReqVar, {
                variablesReference = variablesReference,
                debugSpeedIndex = debugSpeedIndex,
                vars = {},
                isComplete = 1,
                varType = "nil"
            })
        end
    end, function(arg1)
        func18(arg2, tbl2.event.C2S_ReqVar, {
            variablesReference = variablesReference,
            debugSpeedIndex = debugSpeedIndex,
            vars = {
                {
                    name = "error",
                    valueType = "string",
                    valueStr = tbl.encode("\230\151\160\230\179\149\232\142\183\229\143\150\229\177\158\230\128\167\229\128\188:" .. arg1 .. "->" .. debug.traceback("", 2)),
                    isValue = false
                }
            },
            isComplete = 1
        })
    end)
end

local function func29()
    tbl2.Run = false
    tbl2.StepIn = false
    tbl2.StepNext = false
    tbl2.StepOut = false
    tbl2.StepNextLevel = 0
end

local create = coroutine.create(function(arg1)
    arg1 = v4
    local data
    while true do
        local receive, v = arg1:receive()
        if v == "closed" then
            debug.sethook()
            coroutine.yield()
        end

        if receive then
            local decode = v5.decode(receive)
            local event = decode.event
            data = decode.data
            if event == tbl2.event.S2C_DebugClose then
                debug.sethook()
                coroutine.yield()
            else
                if event == tbl2.event.S2C_SetBreakPoints then
                    xpcall(function()
                        func15(data)
                    end, function(arg1)
                        print(arg1)
                    end)
                else
                    if event == tbl2.event.S2C_RUN then
                        tbl2.runTimeType = data.runTimeType
                        tbl2.isProntToConsole = data.isProntToConsole
                        tbl2.isFoxGloryProject = data.isFoxGloryProject
                        func29()
                        tbl2.Run = true
                        local yield = coroutine.yield()
                        tbl2.currentDebuggerData = yield
                        func18(arg1, yield.event, {stack = yield.stack})
                    else
                        if event == tbl2.event.S2C_ReqVar then
                            func28(data, arg1)
                        else
                            if event == tbl2.event.S2C_NextRequest then
                                func29()
                                tbl2.StepNext = true
                                tbl2.StepNextLevel = 0
                                local yield = coroutine.yield()
                                tbl2.currentDebuggerData = yield
                                func18(arg1, yield.event, {stack = yield.stack})
                            else
                                if event == tbl2.event.S2C_StepInRequest then
                                    func29()
                                    tbl2.StepIn = true
                                    local yield = coroutine.yield()
                                    tbl2.currentDebuggerData = yield
                                    func18(arg1, yield.event, {stack = yield.stack, eventType = yield.eventType})
                                else
                                    if event == tbl2.event.S2C_StepOutRequest then
                                        func29()
                                        tbl2.StepOut = true
                                        local yield = coroutine.yield()
                                        tbl2.currentDebuggerData = yield
                                        func18(arg1, yield.event, {stack = yield.stack, eventType = yield.eventType})
                                    else
                                        if event == tbl2.event.S2C_LoadLuaScript then
                                            func(data, true)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end)

function func7(arg1, arg2)
    if not tbl2.isHook then
        return
    end

    if tbl2.Run then
        if arg1 == "line" then
            local flag = false
            for k, breakInfo in pairs(tbl2.breakInfos) do
                for key, v in pairs(breakInfo) do
                    if v.lines then
                        if v.lines[arg2] then
                            flag = true
                            break
                        end
                    end
                end

                if flag then
                    break
                end
            end

            if not flag then
                return
            end
        else
            tbl2.currentFileName = nil
            tbl2.currentTempFunc = nil
            return
        end
    end

    if tbl2.StepOut then
        if arg1 == "line" or arg1 == "call" then
            return
        end

        local func = getinfo(2, "f").func
        if tbl2.currentDebuggerData.funcsLength == 1 then
            func29()
            tbl2.Run = true
        else
            if tbl2.currentDebuggerData.funcs[2] == func then
                local v = resume
                local v2 = create
                local v3 = func14(3, tbl2.event.C2S_StepInResponse)
                v(v2, v3)
            end
        end

        return
    end

    if arg1 == "call" then
        if not tbl2.Run then
            tbl2.StepNextLevel = tbl2.StepNextLevel + 1
        end

        local source = getinfo(2, "S").source
        if source:find(tbl2.DebugLuaFie) or source == "=[C]" then
            return
        end

        tbl2.currentFileName = func19(source)
    elseif arg1 == "return" or arg1 == "tail return" then
        if not tbl2.Run then
            tbl2.StepNextLevel = tbl2.StepNextLevel - 1
        end

        tbl2.currentFileName = nil
    elseif arg1 == "line" then
        local flag = false
        local v
        if not tbl2.currentFileName then
            v = getinfo(2, "S")
            local source = v.source
            if source ~= "=[C]" then
                if not source:find(tbl2.DebugLuaFie) then
                    goto lbl_138
                end
            end

            do
                return
            end

            ::lbl_138::
            tbl2.currentFileName = func19(source)
        end

        local currentFileName = tbl2.currentFileName
        local breakInfo = tbl2.breakInfos[currentFileName]
        local v3
        if breakInfo then
            local flag2 = false
            for k, value in pairs(breakInfo) do
                local lines = value.lines
                if lines then
                    if lines[arg2] then
                        flag2 = true
                        break
                    end
                end
            end

            if flag2 then
                if not v then
                    local v4 = getinfo(2)
                end

                local v4 = func17(tbl2.currentLineFile)
                local tbl = {}
                local hitCounts
                for k, value in pairs(breakInfo) do
                    local lines = value.lines
                    local pathNames = value.pathNames
                    hitCounts = value.hitCounts
                    if lines then
                        if lines[arg2] then
                            v3 = lines[arg2]
                            tbl[k] = 0
                            local count = #v4
                            local n = #pathNames
                            while true do
                                if pathNames[n] ~= v4[count] then
                                    break
                                end

                                tbl[k] = tbl[k] + 1
                                n = n - 1
                                count = count - 1
                                if n <= 0 or count <= 0 then
                                    break
                                end
                            end
                        end
                    else
                        v3 = nil
                    end
                end

                local str = ""
                local n = 0
                for k, value in pairs(tbl) do
                    if value > n then
                        n = value
                        str = k
                    end
                end

                local count = #v4
                if (count == 1 or 1 < count and 1 < n) and str ~= "" then
                    local hitCondition = v3.hitCondition
                    local n2 = hitCounts[v3.line] + 1
                    hitCounts[v3.line] = n2
                    if hitCondition <= n2 then
                        flag = true
                    end
                end
            end
        end

        if tbl2.StepIn then
            local v4 = func14(3, tbl2.event.C2S_NextResponse)
            if v4 then
                tbl2.currentTempFunc = v4.funcs[1]
                resume(create, v4)
                return
            end
        end

        if tbl2.StepNext then
            if tbl2.StepNextLevel <= 0 then
                local v4 = func14(3, tbl2.event.C2S_NextResponse)
                if v4 then
                    tbl2.currentTempFunc = v4.funcs[1]
                    resume(create, v4)
                    return
                end
            end
        end

        if flag then
            local v4 = func14(3, tbl2.event.C2S_HITBreakPoint)
            if v3 then
                if v3.condition then
                    debugger_conditionStr(v3.condition, v4.vars, function()
                        resume(create, v4)
                    end)
                end
            else
                resume(create, v4)
            end
        end
    end
end

local function func30()
    resume(create, func14(4, tbl2.event.C2S_HITBreakPoint))
end

local function func31()
    local v, v2, debugLuaFie = func9(getinfo(1).source)
    tbl2.DebugLuaFie = debugLuaFie
    local v3 = func4()
    print(str)
    print(n)
    local connect2 = v3.connect(str, n)
    v4 = connect2
    if connect2 then
        connect = func4().connect(str, n)
        if connect then
            connect:settimeout(0)
            func18(connect, tbl2.event.C2S_SetSocketName, {name = "breakPointSocket"})
            func18(connect2, tbl2.event.C2S_SetSocketName, {name = "mainSocket", version = tbl2.version})
            xpcall(function()
                debug.sethook(func7, "lrc")
            end, function(arg1)
                print("error:", arg1)
            end)

            if jit then
                if tbl2.debugLuaType ~= "jit" then
                    print("error======================================================")
                    local str2 = "\229\189\147\229\137\141luajit\231\137\136\230\156\172\228\184\186: " .. jit.version .. " \232\175\183\228\189\191\231\148\168LuaDebugjit \232\191\155\232\161\140\232\176\131\232\175\149!"
                    print(str2)
                end
            end

            resume(create, connect2)
        end
    end
end

function StartDebug(arg1, arg2)
    if not arg1 then
        print("error host nil")
    end

    if not arg2 then
        print("error prot nil")
    end

    if type(arg1) ~= "string" then
        print("error host not string")
    end

    if type(arg2) ~= "number" then
        print("error host not number")
    end

    str = arg1
    n = arg2
    xpcall(func31, function(arg1)
        print(arg1)
    end)

    return func16, func30
end

local v7 = string
local code = {}
local str2 = "B"
local str3 = "C"
local str4 = "D"
local str5 = "E"
local str6 = "F"
local str7 = "G"
local str8 = "H"
local str9 = "I"
local str10 = "J"
local str11 = "K"
local str12 = "L"
local str13 = "M"
local str14 = "N"
local str15 = "O"
local str16 = "P"
local str17 = "Q"
local str18 = "R"
local str19 = "S"
local str20 = "T"
local str21 = "U"
local str22 = "V"
local str23 = "W"
local str24 = "X"
local str25 = "Y"
local str26 = "Z"
local str27 = "a"
local str28 = "b"
local str29 = "c"
local str30 = "d"
local str31 = "e"
local str32 = "f"
local str33 = "g"
local str34 = "h"
local str35 = "i"
local str36 = "j"
local str37 = "k"
local str38 = "l"
local str39 = "m"
local str40 = "n"
local str41 = "o"
local str42 = "p"
local str43 = "q"
local str44 = "r"
local str45 = "s"
local str46 = "t"
local str47 = "u"
local str48 = "v"
local str49 = "w"
local str50 = "x"
code[1] = "A"
code[2] = str2
code[3] = str3
code[4] = str4
code[5] = str5
code[6] = str6
code[7] = str7
code[8] = str8
code[9] = str9
code[10] = str10
code[11] = str11
code[12] = str12
code[13] = str13
code[14] = str14
code[15] = str15
code[16] = str16
code[17] = str17
code[18] = str18
code[19] = str19
code[20] = str20
code[21] = str21
code[22] = str22
code[23] = str23
code[24] = str24
code[25] = str25
code[26] = str26
code[27] = str27
code[28] = str28
code[29] = str29
code[30] = str30
code[31] = str31
code[32] = str32
code[33] = str33
code[34] = str34
code[35] = str35
code[36] = str36
code[37] = str37
code[38] = str38
code[39] = str39
code[40] = str40
code[41] = str41
code[42] = str42
code[43] = str43
code[44] = str44
code[45] = str45
code[46] = str46
code[47] = str47
code[48] = str48
code[49] = str49
code[50] = str50
local str51 = "z"
local str52 = "0"
local str53 = "1"
local str54 = "2"
local str55 = "3"
local str56 = "4"
local str57 = "5"
local str58 = "6"
local str59 = "7"
local str60 = "8"
local str61 = "9"
local str62 = "+"
local str63 = "/"
code[51] = "y"
code[52] = str51
code[53] = str52
code[54] = str53
code[55] = str54
code[56] = str55
code[57] = str56
code[58] = str57
code[59] = str58
code[60] = str59
code[61] = str60
code[62] = str61
code[63] = str62
code[64] = str63
tbl.__code = code
tbl.__decode = {}

for k, value in pairs(tbl.__code) do
    tbl.__decode[v7.byte(value, 1)] = k - 1
end

function tbl.encode(arg1)
    local len = v7.len(arg1)
    local n = len % 3
    local v = len - n
    local tbl2 = {}
    local n2 = 1
    for i = 1, v, 3 do
        local b = v7.byte(arg1, i)
        local b2 = v7.byte(arg1, i + 1)
        local b3 = v7.byte(arg1, i + 2)
        local n3 = b * 65536 + b2 * 256 + b3
        for j = 1, 4 do
            local n4 = math.floor(n3 / 2 ^ ((4 - j) * 6)) % 64 + 1
            tbl2[n2] = tbl.__code[n4]
            n2 = n2 + 1
        end
    end

    if n == 1 then
        tbl.__left1(tbl2, n2, arg1, v)
    elseif n == 2 then
        tbl.__left2(tbl2, n2, arg1, v)
    end

    return table.concat(tbl2)
end

function tbl:__left2(arg1, arg2, arg3)
    local n = v7.byte(arg2, arg3 + 1) * 1024 + v7.byte(arg2, arg3 + 2) * 4
    local v = math.floor(n / 4096) % 64 + 1
    self[arg1] = tbl.__code[v]
    local n2 = math.floor(n / 64) % 64 + 1
    self[arg1 + 1] = tbl.__code[n2]
    local n3 = n % 64 + 1
    self[arg1 + 2] = tbl.__code[n3]
    self[arg1 + 3] = "="
end

function tbl:__left1(arg1, arg2, arg3)
    local n = v7.byte(arg2, arg3 + 1) * 16
    local v = math.floor(n / 64) % 64 + 1
    self[arg1] = tbl.__code[v]
    local n2 = n % 64 + 1
    self[arg1 + 1] = tbl.__code[n2]
    self[arg1 + 2] = "="
    self[arg1 + 3] = "="
end

function tbl.decode(arg1)
    local len = v7.len(arg1)
    local n = 0
    if v7.sub(arg1, len - 1) == "==" then
        n = 2
        len = len - 4
    else
        if v7.sub(arg1, len) == "=" then
            n = 1
            len = len - 4
        end
    end

    local v = {}
    local n2 = 1
    local decode = tbl.__decode
    for i = 1, len, 4 do
        local v2 = decode[v7.byte(arg1, i)]
        local v3 = decode[v7.byte(arg1, i + 1)]
        local v4 = decode[v7.byte(arg1, i + 2)]
        local v5 = decode[v7.byte(arg1, i + 3)]
        local n3 = v2 * 262144 + v3 * 4096 + v4 * 64 + v5
        local str = v7.char(n3 % 256)
        local n4 = math.floor(n3 / 256)
        local str2 = v7.char(n4 % 256)
        local n5 = math.floor(n4 / 256)
        v[n2] = v7.char(n5 % 256)
        v[n2 + 1] = str2
        v[n2 + 2] = str
        n2 = n2 + 3
    end

    if n == 1 then
        tbl.__decodeLeft1(v, n2, arg1, len)
    elseif n == 2 then
        tbl.__decodeLeft2(v, n2, arg1, len)
    end

    return table.concat(v)
end

function tbl:__decodeLeft1(arg1, arg2, arg3)
    local decode = tbl.__decode
    local v = decode[v7.byte(arg2, arg3 + 1)]
    local v2 = decode[v7.byte(arg2, arg3 + 2)]
    local v3 = decode[v7.byte(arg2, arg3 + 3)]
    local n = v * 4096 + v2 * 64 + v3
    local n2 = math.floor(n / 1024) % 256
    local n3 = math.floor(n / 4) % 256
    self[arg1] = v7.char(n2)
    self[arg1 + 1] = v7.char(n3)
end

function tbl:__decodeLeft2(arg1, arg2, arg3)
    local decode = tbl.__decode
    local v = decode[v7.byte(arg2, arg3 + 1)]
    local v2 = decode[v7.byte(arg2, arg3 + 2)]
    local n = v * 64 + v2
    local n2 = math.floor(n / 16)
    self[arg1] = v7.char(n2)
end

return StartDebug
