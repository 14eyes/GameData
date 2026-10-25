require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local SneakAI = class("SneakAI", NpcActorProxy)
local Q72661ClientConfig = require("Quest/Client/Q72661ClientConfig")
local Q1000ClientConfig = require("Quest/Client/Q1000ClientConfig")

local tbl = {
    alias = "SneakAI4",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 12164,
    dataIndex = 4,
    bornPos = sceneData:GetDummyPoint(3, "Q72661_daobaotuan").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q72661_daobaotuan").rot,
    PatrolPosNum = 5,
    PatrolPos = {
        sceneData:GetDummyPoint(3, "Q72661_point1").pos,
        sceneData:GetDummyPoint(3, "Q72661_point2").pos,
        sceneData:GetDummyPoint(3, "Q72661_point3").pos,
        sceneData:GetDummyPoint(3, "Q72661_point4").pos,
        sceneData:GetDummyPoint(3, "Q72661_point5").pos
    },
    PatrolDir = {
        sceneData:GetDummyPoint(3, "Q72661_point1").rot,
        sceneData:GetDummyPoint(3, "Q72661_point2").rot,
        sceneData:GetDummyPoint(3, "Q72661_point3").rot,
        sceneData:GetDummyPoint(3, "Q72661_point4").rot,
        sceneData:GetDummyPoint(3, "Q72661_point5").rot
    },
    PatrolNext = 1
}

local v = {}
v.FollowLen = 100
v.FailLen = 10

v.RoutePoints = {
    sceneData:GetDummyPoint(3, "Q72661_point1").pos,
    sceneData:GetDummyPoint(3, "Q72661_point2").pos,
    sceneData:GetDummyPoint(3, "Q72661_point3").pos,
    sceneData:GetDummyPoint(3, "Q72661_point4").pos,
    sceneData:GetDummyPoint(3, "Q72661_point5").pos
}

v.Q72661Trigger1_ = {
    alias = "Q72661Trigger1",
    script = "Actor/Gadget/Q72661Trigger1",
    id = 70900002,
    point = sceneData:GetDummyPoint(3, "Q72661_daobaotuan")
}

v.KaicheA = {
    {dialogID = 726619901, audioEvtName = "", duration = 3},
    {dialogID = 726619902, audioEvtName = "", duration = 3}
}

v.KaicheFail = {{dialogID = 726619907, audioEvtName = "", duration = 3}}
SneakAI.defaultAlias = "SneakAI"
SneakAI.PatrolPosNum = tbl.PatrolPosNum
SneakAI.PatrolPos = tbl.PatrolPos
SneakAI.PatrolDir = tbl.PatrolDir
SneakAI.PatrolNext = 0

function SneakAI:GetCustomFreeStyleList()
    local tbl = {}
    local n = 1120
    local v = 1190
    tbl[1] = 1170
    tbl[2] = n
    tbl[3] = v
    return tbl
end

function SneakAI:StartPatrol()
    if self.uActor == nil then
        return
    end

    self.PatrolNext = self.PatrolNext + 1
    if self.PatrolNext > self.PatrolPosNum then
        local actor = actorMgr:GetActor(Q72661ClientConfig.ActorAlias)
        if actor ~= nil then
            print("Sneak Succeed\239\188\129")
            actor:FinishQuestID(false, 7266107)
        end
    end

    if self.PatrolNext ~= 4 then
        if self.PatrolNext ~= 5 then
            if self.PatrolNext ~= 6 then
                goto lbl_41
            end
        end
    end

    self:RunToTask(self.PatrolPos[self.PatrolNext], self.Behave)
    goto lbl_52
    ::lbl_41::
    if self.PatrolNext > self.PatrolPosNum then
    else
        self:WalkToTask(self.PatrolPos[self.PatrolNext], self.Behave)
    end

    ::lbl_52::
end

function SneakAI:Behave()
    if self.uActor == nil then
        return
    end

    if self.PatrolNext == 3 then
        self:Standby()
        self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q72661_point3").rot))
        self:DoFreeStyle(1170)
        self:CallDelay(7, function(arg1)
            arg1:StartPatrol()
        end)

        local actor = actorMgr:GetActor(Q72661ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:NarratorOnlyTaskLegacy(v.KaicheA)
        end
    else
        self:StartPatrol()
    end
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
    local avatarPos = actorUtils.GetAvatarPos()
    local v = self:GetPos()
    local tbl = {x = avatarPos.x - v.x, y = avatarPos.y - v.y, z = avatarPos.z - v.z}
    self:TurnTo(tbl)
    self:DoFreeStyle(1120)
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
        self:NarratorOnlyTaskLegacy(v.KaicheFail)
    end)

    self.DoFreeStyle(self, 2)
    local pos = self.GetPos(self)
    self.EnterSceneLookCamera(self, pos, 0, 2, true, true)
    globalActor:EnablePlayerInput(false)
    self.CallDelay(self, 6, function()
        globalActor:EnablePlayerInput(true)
        local actor = actorMgr:GetActor(Q72661ClientConfig.ActorAlias)
        if actor ~= nil then
            print("Sneak Failed OOOMG")
            actor:FinishQuestID(true, 7266107)
        end
    end)
end

function SneakAI:Start()
    self:ThreatTask(self.Discover, self.Aware, self.ReturnToPatrol, self.OnLure)
    self:StartPatrol()
    print("SneakStart")
end

return SneakAI
