require("Actor/ActorCommon")
local SQ408 = require("Actor/Quest/SQ408")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local RiverRunJudge = class("RiverRunJudge", NpcActorProxy)
RiverRunJudge.defaultAlias = "RiverRunJudge"
local judgeData = require("Actor/Quest/Q408/Q408Config").JudgeData

function RiverRunJudge:PreGetAlias()
    return judgeData.Judge
end

function RiverRunJudge:Start()
    print("start!RiverRunJudge")
end

function RiverRunJudge:OnDestroy()
    print("RiverRunJudge " .. judgeData.JudgeID .. " destroied")
end

return RiverRunJudge
