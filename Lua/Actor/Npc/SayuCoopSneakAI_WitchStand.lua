require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local SneakAI = class("SneakAI", NpcActorProxy)
SneakAI.defaultAlias = "SneakAI"
SneakAI.PatrolPosNum = 0
SneakAI.PatrolPos = nil
SneakAI.PatrolDir = nil
SneakAI.PatrolNext = 1
local Q19014ClientConfig = require("Quest/Client/Q19014ClientConfig")
local Q375ClientConfig = require("Quest/Client/Q375ClientConfig")

local datas = Q19014ClientConfig.Datas

function SneakAI:GetCustomFreeStyleList()
    local tbl = {}
    local n = 1
    local v = 2
    local n2 = 3
    tbl[1] = 0
    tbl[2] = n
    tbl[3] = v
    tbl[4] = n2
    return tbl
end

function SneakAI:StartPatrol()
    if self.uActor == nil then
        return
    end

    self:Standby()
end

function SneakAI:Behave()
    if self.uActor == nil then
        return
    end

    self:Standby()
    local pos = self:GetPos()
    self:CallDelay(4, self.StartPatrol)
end

function SneakAI:ReturnToPatrol()
    local pos = self:GetPos()
    pos.y = pos.y + 1
    self:DoFreeStateTrigger()
end

function SneakAI:Aware()
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

function SneakAI:CheckLure()
    print("********************CheckLure")
    self:Standby()
    self:DoFreeStyle(3)
    self:CallDelay(6, self.ReturnToPatrol)
end

function SneakAI:OnLure(arg1, arg2)
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

function SneakAI:Discover()
    print("********************Discover")
    self.Standby(self)
    self.DoFreeStateTrigger(self)
    self.ClearNarratorTask(self)
    self.StopNarrator(self)
    self.CallDelay(self, 0.5, function()
        self:NarratorOnlyTaskByData(datas.NarratorWithId_1901403)
    end)

    local pos = self.GetPos(self)
    self.EnterSceneLookCamera(self, pos, 0, 2, true, true)
    globalActor:EnablePlayerInput(false)
    self.CallDelay(self, 6, function()
        globalActor:EnablePlayerInput(true)
        local actor = actorMgr:GetActor(Q19014ClientConfig.ActorAlias)
        if actor ~= nil then
            print("Sneak Failed OOOMG")
            actor:FinishQuest(true, nil)
        end
    end)
end

function SneakAI:Start()
    self:ThreatTask(self.Discover, self.Aware, self.ReturnToPatrol, self.OnLure)
    self:StartPatrol()
end

return SneakAI
