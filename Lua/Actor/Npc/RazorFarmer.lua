require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local RazorFarmer = class("RazorFarmer", NpcActorProxy)
RazorFarmer.defaultAlias = "RazorFarmer"

function RazorFarmer:Start()
    print("start!RazorFarmer")
end

function RazorFarmer:OnDestroy()
    print("RazorFarmer " .. self.configID .. " destroied")
end

return RazorFarmer
