inspect = require("Base/Inspect")
util = require("Base/util")
M = require("Base/uMath")
local Common = {}
Common.lua_manager = singletonManager:GetSingletonInstance("MoleMole.LuaManager")

Common.do_immediate = util.async_to_sync(function(arg1, arg2)
    Common.lua_manager:ImmediateCallback(arg1, arg2)
end)

Common.yield_return = util.async_to_sync(function(arg1, arg2)
    Common.lua_manager:YieldCallback(arg1, arg2)
end)

function Common:coroutine_call(arg1)
    local coroutineCall = Common.lua_manager:CoroutineCall(self, arg1)
    return coroutineCall
end

function Common:coroutine_stop()
    Common.lua_manager:CoroutineStop(self)
end

return Common
