require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local GuardNPC = class("GuardNPC", NpcActorProxy)
GuardNPC.defaultAlias = "GuardNPC"
function GuardNPC:Start() end
return GuardNPC
