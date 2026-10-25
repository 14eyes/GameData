require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19002 = class("Quest19002", QuestActorProxy)
Quest19002.defaultAlias = "Quest19002"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19002:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1900201"] = self.OnSubStart1900201,
        ["1900202"] = self.OnSubStart1900202,
        ["1900203"] = self.OnSubStart1900203,
        ["1900204"] = self.OnSubStart1900204
    }
end

function Quest19002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1900201"] = self.OnSubFinish1900201,
        ["1900202"] = self.OnSubFinish1900202,
        ["1900203"] = self.OnSubFinish1900203,
        ["1900204"] = self.OnSubFinish1900204
    }
end

function Quest19002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1900201"] = self.OnSubFailed1900201,
        ["1900202"] = self.OnSubFailed1900202,
        ["1900203"] = self.OnSubFailed1900203,
        ["1900204"] = self.OnSubFailed1900204
    }
end

function Quest19002:Start()
    print("Start")
end

function Quest19002:OnDestroy()
    print("OnDestroy")
end

function Quest19002:OnMainFinished(arg1)
    print("OnMainFinished")
    self:NotifyTo(npcs.Npc1602Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1471Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc160201Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc147101Data.alias, 3)
end

function Quest19002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19002:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo(npcs.Npc1602Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1471Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc160201Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc147101Data.alias, 3)
    self:GetQuestNpcActor(npcs.Npc160201Data.alias):ResetWalkSpeedRatio()
end

function Quest19002:FinishSubQuest1900202()
    print("FinishSubQuest1900202")
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    self:Standby()
    self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "COOP101401Albert02").rot))
    self:ClearSteerToAutonomyTask()
    actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 1900202)
end

function Quest19002:OnMovePause()
    print("OnMovePause")
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    local actor = actorMgr:GetActor("19009")
    self:SteerToAutonomyTask(tbl, 1, true, true)
end

function Quest19002:OnMoveResume()
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest19002:OnSubStart1900201(arg1)
    print("OnSubStart1900201")
    self:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc160201Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc147101Data.id, 3)
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900201)
end

function Quest19002:OnSubFinish1900201(arg1)
    print("OnSubFinish1900201")
end

function Quest19002:OnSubFailed1900201(arg1)
    print("OnSubFailed1900201")
end

function Quest19002:OnSubStart1900202(arg1)
    print("OnSubStart1900202")
    self:CreateQuestNpc(arg1, npcs.Npc160201Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc147101Data.id, 2)
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc160201Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:SetWalkSpeedRatio(0.8)
    self:NpcForceAvatarWalkByDist(questNpcActor, 2.5, 4.5)
    self:NpcNarratorOnlyTaskByData(questNpcActor, datas.NarratorWithId19002001)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsDataBabala01, 4, 2, -1, self.FinishSubQuest1900202, nil, nil, self.OnMovePause, self.OnMoveResume, nil, true)
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
end

function Quest19002:OnSubFinish1900202(arg1)
    print("OnSubFinish1900202")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc160201Data.alias)
    questNpcActor:ResetForceAvatarWalk()
    questNpcActor:DisableInteeHeadCtrl(false)
    questNpcActor:ResetWalkSpeedRatio()
end

function Quest19002:OnSubFailed1900202(arg1)
    print("OnSubFailed1900202")
end

function Quest19002:OnSubStart1900203(arg1)
    print("OnSubStart1900203")
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900202)
end

function Quest19002:OnSubFinish1900203(arg1)
    print("OnSubFinish1900203")
    self:SafeDestroyQuestNpc(npcs.Npc160201Data.alias, 3)
end

function Quest19002:OnSubFailed1900203(arg1)
    print("OnSubFailed1900203")
end

function Quest19002:OnSubStart1900204(arg1)
    print("OnSubStart1900204")
    self:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc147101Data.id, 2)
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900203)
    self:SafeDestroyQuestNpc(npcs.Npc160201Data.alias, 3)
    self:NotifyTo(npcs.Npc1602Data.alias, 0, true)
end

function Quest19002:OnSubFinish1900204(arg1)
    print("OnSubFinish1900204")
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
end

function Quest19002:OnSubFailed1900204(arg1)
    print("OnSubFailed1900204")
end

return Quest19002
