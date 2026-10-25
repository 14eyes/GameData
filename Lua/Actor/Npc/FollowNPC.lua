require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local SneakAI = class("SneakAI", NpcActorProxy)
local Q2012ClientConfig = require("Quest/Client/Q2012ClientConfig")
local Q1000ClientConfig = require("Quest/Client/Q1000ClientConfig")

local followNPCData = Q2012ClientConfig.FollowNPCData
local datas = Q2012ClientConfig.Datas
SneakAI.defaultAlias = "SneakAI"
SneakAI.PatrolPosNum = followNPCData.PatrolPosNum
SneakAI.PatrolPos = followNPCData.PatrolPos
SneakAI.PatrolDir = followNPCData.PatrolDir
SneakAI.PatrolNext = 0

function SneakAI:GetCustomFreeStyleList()
    local tbl = {}
    local n = 1120
    local v = 1190
    local n2 = 0
    local n3 = 1
    local n4 = 2
    local n5 = 3
    tbl[1] = 1170
    tbl[2] = n
    tbl[3] = v
    tbl[4] = n2
    tbl[5] = n3
    tbl[6] = n4
    tbl[7] = n5
    return tbl
end

function SneakAI:StartPatrol()
    print("Now StartPatrol", self.PatrolNext)
    if self.uActor == nil then
        return
    end

    if self.PatrolNext > self.PatrolPosNum then
        self:DoFreeStyle(3)
        actorMgr:CreateActorWithPos(datas.Q201207Trigger_.alias, datas.Q201207Trigger_.script, datas.Q201207Trigger_.id, 0, datas.Q201207Trigger_.point.pos, datas.Q201207Trigger_.point.rot, true, false, 3)
    end

    print("Now Noraml Goto", self.PatrolNext)
    if self.PatrolNext ~= 6 then
        if self.PatrolNext ~= 7 then
            if self.PatrolNext ~= 9 then
                if self.PatrolNext ~= 10 then
                    if self.PatrolNext ~= 11 then
                        goto lbl_61
                    end
                end
            end
        end
    end

    self:RunToTask(self.PatrolPos[self.PatrolNext], self.Behave)
    goto lbl_72
    ::lbl_61::
    if self.PatrolNext > self.PatrolPosNum then
    else
        self:WalkToTask(self.PatrolPos[self.PatrolNext], self.Behave)
    end

    ::lbl_72::
end

function SneakAI:Behave0508()
    self:DoFreeStateTrigger()
    self:StartPatrol()
end

function SneakAI:Behave0401()
    self:DoFreeStateTrigger()
end

function SneakAI:Behave0402()
    self:StartPatrol()
end

function SneakAI:Behave()
    print("Now Arrive", self.PatrolNext)
    if self.uActor == nil then
        return
    end

    if self.PatrolNext == 4 then
        self:Standby()
        self.PatrolNext = self.PatrolNext + 1
        self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q2012NpcFollow04").rot))
        self:DoFreeStyle(1170)
        local actor = actorMgr:GetActor(Q2012ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:NarratorOnlyTaskByData(datas.NarratorChat01)
        end

        self:CallDelay(12, self.Behave0401)
        self:CallDelay(16, self.Behave0402)
    else
        if self.PatrolNext == 5 then
            self:Standby()
            self.PatrolNext = self.PatrolNext + 1
            self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q2012NpcFollow04_1").rot))
            self:DoFreeStyle(1120)
            local actor = actorMgr:GetActor(Q2012ClientConfig.ActorAlias)
            if actor ~= nil then
                actor:NarratorOnlyTaskByData(datas.NarratorThink01)
            end

            self:CallDelay(8.3, self.Behave0508)
        else
            if self.PatrolNext == 7 then
                self.PatrolNext = self.PatrolNext + 1
                local actor = actorMgr:GetActor(Q2012ClientConfig.ActorAlias)
                if actor ~= nil then
                    actor:NarratorOnlyTaskByData(datas.NarratorThink02)
                end

                self:StartPatrol()
            else
                if self.PatrolNext == 8 then
                    self:Standby()
                    self.PatrolNext = self.PatrolNext + 1
                    self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q2012NpcFollow07").rot))
                    self:DoFreeStyle(1190)
                    self:CallDelay(3, self.Behave0508)
                else
                    self.PatrolNext = self.PatrolNext + 1
                    self:StartPatrol()
                end
            end
        end
    end
end

function SneakAI:ReturnToPatrol()
    print("********************ReturnToPatrol")
    print("Return Now Goto ", self.PatrolNext)
    self:DoFreeStateTrigger()
    if self.PatrolNext > self.PatrolPosNum then
        actorMgr:CreateActorWithPos(datas.Q201207Trigger_.alias, datas.Q201207Trigger_.script, datas.Q201207Trigger_.id, 0, datas.Q201207Trigger_.point.pos, datas.Q201207Trigger_.point.rot, true, false, 3)
    end

    print("Now Noraml Goto", self.PatrolNext)
    if self.PatrolNext ~= 6 then
        if self.PatrolNext ~= 7 then
            if self.PatrolNext ~= 9 then
                if self.PatrolNext ~= 10 then
                    goto lbl_56
                end
            end
        end
    end

    self:RunToTask(self.PatrolPos[self.PatrolNext], self.Behave)
    goto lbl_67
    ::lbl_56::
    if self.PatrolNext > self.PatrolPosNum then
    else
        self:WalkToTask(self.PatrolPos[self.PatrolNext], self.Behave)
    end

    ::lbl_67::
end

function SneakAI:Aware()
    self:UnCallFunc(self.Behave0508)
    self:UnCallFunc(self.Behave0401)
    self:UnCallFunc(self.Behave0402)
    print("Aware Now Next ", self.PatrolNext)
    self:ClearFollowTask()
    self:Standby()
    local actor = actorMgr:GetActor(Q2012ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:NarratorOnlyTaskByData(datas.NarratorWarnFound)
    end

    local pos = self:GetPos()
    pos.y = pos.y + 1
    local avatarPos = actorUtils.GetAvatarPos()
    local v = self:GetPos()
    local tbl = {x = avatarPos.x - v.x, y = avatarPos.y - v.y, z = avatarPos.z - v.z}
    self:TurnTo(tbl)
    self:DoFreeStyle(1190)
end

function SneakAI:CheckLure()
    print("********************CheckLure")
    self:Standby()
    self:DoFreeStyle(3)
    self:CallDelay(6, self.ReturnToPatrol)
end

function SneakAI:OnLure(arg1, arg2) end

function SneakAI:Discover()
    print("********************Discover")
    self.Standby(self)
    self.DoFreeStateTrigger(self)
    self.ClearNarratorTask(self)
    self.StopNarrator(self)
    self.CallDelay(self, 0.5, function()
        self:NarratorOnlyTaskByData(datas.NarratorFailFound)
    end)

    self.DoFreeStyle(self, 2)
    local pos = self.GetPos(self)
    self.EnterSceneLookCamera(self, pos, 0, 2, true, true)
    globalActor:EnablePlayerInput(false)
    self.CallDelay(self, 11, function()
        globalActor:EnablePlayerInput(true)
        local actor = actorMgr:GetActor(Q2012ClientConfig.ActorAlias)
        if actor ~= nil then
            print("Sneak Failed OOOMG")
            actor:FinishQuestID(true, 201207)
        end
    end)
end

function SneakAI:Start()
    self:ThreatTask(self.Discover, self.Aware, self.ReturnToPatrol, self.OnLure)
    self:StartPatrol()
end

return SneakAI
