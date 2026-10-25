if not _G.NG_HSOD_DEBUG then
    return function(...)
        return ""
    end
end

local orig_pairs

if _G._orig_pairs ~= nil then
    orig_pairs = _G._orig_pairs
else
    orig_pairs = _G.pairs
end

local Inspect = {}
Inspect._VERSION = "inspect.lua 3.0.0"
Inspect._URL = "http://github.com/kikito/inspect.lua"
Inspect._DESCRIPTION = "human-readable representations of tables"
Inspect._LICENSE = "    MIT LICENSE\n\n    Copyright (c) 2013 Enrique Garc\195\173a Cota\n\n    Permission is hereby granted, free of charge, to any person obtaining a\n    copy of this software and associated documentation files (the\n    \"Software\"), to deal in the Software without restriction, including\n    without limitation the rights to use, copy, modify, merge, publish,\n    distribute, sublicense, and/or sell copies of the Software, and to\n    permit persons to whom the Software is furnished to do so, subject to\n    the following conditions:\n\n    The above copyright notice and this permission notice shall be included\n    in all copies or substantial portions of the Software.\n\n    THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS\n    OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF\n    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.\n    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY\n    CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,\n    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE\n    SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\n  "

Inspect.KEY = setmetatable({}, {
    __tostring = function()
        return "inspect.KEY"
    end
})

Inspect.METATABLE = setmetatable({}, {
    __tostring = function()
        return "inspect.METATABLE"
    end
})

local function func(arg1)
    if arg1:match("\"") then
        if not arg1:match("'") then
            return "'" .. arg1 .. "'"
        end
    end

    return "\"" .. arg1:gsub("\"", "\\\"") .. "\""
end

local tbl = {}
tbl["\a"] = "\\a"
tbl["\b"] = "\\b"
tbl["\f"] = "\\f"
tbl["\n"] = "\\n"
tbl["\r"] = "\\r"
tbl["\t"] = "\\t"
tbl["\v"] = "\\v"

local function v(arg1)
    local str = arg1:gsub("\\", "\\\\"):gsub("(%c)", tbl)
    return str
end

local function func2(arg1)
    local valueType = type(arg1)
    local match = arg1.match
    return match == "string" and match
end

local function func3(arg1, arg2)
    return type(arg1) == "number" and 1 <= arg1 and arg1 <= arg2
end

local tbl2 = {}
tbl2.number = 1
tbl2.boolean = 2
tbl2.string = 3
tbl2.table = 4
tbl2["function"] = 5
tbl2.userdata = 6
tbl2.thread = 7

local function func4(arg1, arg2)
    local valueType = type(arg1)
    local v = type(arg2)
    if valueType == v and (valueType == "string" or valueType == "number") then
        return arg1 < arg2
    end

    local v2 = tbl2[valueType]
    local v3 = tbl2[v]
    if v2 and v3 then
        return tbl2[valueType] < tbl2[v]
    elseif v2 then
        return true
    elseif v3 then
        return false
    end

    return valueType < v
end

local function func5(arg1)
    local tbl = {}
    local count = #arg1
    for i, j in orig_pairs(arg1) do
        if not func3(i, count) then
            table.insert(tbl, i)
        end
    end

    table.sort(tbl, func4)
    return tbl
end

local function func6(arg1, arg2)
    local valueType = type(arg2)
    local v = rawget
    local v2 = v == "table" and v
    local str
    if type(v2) == "function" then
        local ok, v3 = pcall(v2, arg1)
        str = v3
        if not ok or not str then
            str = "error: " .. tostring(str)
        end
    end

    if type(str) == "string" then
        if 0 < #str then
            return str
        end
    end
end

local tbl3 = {}

function tbl3.__index(arg1, arg2)
    rawset(arg1, arg2, 0)
    return 0
end

local tbl4 = {}

local function index(arg1, arg2)
    local obj = setmetatable({}, {__mode = "kv"})
    rawset(arg1, arg2, obj)
    return obj
end

tbl4.__index = index

function index(arg1, arg2)
    if not arg2 then
        arg2 = setmetatable({}, {__mode = "k"})
    end

    if type(arg1) == "table" then
        if not arg2[arg1] then
            arg2[arg1] = 1
            for i, j in orig_pairs(arg1) do
                index(i, arg2)
                index(j, arg2)
            end

            index(getmetatable(arg1), arg2)
        else
            arg2[arg1] = arg2[arg1] + 1
        end
    end

    return arg2
end

local function func7(arg1)
    local tbl = {}
    local count = #arg1
    for i = 1, count do
        tbl[i] = arg1[i]
    end

    return tbl, count
end

local function func8(arg1, ...)
    local tbl = {...}
    local v, v2 = func7(arg1)
    for i = 1, #tbl do
        v[v2 + i] = tbl[i]
    end

    return v
end

local func9

function func9(callback, arg2, arg3)
    if arg2 == nil then
        return nil
    end

    local v = callback(arg2, arg3)
    if type(v) == "table" then
        local tbl = {}
        for i, j in orig_pairs(v) do
            local v2 = func9(callback, i, func8(arg3, i, Inspect.KEY))
            if v2 ~= nil then
                tbl[v2] = func9(callback, j, func8(arg3, v2))
            end
        end

        local v2 = func9(callback, getmetatable(v), func8(arg3, Inspect.METATABLE))
        setmetatable(tbl, v2)
        v = tbl
    end

    return v
end

local index2 = {}
local tbl5 = {}
tbl5.__index = index2

function index2:puts(...)
    local tbl = {...}
    local buffer = self.buffer
    local count = #buffer
    for i = 1, #tbl do
        count = count + 1
        buffer[count] = tostring(tbl[i])
    end
end

function index2:down(callback)
    self.level = self.level + 1
    callback()
    self.level = self.level - 1
end

function index2:tabify()
    self:puts(self.newline, string.rep(self.indent, self.level))
end

function index2:alreadyVisited(arg1)
    return self.ids[type(arg1)][arg1] ~= nil
end

function index2:getId(arg1)
    local valueType = type(arg1)
    local maxId = self.ids[valueType][arg1]
    if not maxId then
        maxId = self.maxIds[valueType] + 1
        self.maxIds[valueType] = maxId
        self.ids[valueType][arg1] = maxId
    end

    return maxId
end

function index2:putKey(arg1)
    if func2(arg1) then
        return self:puts(arg1)
    end

    self:puts("[")
    self:putValue(arg1)
    self:puts("]")
end

function index2:putTable(key)
    if key ~= Inspect.KEY then
        if key ~= Inspect.METATABLE then
            goto lbl_13
        end
    end

    self.puts(self, tostring(key))
    goto lbl_78
    ::lbl_13::
    if self.alreadyVisited(self, key) then
        self.puts(self, "<table ", self.getId(self, key), ">")
    else
        if self.level >= self.depth then
            self.puts(self, "{...}")
        else
            if 1 < self.tableAppearances[key] then
                self.puts(self, "<", self.getId(self, key), ">")
            end

            local v2 = func5(key)
            local count = #key
            local mt = getmetatable(key)
            local v3 = func6(key, mt)
            self.tabify(self)
            self.puts(self, "{")
            self.down(self, function()
                if v3 then
                    self:puts(" -- ", v(v3))
                    if 1 <= count then
                        self:tabify()
                    end
                end

                local n = 0
                for i = 1, count do
                    if 0 < n then
                        self:puts(",")
                    end

                    self:putValue(key[i])
                    n = n + 1
                end

                for i, value in ipairs(v2) do
                    if 0 < n then
                        self:puts(",")
                    end

                    self:tabify()
                    self:putKey(value)
                    self:puts(" = ")
                    self:putValue(key[value])
                    n = n + 1
                end

                if mt then
                    if 0 < n then
                        self:puts(",")
                    end

                    self:tabify()
                    self:puts("<metatable> = ")
                    self:putValue(mt)
                end
            end)

            if 0 < #v2 or mt then
                self.tabify(self)
            elseif 0 < count then
            end

            self.puts(self, "}")
        end
    end

    ::lbl_78::
end

function index2:putValue(arg1)
    local valueType = type(arg1)
    if valueType == "string" then
        self:puts(func(v(arg1)))
    elseif valueType == "number" or valueType == "boolean" or valueType == "nil" then
        self:puts(tostring(arg1))
    elseif valueType == "table" then
        self:putTable(arg1)
    else
        self:puts("<", valueType, " ", self:getId(arg1), ">")
    end
end

function Inspect:inspect(arg1)
    if not arg1 then
        arg1 = {}
    end

    local depth = arg1.depth
    if not depth then
        depth = math.huge
    end

    local newline = arg1.newline
    if not newline then
        newline = "\n"
    end

    local indent = arg1.indent
    if not indent then
        indent = "    "
    end

    local process = arg1.process
    if process then
        self = func9(process, self, {})
    end

    local obj = setmetatable({
        depth = depth,
        buffer = {},
        level = 0,
        ids = setmetatable({}, tbl4),
        maxIds = setmetatable({}, tbl3),
        newline = newline,
        indent = indent,
        tableAppearances = index(self)
    }, tbl5)

    obj:putValue(self)
    return table.concat(obj.buffer)
end

setmetatable(Inspect, {
    __call = function(arg1, ...)
        return Inspect.inspect(...)
    end
})

return Inspect
