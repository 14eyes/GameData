require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Diluc = class("Diluc", NpcActorProxy)
Diluc.defaultAlias = "Diluc"
function Diluc:Start() end
return Diluc
