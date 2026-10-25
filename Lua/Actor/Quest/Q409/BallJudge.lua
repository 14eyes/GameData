require("Actor/ActorCommon")
local SQ409 = require("Actor/Quest/SQ409")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local BallJudge = class("BallJudge", NpcActorProxy)
BallJudge.defaultAlias = "BallJudge"
local judgeData = require("Actor/Quest/Q409/Q409Config").JudgeData

function BallJudge:PreGetAlias()
    return judgeData.Judge
end

function BallJudge:Start()
    print("start!BallJudge")
end

function BallJudge:OnDestroy()
    print("BallJudge " .. judgeData.JudgeID .. " destroied")
end

return BallJudge
