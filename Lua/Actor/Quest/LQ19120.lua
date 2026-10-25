require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19120 = class("Quest19120", QuestActorProxy)
Quest19120.defaultAlias = "Quest19120"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19120:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19120:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1912001"] = self.OnSubStart1912001,
        ["1912002"] = self.OnSubStart1912002,
        ["1912003"] = self.OnSubStart1912003
    }
end

function Quest19120:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1912001"] = self.OnSubFinish1912001,
        ["1912002"] = self.OnSubFinish1912002,
        ["1912003"] = self.OnSubFinish1912003
    }
end

function Quest19120:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1912001"] = self.OnSubFailed1912001,
        ["1912002"] = self.OnSubFailed1912002,
        ["1912003"] = self.OnSubFailed1912003
    }
end

function Quest19120:Start()
    print("Start")
end

function Quest19120:OnDestroy()
    print("OnDestroy")
end

function Quest19120:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19120:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19120:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest19120:FinishWalkQuest1()
    print("FinishSubQuest1912009")
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    self:Standby()
    self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q1912002route6").rot))
    self:ClearSteerToAutonomyTask()
    actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 1912002)
end

function Quest19120:OnMovePause()
    print("OnMovePause")
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    local actor = actorMgr:GetActor("19120")
    self:SteerToAutonomyTask(tbl, 1, true, true)
end

function Quest19120:OnMoveResume()
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest19120:OnSubStart1912001(arg1)
    print("OnSubStart1912001")
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1912001)
end

function Quest19120:OnSubFinish1912001(arg1)
    print("OnSubFinish1912001")
end

function Quest19120:OnSubFailed1912001(arg1)
    print("OnSubFailed1912001")
end

function Quest19120:OnSubStart1912002(arg1)
    print("OnSubStart1912002")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_TohmaData.alias)
    questNpcActor:Standby()
    self:NpcForceAvatarWalkByDist(questNpcActor, 2.5, 4.5)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:SetWalkSpeedRatio(0.8)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 4, 2, -1, self.FinishWalkQuest1, nil, nil, self.OnMovePause, self.OnMoveResume, nil, true)
    questNpcActor:EnableInteraction(false)
end

function Quest19120:OnSubFinish1912002(arg1)
    print("OnSubFinish1912002")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_TohmaData.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
    questNpcActor:ResetForceAvatarWalk()
end

function Quest19120:OnSubFailed1912002(arg1)
    print("OnSubFailed1912002")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_TohmaData.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
end

function Quest19120:OnSubStart1912003(arg1)
    print("OnSubStart1912003")
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1912002)
end

function Quest19120:OnSubFinish1912003(arg1)
    print("OnSubFinish1912003")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
end

function Quest19120:OnSubFailed1912003(arg1)
    print("OnSubFailed1912003")
end

return Quest19120
