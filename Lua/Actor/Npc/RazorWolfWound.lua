require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local RazorWolfWound = class("RazorWolfWound", NpcActorProxy)
RazorWolfWound.defaultAlias = "RazorWolfWound"

function RazorWolfWound:Start()
    print("start!RazorWolfWound")
end

function RazorWolfWound:OnDestroy()
    print("RazorWolfWound " .. self.configID .. " destroied")
end

return RazorWolfWound
