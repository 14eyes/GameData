require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Lisa = class("Lisa", NpcActorProxy)
Lisa.defaultAlias = "Lisa"

function Lisa:Start()
    print("start!Lisa")
end

function Lisa:OnDestroy()
    print("Lisa destroied")
end

return Lisa
