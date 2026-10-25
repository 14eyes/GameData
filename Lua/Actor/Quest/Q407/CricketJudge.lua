require("Actor/ActorCommon")
local SQ407 = require("Actor/Quest/SQ407")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local CricketJudge = class("CricketJudge", NpcActorProxy)
CricketJudge.defaultAlias = "CricketJudge"
local judgeData = require("Actor/Quest/Q407/Q407Config").JudgeData

function CricketJudge:PreGetAlias()
    return judgeData.Judge
end

function CricketJudge:Start()
    print("start!CricketJudge")
end

function CricketJudge:OnDestroy()
    print("CricketJudge " .. judgeData.JudgeID .. " destroied")
end

return CricketJudge
