require("Actor/ActorCommon")
local SQ406 = require("Actor/Quest/SQ406")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Judge406 = class("Judge406", NpcActorProxy)
Judge406.defaultAlias = "Judge406"
local judgeData = require("Actor/Quest/Q406/Q406Config").JudgeData
function Judge406:Start() end

function Judge406:OnDestroy()
    print("judge " .. self.configID .. " destroied")
end

return Judge406
