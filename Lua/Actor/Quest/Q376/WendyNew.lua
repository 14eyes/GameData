require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local WendyNew = class("WendyNew", NpcActorProxy)
WendyNew.defaultAlias = "WendyNew"
function WendyNew:Start() end
return WendyNew
