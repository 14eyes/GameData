require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local SneakRedDoor = class("SneakRedDoor", NpcActorProxy)
SneakRedDoor.defaultAlias = "SneakRedDoor"
function SneakRedDoor:Start() end
return SneakRedDoor
