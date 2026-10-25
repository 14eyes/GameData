require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local SneakAI = class("SneakAI", NpcActorProxy)
SneakAI.defaultAlias = "SneakAI"
SneakAI.PatrolPosNum = 0
SneakAI.PatrolPos = nil
SneakAI.PatrolDir = nil
SneakAI.PatrolNext = 1
SneakAI.AIDict = 1
local tbl = {}
local v = {}
local n = 10001001
v[1] = 10061
v[2] = n
local tbl2 = {}
local n2 = 10001002
tbl2[1] = 10062
tbl2[2] = n2
local tbl3 = {}
local n3 = 10001003
tbl3[1] = 10063
tbl3[2] = n3
local tbl4 = {}
local n4 = 10001004
tbl4[1] = 10064
tbl4[2] = n4
local tbl5 = {}
local n5 = 10001007
tbl5[1] = 10067
tbl5[2] = n5
local tbl6 = {}
local n6 = 10001008
tbl6[1] = 10068
tbl6[2] = n6
local tbl7 = {}
local n7 = 10001010
tbl7[1] = 10070
tbl7[2] = n7
local tbl8 = {}
local n8 = 10001011
tbl8[1] = 10071
tbl8[2] = n8
local tbl9 = {}
local n9 = 10001012
tbl9[1] = 10072
tbl9[2] = n9
local tbl10 = {}
local n10 = 10001013
tbl10[1] = 10073
tbl10[2] = n10
local tbl11 = {}
local n11 = 10001014
tbl11[1] = 10074
tbl11[2] = n11
local tbl12 = {}
local n12 = 10001016
tbl12[1] = 10076
tbl12[2] = n12
local tbl13 = {}
local n13 = 10001017
tbl13[1] = 10077
tbl13[2] = n13
tbl[1] = v
tbl[2] = tbl2
tbl[3] = tbl3
tbl[4] = tbl4
tbl[5] = tbl5
tbl[6] = tbl6
tbl[7] = tbl7
tbl[8] = tbl8
tbl[9] = tbl9
tbl[10] = tbl10
tbl[11] = tbl11
tbl[12] = tbl12
tbl[13] = tbl13
local Q1000ClientConfig = require("Quest/Client/Q1000ClientConfig")
local Q375ClientConfig = require("Quest/Client/Q375ClientConfig")

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

function SneakAI:ShowBubble()
    self:TriggerNpcSpeechBubble(tbl[SneakAI.AIDict][1], tbl[SneakAI.AIDict][2])
    self:BubbleTime()
end

function SneakAI:BubbleTime()
    self:CallDelay(5, self.CloseBubble)
end

function SneakAI:CloseBubble()
    self:ClearNpcSpeechBubble(tbl[SneakAI.AIDict][1])
    self:BubbleGap()
end

function SneakAI:BubbleGap()
    self:CallDelay(5, self.ShowBubble)
end

function SneakAI:StartPatrol()
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

function SneakAI:Behave()
    if self.uActor == nil then
        return
    end

    self:Standby()
    local pos = self:GetPos()
    self:CallDelay(3, self.StartPatrol)
end

function SneakAI:ReturnToPatrol()
    local pos = self:GetPos()
    pos.y = pos.y + 1
    self:DoFreeStateTrigger()
    self:WalkToTask(self.PatrolPos[self.PatrolNext], self.StartPatrol)
end

function SneakAI:Aware()
    self:ClearFollowTask()
    self:Standby()
    local pos = self:GetPos()
    pos.y = pos.y + 1
    self:NarratorOnlyTaskLegacy(Q1000ClientConfig.AwareReminder)
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
    self:Standby()
    self:DoFreeStateTrigger()
    self:NarratorOnlyTaskLegacy(Q1000ClientConfig.DiscoverReminder)
    self:DoFreeStyle(2)
    local actor = actorMgr:GetActor(Q1000ClientConfig.ActorAlias)
    if actor ~= nil then
        print("Sneak Failed OOOMG")
        actor:FinishQuestID(true, 100010)
    end

    local pos = self:GetPos()
    self:EnterSceneLookCamera(pos, 0, 2, true, true)
    globalActor:EnablePlayerInput(false)
    self:CallDelay(2, function()
        globalActor:EnablePlayerInput(true)
    end)
end

function SneakAI:Start()
    self:ThreatTask(self.Discover, self.Aware, self.ReturnToPatrol, self.OnLure)
    self:StartPatrol()
end

return SneakAI
