require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Fatuus = class("Fatuus", NpcActorProxy)
Fatuus.defaultAlias = "Fatuus"
function Fatuus:Start() end
return Fatuus
