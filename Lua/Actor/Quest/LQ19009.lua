require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19009 = class("Quest19009", QuestActorProxy)
Quest19009.defaultAlias = "Quest19009"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19009:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1900901"] = self.OnSubStart1900901,
        ["1900902"] = self.OnSubStart1900902,
        ["1900903"] = self.OnSubStart1900903,
        ["1900904"] = self.OnSubStart1900904,
        ["1900905"] = self.OnSubStart1900905,
        ["1900906"] = self.OnSubStart1900906,
        ["1900907"] = self.OnSubStart1900907
    }
end

function Quest19009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1900901"] = self.OnSubFinish1900901,
        ["1900902"] = self.OnSubFinish1900902,
        ["1900903"] = self.OnSubFinish1900903,
        ["1900904"] = self.OnSubFinish1900904,
        ["1900905"] = self.OnSubFinish1900905,
        ["1900906"] = self.OnSubFinish1900906,
        ["1900907"] = self.OnSubFinish1900907
    }
end

function Quest19009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1900901"] = self.OnSubFailed1900901,
        ["1900902"] = self.OnSubFailed1900902,
        ["1900903"] = self.OnSubFailed1900903,
        ["1900904"] = self.OnSubFailed1900904,
        ["1900905"] = self.OnSubFailed1900905,
        ["1900906"] = self.OnSubFailed1900906,
        ["1900907"] = self.OnSubFailed1900907
    }
end

function Quest19009:Start()
    print("Start")
end

function Quest19009:OnDestroy()
    print("OnDestroy")
end

function Quest19009:OnMainFinished(arg1)
    print("OnMainFinished")
    self:NotifyTo(npcs.Npc1638Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1604Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1453Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc163801Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc160401Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc145301Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q19009Trigger1900901_.alias, 3, false)
    self:GetQuestNpcActor(npcs.Coop_BarbaraData.alias):ResetWalkSpeedRatio()
end

function Quest19009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19009:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo(npcs.Npc1638Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1604Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1453Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc163801Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc160401Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc145301Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q19009Trigger1900901_.alias, 3, false)
    self:GetQuestNpcActor(npcs.Coop_BarbaraData.alias):ResetWalkSpeedRatio()
end

function Quest19009:Finish1900906()
    print("Finish1900906")
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    self:ClearSteerToAutonomyTask()
    self:Standby()
    self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "COOP101401Babala11").rot))
    actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 1900906)
end

function Quest19009:OnMovePause()
    print("OnMovePause")
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:SteerToAutonomyTask(tbl, 1, true, true)
end

function Quest19009:OnMoveResume()
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest19009:NpcNarratorOnlyTaskByData1900906OnFinsih()
    print("NpcNarratorOnlyTaskByData1900906OnFinsih")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    actor:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_TASK)
    self:ClearFollowTask()
    actor:NpcRunToTask(self, sceneData:GetDummyPoint(3, "COOP101401Babala11").pos, actor.Finish1900906)
end

function Quest19009:OnSubStart1900901(arg1)
    print("OnSubStart1900901")
    self:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc163801Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc160401Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc145301Data.id, 4)
    self:NotifyTo(npcs.Npc1638Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1604Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1453Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900901)
    self:GetQuestNpcActor(npcs.Npc163801Data.alias):DoFreeStyle(1270, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc160401Data.alias):DoFreeStyle(1270, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc145301Data.alias):DoFreeStyle(1270, true, nil, true, true)
    actorMgr:CreateActorWithPos(datas.Q19009Trigger1900901_.alias, datas.Q19009Trigger1900901_.script, datas.Q19009Trigger1900901_.id, 0, datas.Q19009Trigger1900901_.point.pos, datas.Q19009Trigger1900901_.point.rot, true, false, 3)
end

function Quest19009:OnSubFinish1900901(arg1)
    print("OnSubFinish1900901")
    self:TryPauseCurAutoNarrator()
end

function Quest19009:OnSubFailed1900901(arg1)
    print("OnSubFailed1900901")
end

function Quest19009:OnSubStart1900902(arg1)
    print("OnSubStart1900902")
    self:NotifyTo(npcs.Npc1638Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1604Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1453Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900902)
    self:GetQuestNpcActor(npcs.Npc163801Data.alias):DoFreeStyle(1270, true, nil, true, true)
end

function Quest19009:OnSubFinish1900902(arg1)
    print("OnSubFinish1900902")
end

function Quest19009:OnSubFailed1900902(arg1)
    print("OnSubFailed1900902")
end

function Quest19009:OnSubStart1900903(arg1)
    print("OnSubStart1900903")
    self:NotifyTo(npcs.Npc1638Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1604Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1453Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900903)
    self:GetQuestNpcActor(npcs.Npc160401Data.alias):DoFreeStyle(1270, true, nil, true, true)
end

function Quest19009:OnSubFinish1900903(arg1)
    print("OnSubFinish1900903")
end

function Quest19009:OnSubFailed1900903(arg1)
    print("OnSubFailed1900903")
end

function Quest19009:OnSubStart1900904(arg1)
    print("OnSubStart1900904")
    self:NotifyTo(npcs.Npc1638Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1604Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1453Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900904)
    self:GetQuestNpcActor(npcs.Npc145301Data.alias):DoFreeStyle(1270, true, nil, true, true)
end

function Quest19009:OnSubFinish1900904(arg1)
    print("OnSubFinish1900904")
end

function Quest19009:OnSubFailed1900904(arg1)
    print("OnSubFailed1900904")
end

function Quest19009:OnSubStart1900905(arg1)
    print("OnSubStart1900905")
    self:NotifyTo(npcs.Npc1638Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1604Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1453Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900905)
end

function Quest19009:OnSubFinish1900905(arg1)
    print("OnSubFinish1900905")
    self:SafeDestroyQuestNpc(npcs.Npc163801Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc160401Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc145301Data.alias, 3)
    self:NotifyTo(npcs.Npc1638Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1604Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1453Data.alias, 0, true)
end

function Quest19009:OnSubFailed1900905(arg1)
    print("OnSubFailed1900905")
end

function Quest19009:OnSubStart1900906(arg1)
    print("OnSubStart1900906")
    self:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_BarbaraData.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:SetWalkSpeedRatio(0.9)
    self:NpcForceAvatarWalkByDist(questNpcActor, 3.5, 5.5)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData1900906, 4, 2, -1, self.Finish1900906, nil, nil, self.OnMovePause, self.OnMoveResume, nil, true)
    self:NpcNarratorOnlyTaskByData(questNpcActor, datas.NarratorWithId19009002, self.NpcNarratorOnlyTaskByData1900906OnFinsih)
end

function Quest19009:OnSubFinish1900906(arg1)
    print("OnSubFinish1900906")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_BarbaraData.alias)
    questNpcActor:ResetForceAvatarWalk()
    questNpcActor:DisableInteeHeadCtrl(false)
end

function Quest19009:OnSubFailed1900906(arg1)
    print("OnSubFailed1900906")
end

function Quest19009:OnSubStart1900907(arg1)
    print("OnSubStart1900907")
    self:NotifyTo(npcs.Npc1638Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1604Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1453Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900906)
end

function Quest19009:OnSubFinish1900907(arg1)
    print("OnSubFinish1900907")
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
end

function Quest19009:OnSubFailed1900907(arg1)
    print("OnSubFailed1900907")
end

return Quest19009
