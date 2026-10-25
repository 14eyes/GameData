require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Qin = class("Qin", NpcActorProxy)
Qin.defaultAlias = "Qin"

function Qin:Start()
    print("start!Qin")
end

function Qin:OnDestroy()
    print("Qin destroied")
end

return Qin
