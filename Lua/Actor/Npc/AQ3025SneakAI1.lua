require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local AQ3025SneakAI1 = class("AQ3025SneakAI1", NpcActorProxy)
local Q3025ClientConfig = require("Quest/Client/Q3025ClientConfig")

AQ3025SneakAI1.CanMove = 1
AQ3025SneakAI1.PatrolPosNum = 0
AQ3025SneakAI1.NarratorTag = 1
AQ3025SneakAI1.PatrolPos = nil
AQ3025SneakAI1.PatrolDir = nil
AQ3025SneakAI1.PatrolNext = 1

function AQ3025SneakAI1:StartPatrol()
    if self.uActor == nil then
        return
    end

    self:Standby()
end

function AQ3025SneakAI1:Behave()
    if self.uActor == nil then
        return
    end

    self:Standby()
    local pos = self:GetPos()
    self:CallDelay(3, self.StartPatrol)
end

function AQ3025SneakAI1:ReturnToPatrol()
    local pos = self:GetPos()
    pos.y = pos.y + 1
    self:DoFreeStateTrigger()
end

function AQ3025SneakAI1:Aware()
    self:ClearFollowTask()
    self:Standby()
    local pos = self:GetPos()
    pos.y = pos.y + 1
    local avatarPos = actorUtils.GetAvatarPos()
    local v = self:GetPos()
    local tbl = {x = avatarPos.x - v.x, y = avatarPos.y - v.y, z = avatarPos.z - v.z}
    self:TurnTo(tbl)
    self:DoFreeStyle(1)
end

function AQ3025SneakAI1:Discover()
    print("********************Discover " .. self:GetNpcAlias())
    self:Standby()
    self:DoFreeStateTrigger()
    self:ClearNarratorTask()
    self:StopNarrator()
    local pos = self:GetPos()
    self:EnterSceneLookCamera(pos, 0, 2, true, true)
    globalActor:EnablePlayerInput(false)
    self:CallDelay(1, function()
        globalActor:EnablePlayerInput(true)
        actorUtils.FinishQuestID(true, 302504)
        actorUtils.FinishQuestID(true, 302513)
        print("Quest 302504 failed because of being discovered by soldier")
    end)
end

function AQ3025SneakAI1:Start()
    self:ThreatTaskInBackGround(self.Discover, self.Aware, self.ReturnToPatrol)
    self:StartPatrol()
end

return AQ3025SneakAI1
