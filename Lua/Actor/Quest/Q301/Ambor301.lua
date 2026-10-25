require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Ambor301 = class("Ambor301", NpcActorProxy)
Ambor301.defaultAlias = "Ambor"

function Ambor301:Start()
    print("start!Ambor301")
end

function Ambor301:OnDestroy()
    print("ambor " .. self.configID .. " destroied")
end

return Ambor301
