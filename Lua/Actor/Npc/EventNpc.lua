require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local TempNPC = class("TempNPC", NpcActorProxy)
TempNPC.defaultAlias = "TempNPC"
function TempNPC:Start() end
return TempNPC
