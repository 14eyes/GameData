require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local AutoChessJudge = class("AutoChessJudge", NpcActorProxy)
AutoChessJudge.defaultAlias = "AutoChessJudge"
function AutoChessJudge:Start() end
return AutoChessJudge
