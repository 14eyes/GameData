require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local SneakAdvAI = class("SneakAdvAI", NpcActorProxy)
SneakAdvAI.defaultAlias = "SneakAdvAI"
SneakAdvAI.PatrolPosNum = 0
SneakAdvAI.PatrolPos = nil
SneakAdvAI.PatrolDir = nil
SneakAdvAI.PatrolNext = 1
local Q424ClientConfig = require("Quest/Client/Q424ClientConfig")

function SneakAdvAI:GetCustomFreeStyleList()
    local tbl = {}
    local n = 1
    local v = 2
    local n2 = 3
    local n3 = 5
    tbl[1] = 0
    tbl[2] = n
    tbl[3] = v
    tbl[4] = n2
    tbl[5] = n3
    return tbl
end

function SneakAdvAI:StartPatrol()
    if self.uActor == nil then
        return
    end

    if self.PatrolPosNum == 1 then
        self:Standby()
        self:TurnTo(M.Euler2DirXZ(self.PatrolDir[1]))
    else
        if 1 < self.PatrolPosNum then
            self.PatrolNext = self.PatrolNext + 1
            if self.PatrolNext > self.PatrolPosNum then
                self.PatrolNext = 1
            end

            self:WalkToTask(self.PatrolPos[self.PatrolNext], self.Behave)
        end
    end
end

function SneakAdvAI:Behave()
    if self.uActor == nil then
        return
    end

    self:Standby()
    self:CallDelay(3, self.StartPatrol)
end

function SneakAdvAI:ReturnToPatrol()
    self:DoFreeStateTrigger()
    self:WalkToTask(self.PatrolPos[self.PatrolNext], self.StartPatrol)
end

function SneakAdvAI:Aware()
    self:ClearFollowTask()
    self:Standby()
    self:NarratorOnlyTask(Q424ClientConfig.AwareReminder)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:TurnTo(tbl)
    self:DoFreeStyle(1)
end

function SneakAdvAI:CheckLure()
    print("********************CheckLure")
    self:Standby()
    self:DoFreeStyle(3)
    self:CallDelay(6, self.ReturnToPatrol)
end

function SneakAdvAI:OnLure(arg1, arg2)
    if arg2.hasSound == true then
        print("********************MoveToLure")
        local pos = self:GetPos()
        local tbl = {x = arg2.soundPos.x - pos.x, y = arg2.soundPos.y - pos.y, z = arg2.soundPos.z - pos.z}
        print("TurnDir")
        print(tbl.x)
        self:TurnTo(tbl)
        self:DoFreeStyle(0)
        self:CallDelay(3, function(arg1, arg2_2)
            arg1:Standby()
            arg1:DoFreeStateTrigger()
            arg1:WalkToTask(arg2.soundPos, arg1.CheckLure)
        end)
    end
end

function SneakAdvAI:Discover()
    print("********************Discover")
    self:Standby()
    self:DoFreeStateTrigger()
    self:NarratorOnlyTask(Q424ClientConfig.DiscoverReminder)
    self:DoFreeStyle(2)
    local actor = actorMgr:GetActor(Q424ClientConfig.ActorAlias)
    if actor ~= nil then
        print("Sneak Failed")
        actor:FinishQuestID(true, 42403)
    end

    local pos = self:GetPos()
    self:EnterSceneLookCamera(pos, 0, 2, true)
end

function SneakAdvAI:Stun()
    print("********************Stun")
    self:DoFreeStyle(5)
    self:EnableAI(false)
    self:EnableInteraction(false)
    self:CallDelay(30, function(arg1, arg2)
        arg1:EnableAI(true)
        arg1:EnableInteraction(true)
        arg1:DoFreeStateTrigger()
        arg1:Standby()
        arg1:ReturnToPatrol()
    end)
end

function SneakAdvAI:Start()
    self:ThreatTask(self.Discover, self.Aware, self.ReturnToPatrol, self.OnLure)
    self:StartPatrol()
end

return SneakAdvAI
