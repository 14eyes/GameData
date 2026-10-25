require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19119 = class("Quest19119", QuestActorProxy)
Quest19119.defaultAlias = "Quest19119"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19119:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19119:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1911901"] = self.OnSubStart1911901,
        ["1911902"] = self.OnSubStart1911902,
        ["1911903"] = self.OnSubStart1911903,
        ["1911904"] = self.OnSubStart1911904,
        ["1911905"] = self.OnSubStart1911905,
        ["1911906"] = self.OnSubStart1911906,
        ["1911907"] = self.OnSubStart1911907
    }
end

function Quest19119:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1911901"] = self.OnSubFinish1911901,
        ["1911902"] = self.OnSubFinish1911902,
        ["1911903"] = self.OnSubFinish1911903,
        ["1911904"] = self.OnSubFinish1911904,
        ["1911905"] = self.OnSubFinish1911905,
        ["1911906"] = self.OnSubFinish1911906,
        ["1911907"] = self.OnSubFinish1911907
    }
end

function Quest19119:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1911901"] = self.OnSubFailed1911901,
        ["1911902"] = self.OnSubFailed1911902,
        ["1911903"] = self.OnSubFailed1911903,
        ["1911904"] = self.OnSubFailed1911904,
        ["1911905"] = self.OnSubFailed1911905,
        ["1911906"] = self.OnSubFailed1911906,
        ["1911907"] = self.OnSubFailed1911907
    }
end

function Quest19119:Start()
    print("Start")
end

function Quest19119:OnDestroy()
    print("OnDestroy")
end

function Quest19119:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19119:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19119:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3082Data.alias, 3)
end

function Quest19119:FinishWalkQuest1()
    print("FinishSubQuest1911909")
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    actorMgr:GetActor(clientData.ActorAlias):ClearNarratorTask()
    self:Standby()
    self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q1911902route6").rot))
    self:ClearSteerToAutonomyTask()
    actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 1911902)
end

function Quest19119:FinishWalkQuest2()
    print("FinishSubQuest1911909")
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    actorMgr:GetActor(clientData.ActorAlias):ClearNarratorTask()
    self:Standby()
    self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q1911902route6").rot))
    self:ClearSteerToAutonomyTask()
    actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 1911904)
end

function Quest19119:FinishWalkQuest3()
    print("FinishSubQuest1911909")
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    actorMgr:GetActor(clientData.ActorAlias):ClearNarratorTask()
    self:Standby()
    self:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q1911902route6").rot))
    self:ClearSteerToAutonomyTask()
    actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 1911906)
end

function Quest19119:OnMovePause()
    print("OnMovePause")
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    local actor = actorMgr:GetActor("19119")
    self:SteerToAutonomyTask(tbl, 1, true, true)
end

function Quest19119:OnMoveResume()
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest19119:OnSubStart1911901(arg1)
    print("OnSubStart1911901")
    self:CreateQuestNpcWithTriggerBlack("1911901trigger", subIDs.q1911901, npcs.Coop_TohmaData.id, 1, 2, 2)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911901)
end

function Quest19119:OnSubFinish1911901(arg1)
    print("OnSubFinish1911901")
end

function Quest19119:OnSubFailed1911901(arg1)
    print("OnSubFailed1911901")
end

function Quest19119:OnSubStart1911902(arg1)
    print("OnSubStart1911902")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_TohmaData.alias)
    questNpcActor:Standby()
    self:NpcForceAvatarWalkByDist(questNpcActor, 2.5, 4.5)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:SetWalkSpeedRatio(1)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 4, 2, -1, self.FinishWalkQuest1, nil, nil, self.OnMovePause, self.OnMoveResume, nil, true)
    questNpcActor:EnableInteraction(false)
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId1)
    end)
end

function Quest19119:OnSubFinish1911902(arg1)
    print("OnSubFinish1911902")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_TohmaData.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
    questNpcActor:ResetForceAvatarWalk()
end

function Quest19119:OnSubFailed1911902(arg1)
    print("OnSubFailed1911902")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_TohmaData.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
end

function Quest19119:OnSubStart1911903(arg1)
    print("OnSubStart1911903")
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911902)
    self:RequestInteraction(npcs.Coop_TohmaData.alias)
end

function Quest19119:OnSubFinish1911903(arg1)
    print("OnSubFinish1911903")
end

function Quest19119:OnSubFailed1911903(arg1)
    print("OnSubFailed1911903")
end

function Quest19119:OnSubStart1911904(arg1)
    print("OnSubStart1911904")
    self:CreateQuestNpc(arg1, npcs.Npc3082Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_TohmaData.alias)
    questNpcActor:Standby()
    self:NpcForceAvatarWalkByDist(questNpcActor, 2.5, 4.5)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:SetWalkSpeedRatio(0.9)
    self:CallDelay(2, function(arg1)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if arg1:GetQuestGlobalVar(12042) == 0 then
            actor:NarratorOnlyTaskByData(datas.NarratorWithId2)
        else
            actor:NarratorOnlyTaskByData(datas.NarratorWithId6)
        end
    end)

    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData1, 4, 2, -1, function(arg1)
        if arg1.BeFollowState == BeFollowState.FAILED then
            actorMgr:GetActor(clientData.ActorAlias):ClearNarratorTask()
        else
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            local questNpcActor = actor:GetQuestNpcActor(npcs.Coop_TohmaData.alias)
            actor:NarratorOnlyTaskByData(datas.NarratorWithId3)
            questNpcActor:Standby()
            questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q1911902route3").rot))
            actor:CallDelay(6, function(arg1)
                arg1:GetQuestNpcActor(npcs.Coop_TohmaData.alias):DoFreeStyle(1200)
            end)

            actor:CallDelay(11, function(arg1)
                local questNpcActor = arg1:GetQuestNpcActor(npcs.Coop_TohmaData.alias)
                questNpcActor:SetWalkSpeedRatio(1)
                local actor = actorMgr:GetActor(clientData.ActorAlias)
                if arg1:GetQuestGlobalVar(12042) == 0 then
                    actor:NarratorOnlyTaskByData(datas.NarratorWithId4)
                else
                    actor:NarratorOnlyTaskByData(datas.NarratorWithId7)
                end

                actor:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData3, 4, 2, -1, arg1.FinishWalkQuest2, nil, nil, arg1.OnMovePause, arg1.OnMoveResume, nil, true)
            end)
        end
    end, nil, nil, self.OnMovePause, self.OnMoveResume, nil, true)

    questNpcActor:EnableInteraction(false)
end

function Quest19119:OnSubFinish1911904(arg1)
    print("OnSubFinish1911904")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_TohmaData.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
    questNpcActor:ResetForceAvatarWalk()
end

function Quest19119:OnSubFailed1911904(arg1)
    print("OnSubFailed1911904")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_TohmaData.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
end

function Quest19119:OnSubStart1911905(arg1)
    print("OnSubStart1911905")
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911903)
    self:RequestInteraction(npcs.Coop_TohmaData.alias)
end

function Quest19119:OnSubFinish1911905(arg1)
    print("OnSubFinish1911905")
    self:SafeDestroyQuestNpc(npcs.Npc3082Data.alias, 3)
end

function Quest19119:OnSubFailed1911905(arg1)
    print("OnSubFailed1911905")
end

function Quest19119:OnSubStart1911906(arg1)
    print("OnSubStart1911906")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_TohmaData.alias)
    questNpcActor:Standby()
    self:NpcForceAvatarWalkByDist(questNpcActor, 2.5, 4.5)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:SetWalkSpeedRatio(1)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData2, 4, 2, -1, self.FinishWalkQuest3, nil, nil, self.OnMovePause, self.OnMoveResume, nil, true)
    questNpcActor:EnableInteraction(false)
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId5)
    end)
end

function Quest19119:OnSubFinish1911906(arg1)
    print("OnSubFinish1911906")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_TohmaData.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
    questNpcActor:ResetForceAvatarWalk()
end

function Quest19119:OnSubFailed1911906(arg1)
    print("OnSubFailed1911906")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_TohmaData.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
end

function Quest19119:OnSubStart1911907(arg1)
    print("OnSubStart1911907")
    self:CreateQuestNpc(arg1, npcs.Coop_TohmaData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105001, 1911904)
    self:RequestInteraction(npcs.Coop_TohmaData.alias)
end

function Quest19119:OnSubFinish1911907(arg1)
    print("OnSubFinish1911907")
    self:SafeDestroyQuestNpc(npcs.Coop_TohmaData.alias, 3)
end

function Quest19119:OnSubFailed1911907(arg1)
    print("OnSubFailed1911907")
end

return Quest19119
