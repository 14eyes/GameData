require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local SneakBlackDoor = class("SneakBlackDoor", NpcActorProxy)
SneakBlackDoor.defaultAlias = "SneakBlackDoor"
function SneakBlackDoor:Start() end
return SneakBlackDoor
