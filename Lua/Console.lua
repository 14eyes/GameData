local Console = {}
local func

if loadstringex then
    func = loadstringex
else
    if loadstring then
        func = loadstring
    else
        func = load
    end
end

socketMgr = singletonManager:GetSingletonInstance("MoleMole.SocketManager")

function Console:onSocketConnected()
    self.socketCR = nil
    socketMgr:SendString("connected\r\n>")
end

function Console:onSocketData(arg1)
    if not self.socketCR then
        self.socketCR = coroutine.create(self.socketCrFunc)
    end

    local resume, v = coroutine.resume(self.socketCR, arg1)
    info = v
    ret = resume
    if not ret then
        socketMgr:SendString("onSocketData err " .. info)
    end
end

function Console:socketCrFunc()
    local flag = false
    local index = {}
    local locals = {}
    local str = "print(inspect(%s, {['depth']=1}))"
    setmetatable(locals, {
        __index = index,
        __newindex = function(arg1, arg2, arg3)
            index[arg2] = arg3
        end,
        __mode = "kv"
    })

    setmetatable(index, {__index = setmetatable({}, {__index = _G}), __mode = "kv"})
    index.__locals = locals
    index.inspect = require("Base/Inspect")
    local sub, this
    while true do
        if 1 < #self then
            local byte = string.byte
            local v = self
            sub = 1
            if byte(v, sub, 2) == 61 then
                local format = string.format
                local v2 = str
                sub = string
                sub = sub.sub
                local this2 = self
                this = 2
                local v3, v4, v5, v6, v7
                sub, v3, this, v4, v5, v6, v7 = sub(this2, this)
                self = format(v2, sub, v3, this, v4, v5, v6, v7)
            end
        end

        local v, v7 = func(self)
        if not v then
            sub = string
            sub = sub.format
            local v8 = str
            this = self
            sub = sub(v8, this)
            local func2 = func
            this = sub
            if func2(this) then
                self = sub
            else
                flag = true
                local v9 = socketMgr
                this = v9
                v9.SendString(this, v7 .. "\r\n")
            end
        end

        if not flag then
            sub = self
            sub = sub .. [[
            local __debug_idx = 1
            while true do
                local name, value = debug.getlocal(1, __debug_idx)
                if not name then break end
                rawset(__locals, name, value)
                __debug_idx = __debug_idx + 1
            end
            ]]

            local print = _G.print
            function this(arg1)
                local traceback = debug.traceback(arg1, 1)
                Console.ConsolePrint(traceback)
                return traceback
            end

            rawset(_G, "print", Console.ConsolePrint)
            xpcall(function()
                xpcall(setfenv(func(sub), locals), this)
            end, this)

            rawset(_G, "print", print)
        end

        sub = socketMgr
        local v9 = sub
        sub = sub.SendString
        this = ">"
        sub(v9, this)
        sub = coroutine
        sub = sub.yield
        sub = sub()
        self = sub
        flag = false
    end
end

function Console.ConsolePrint(...)
    local str = ""
    for i, v in ipairs({...}) do
        str = str .. tostring(v)
    end

    local v = string.gsub(str, "\n", "\r\n")
    socketMgr:SendString(v .. "\r\n")
end

return Console
