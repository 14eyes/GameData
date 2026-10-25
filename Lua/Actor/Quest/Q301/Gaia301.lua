require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Gaia301 = class("Gaia301", NpcActorProxy)
Gaia301.defaultAlias = "Gaia"
function Gaia301:Start() end
return Gaia301
