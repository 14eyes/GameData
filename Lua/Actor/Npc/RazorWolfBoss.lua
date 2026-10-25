require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local RazorWolfBoss = class("RazorWolfBoss", NpcActorProxy)
RazorWolfBoss.defaultAlias = "RazorWolfBoss"

function RazorWolfBoss:Start()
    print("start!RazorWolfBoss")
end

function RazorWolfBoss:OnDestroy()
    print("RazorWolfBoss " .. self.configID .. " destroied")
end

return RazorWolfBoss
