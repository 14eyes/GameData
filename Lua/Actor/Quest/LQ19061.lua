require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19061 = class("Quest19061", QuestActorProxy)
Quest19061.defaultAlias = "Quest19061"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19061:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19061:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1906102"] = self.OnSubStart1906102,
        ["1906103"] = self.OnSubStart1906103,
        ["1906104"] = self.OnSubStart1906104,
        ["1906105"] = self.OnSubStart1906105,
        ["1906106"] = self.OnSubStart1906106,
        ["1906107"] = self.OnSubStart1906107,
        ["1906111"] = self.OnSubStart1906111,
        ["1906108"] = self.OnSubStart1906108,
        ["1906109"] = self.OnSubStart1906109,
        ["1906110"] = self.OnSubStart1906110
    }
end

function Quest19061:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1906102"] = self.OnSubFinish1906102,
        ["1906103"] = self.OnSubFinish1906103,
        ["1906104"] = self.OnSubFinish1906104,
        ["1906105"] = self.OnSubFinish1906105,
        ["1906106"] = self.OnSubFinish1906106,
        ["1906107"] = self.OnSubFinish1906107,
        ["1906111"] = self.OnSubFinish1906111,
        ["1906108"] = self.OnSubFinish1906108,
        ["1906109"] = self.OnSubFinish1906109,
        ["1906110"] = self.OnSubFinish1906110
    }
end

function Quest19061:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1906102"] = self.OnSubFailed1906102,
        ["1906103"] = self.OnSubFailed1906103,
        ["1906104"] = self.OnSubFailed1906104,
        ["1906105"] = self.OnSubFailed1906105,
        ["1906106"] = self.OnSubFailed1906106,
        ["1906107"] = self.OnSubFailed1906107,
        ["1906111"] = self.OnSubFailed1906111,
        ["1906108"] = self.OnSubFailed1906108,
        ["1906109"] = self.OnSubFailed1906109,
        ["1906110"] = self.OnSubFailed1906110
    }
end

function Quest19061:Start()
    print("Start")
end

function Quest19061:OnDestroy()
    print("OnDestroy")
end

function Quest19061:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ActionSafeCall(self.ClearAll)
end

function Quest19061:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19061:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ActionSafeCall(self.ClearAll)
end

function Quest19061:FinishWalkQuest()
    print("FinishSubQuest1906105")
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    self:Standby()
    self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q19062NoelRunRoute1").rot))
    self:ClearSteerToAutonomyTask()
    actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 1906105)
end

function Quest19061:FinishRunQuest()
    actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 1906107)
    print("Successl Quest1906107")
end

function Quest19061:ClearAll()
    print("ClearAll")
    self:DestroyQuestNpcActor(npcs.Npc1027Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc11001Data1.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1027Data2.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest19061:WalkNarrator()
    print("WalkNarrator")
    self:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest19061:OnMovePause()
    print("OnMovePause")
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    local actor = actorMgr:GetActor("19061")
    self:SteerToAutonomyTask(tbl, 1, true, true)
end

function Quest19061:OnMoveResume()
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest19061:OnSubStart1906102(arg1)
    print("OnSubStart1906102")
    actorMgr:DestroyNpcActorByAlias("Npc102719068")
    self:CreateQuestNpc(arg1, npcs.Npc1027Data.id, 1)
end

function Quest19061:OnSubFinish1906102(arg1)
    print("OnSubFinish1906102")
end

function Quest19061:OnSubFailed1906102(arg1)
    print("OnSubFailed1906102")
end

function Quest19061:OnSubStart1906103(arg1)
    print("OnSubStart1906103")
    self:RequestCoopInteractionFromSubStartPoint(103401, 1906101)
end

function Quest19061:OnSubFinish1906103(arg1)
    print("OnSubFinish1906103")
end

function Quest19061:OnSubFailed1906103(arg1)
    print("OnSubFailed1906103")
end

function Quest19061:OnSubStart1906104(arg1)
    print("OnSubStart1906104")
end

function Quest19061:OnSubFinish1906104(arg1)
    print("OnSubFinish1906104")
end

function Quest19061:OnSubFailed1906104(arg1)
    print("OnSubFailed1906104")
end

function Quest19061:OnSubStart1906105(arg1)
    print("OnSubStart1906105")
    actorMgr:DestroyNpcActorByAlias("Npc102719068")
    self:SetNavigationByMainId(19061, true)
    self:CreateQuestNpc(arg1, npcs.Npc11001Data1.id, 2)
    self:CallDelay(8, self.WalkNarrator)
    self:CreateQuestNpc(arg1, npcs.Npc1027Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1027Data.alias)
    questNpcActor:Standby()
    self:NpcForceAvatarWalkByDist(questNpcActor, 2.5, 4.5)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData2, 4, 2, -1, self.FinishWalkQuest, nil, nil, self.OnMovePause, self.OnMoveResume, nil, true)
    questNpcActor:EnableInteraction(false)
end

function Quest19061:OnSubFinish1906105(arg1)
    print("OnSubFinish1906105")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1027Data.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
    questNpcActor:ResetForceAvatarWalk()
end

function Quest19061:OnSubFailed1906105(arg1)
    print("OnSubFailed1906105")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1027Data.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
end

function Quest19061:OnSubStart1906106(arg1)
    print("OnSubStart1906106")
    self:CreateQuestNpc(arg1, npcs.Npc1027Data2.id, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1027Data.alias)
    questNpcActor:Standby()
    self:NpcResetForceAvatarWalk(questNpcActor)
end

function Quest19061:OnSubFinish1906106(arg1)
    print("OnSubFinish1906106")
    self:GetQuestNpcActor(npcs.Npc1027Data.alias):DoFreeStyle(1190, true, nil, true, true)
end

function Quest19061:OnSubFailed1906106(arg1)
    print("OnSubFailed1906106")
end

function Quest19061:OnSubStart1906107(arg1)
    print("OnSubStart1906107")
    self:CallDelay(5, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc1027Data.alias)
        questNpcActor:Standby()
        questNpcActor:DisableInteeHeadCtrl(true)
        arg1:NpcRunToRouteTask(questNpcActor, datas.RoutePointsDataRun, arg1.FinishRunQuest)
        questNpcActor:EnableInteraction(false)
    end)
end

function Quest19061:OnSubFinish1906107(arg1)
    print("OnSubFinish1906107")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1027Data.alias)
    questNpcActor:Standby()
    questNpcActor:EnableHeadCtrl(true)
end

function Quest19061:OnSubFailed1906107(arg1)
    print("OnSubFailed1906107")
    self:ClearCoroutine()
    self:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_TASK)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1027Data.alias)
    questNpcActor:ClearAllTask()
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
    actorUtils.ClearCacheCmdExternal(questNpcActor.alias, ActorCommandType.MOVE_ROUTE)
end

function Quest19061:OnSubStart1906111(arg1)
    print("OnSubStart1906111")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1027Data.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
    self:RequestCoopInteractionFromSubStartPoint(103401, 1906103)
    self:NpcResetForceAvatarWalk(questNpcActor)
end

function Quest19061:OnSubFinish1906111(arg1)
    print("OnSubFinish1906111")
end

function Quest19061:OnSubFailed1906111(arg1)
    print("OnSubFailed1906111")
end

function Quest19061:OnSubStart1906108(arg1)
    print("OnSubStart1906108")
    self:GetQuestNpcActor(npcs.Npc1027Data3.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc11001Data1.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(4120, true, nil, true, true)
end

function Quest19061:OnSubFinish1906108(arg1)
    print("OnSubFinish1906108")
end

function Quest19061:OnSubFailed1906108(arg1)
    print("OnSubFailed1906108")
end

function Quest19061:OnSubStart1906109(arg1)
    print("OnSubStart1906109")
end

function Quest19061:OnSubFinish1906109(arg1)
    print("OnSubFinish1906109")
end

function Quest19061:OnSubFailed1906109(arg1)
    print("OnSubFailed1906109")
end

function Quest19061:OnSubStart1906110(arg1)
    print("OnSubStart1906110")
    self:RequestCoopInteractionFromSubStartPoint(103401, 1906104)
    self:GetQuestNpcActor(npcs.Npc1027Data3.alias):DisableInteeHeadCtrl(false)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc11001Data1.alias)
    questNpcActor:DisableInteeHeadCtrl(false)
    questNpcActor:Standby()
end

function Quest19061:OnSubFinish1906110(arg1)
    print("OnSubFinish1906110")
    self:ActionSafeCall(self.ClearAll)
end

function Quest19061:OnSubFailed1906110(arg1)
    print("OnSubFailed1906110")
end

return Quest19061
