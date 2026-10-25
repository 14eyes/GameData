require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19042 = class("Quest19042", QuestActorProxy)
Quest19042.defaultAlias = "Quest19042"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19042:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19042:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1904201"] = self.OnSubStart1904201,
        ["1904202"] = self.OnSubStart1904202,
        ["1904203"] = self.OnSubStart1904203,
        ["1904204"] = self.OnSubStart1904204,
        ["1904205"] = self.OnSubStart1904205,
        ["1904206"] = self.OnSubStart1904206,
        ["1904207"] = self.OnSubStart1904207
    }
end

function Quest19042:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1904201"] = self.OnSubFinish1904201,
        ["1904202"] = self.OnSubFinish1904202,
        ["1904203"] = self.OnSubFinish1904203,
        ["1904204"] = self.OnSubFinish1904204,
        ["1904205"] = self.OnSubFinish1904205,
        ["1904206"] = self.OnSubFinish1904206,
        ["1904207"] = self.OnSubFinish1904207
    }
end

function Quest19042:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1904201"] = self.OnSubFailed1904201,
        ["1904202"] = self.OnSubFailed1904202,
        ["1904203"] = self.OnSubFailed1904203,
        ["1904204"] = self.OnSubFailed1904204,
        ["1904205"] = self.OnSubFailed1904205,
        ["1904206"] = self.OnSubFailed1904206,
        ["1904207"] = self.OnSubFailed1904207
    }
end

function Quest19042:Start()
    print("Start")
end

function Quest19042:OnDestroy()
    print("OnDestroy")
end

function Quest19042:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19042:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19042:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc1024Data.alias, 3)
    self:NotifyTo(npcs.Npc1423Data.alias, 0, true)
end

function Quest19042:Finish01()
    print("Finish01")
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1904201)
    end

    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:Standby()
    questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q19042Bennett1").rot))
end

function Quest19042:Finish03()
    print("Finish03")
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1904203)
    end

    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:Standby()
    questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q19042Bennett2").rot))
end

function Quest19042:Finish05()
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1904205)
    end
end

function Quest19042:Narrator05()
    print("Narrator05")
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    local questNpcActor = actorMgr:GetActor(clientData.ActorAlias):GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:Standby()
    questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q19042Route304").rot))
    self:NarratorOnlyTaskByData(datas.NarratorWithId, function()
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        local questNpcActor = actor.GetQuestNpcActor(actor, npcs.Npc1024Data.alias)
        actor.NpcBeFollowTaskByRoutePointsWithDiffLen(actor, questNpcActor, datas.RoutePointsData4, 6, 4, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            actor:FinishQuestID(false, 1904205)
        end, nil, nil, nil, nil, nil, true)
    end, 19042)
end

function Quest19042:NpcRun05()
    print("NpcRun05")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData4, 15, 12, -1, self.Finish05, nil, nil, nil, nil, nil, true)
end

function Quest19042:HideBlanche()
    print("HideBlanche")
    self:NotifyTo(npcs.Npc1423Data.alias, 1, true)
end

function Quest19042:ShowBlanche()
    print("ShowBlanche")
    self:NotifyTo(npcs.Npc1423Data.alias, 0, true)
end

function Quest19042:OnSubStart1904201(arg1)
    print("OnSubStart1904201")
    self:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    self:SetNavigationByMainId(19042, true)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData1, 6, 4, -1, self.Finish01, nil, nil, nil, nil, nil, false)
    self:ActionSafeCall(self.HideBlanche)
end

function Quest19042:OnSubFinish1904201(arg1)
    print("OnSubFinish1904201")
end

function Quest19042:OnSubFailed1904201(arg1)
    print("OnSubFailed1904201")
end

function Quest19042:OnSubStart1904202(arg1)
    print("OnSubStart1904202")
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904201)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q19042Bennett1").rot))
    self:ActionSafeCall(self.HideBlanche)
end

function Quest19042:OnSubFinish1904202(arg1)
    print("OnSubFinish1904202")
end

function Quest19042:OnSubFailed1904202(arg1)
    print("OnSubFailed1904202")
end

function Quest19042:OnSubStart1904203(arg1)
    print("OnSubStart1904203")
    self:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    self:ActionSafeCall(self.HideBlanche)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData2, 6, 4, -1, self.Finish03, nil, nil, nil, nil, nil, false)
end

function Quest19042:OnSubFinish1904203(arg1)
    print("OnSubFinish1904203")
end

function Quest19042:OnSubFailed1904203(arg1)
    print("OnSubFailed1904203")
end

function Quest19042:OnSubStart1904204(arg1)
    print("OnSubStart1904204")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q19042Bennett2").rot))
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904202)
    self:ActionSafeCall(self.HideBlanche)
end

function Quest19042:OnSubFinish1904204(arg1)
    print("OnSubFinish1904204")
end

function Quest19042:OnSubFailed1904204(arg1)
    print("OnSubFailed1904204")
end

function Quest19042:OnSubStart1904205(arg1)
    print("OnSubStart1904205")
    self:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    self:ActionSafeCall(self.HideBlanche)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData3, 10, 8, -1, self.Narrator05, nil, nil, nil, nil, nil, false)
end

function Quest19042:OnSubFinish1904205(arg1)
    print("OnSubFinish1904205")
end

function Quest19042:OnSubFailed1904205(arg1)
    print("OnSubFailed1904205")
end

function Quest19042:OnSubStart1904206(arg1)
    print("OnSubStart1904206")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q19042Bennett3").rot))
    self:ActionSafeCall(self.HideBlanche)
end

function Quest19042:OnSubFinish1904206(arg1)
    print("OnSubFinish1904206")
end

function Quest19042:OnSubFailed1904206(arg1)
    print("OnSubFailed1904206")
end

function Quest19042:OnSubStart1904207(arg1)
    print("OnSubStart1904207")
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904203)
    self:ActionSafeCall(self.HideBlanche)
end

function Quest19042:OnSubFinish1904207(arg1)
    print("OnSubFinish1904207")
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    self:ActionSafeCall(self.ShowBlanche)
end

function Quest19042:OnSubFailed1904207(arg1)
    print("OnSubFailed1904207")
end

return Quest19042
