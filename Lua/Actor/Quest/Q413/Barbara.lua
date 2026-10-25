require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Barbara = class("Barbara", NpcActorProxy)
Barbara.defaultAlias = "Barbara"

function Barbara:Start()
    print("start!Barbara")
end

function Barbara:OnDestroy()
    print("Barbara destroied")
end

return Barbara
