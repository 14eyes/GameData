require("Base/Class")

local BaseActorMode = class("BaseActorMode", nil)

function BaseActorMode:SwitchMode(arg1)
    local actorInternal = actorMgr:GetActorInternal(arg1)
    if actorInternal == nil then
        return
    end

    local func = self[arg1]
    if func == nil then
        return
    end

    func(actorInternal)
end

return BaseActorMode
