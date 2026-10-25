require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local SneakJudge = class("SneakJudge", NpcActorProxy)
SneakJudge.defaultAlias = "SneakJudge"
function SneakJudge:Start() end
return SneakJudge
