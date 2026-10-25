require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Civil = class("Civil", NpcActorProxy)
Civil.defaultAlias = "Civil"
function Civil:Start() end
return Civil
