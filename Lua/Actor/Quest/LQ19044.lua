require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19044 = class("Quest19044", QuestActorProxy)
Quest19044.defaultAlias = "Quest19044"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19044:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19044:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1904401"] = self.OnSubStart1904401,
        ["1904420"] = self.OnSubStart1904420,
        ["1904402"] = self.OnSubStart1904402,
        ["1904403"] = self.OnSubStart1904403,
        ["1904404"] = self.OnSubStart1904404,
        ["1904415"] = self.OnSubStart1904415,
        ["1904416"] = self.OnSubStart1904416,
        ["1904407"] = self.OnSubStart1904407,
        ["1904417"] = self.OnSubStart1904417,
        ["1904409"] = self.OnSubStart1904409,
        ["1904412"] = self.OnSubStart1904412,
        ["1904413"] = self.OnSubStart1904413,
        ["1904410"] = self.OnSubStart1904410,
        ["1904419"] = self.OnSubStart1904419,
        ["1904411"] = self.OnSubStart1904411
    }
end

function Quest19044:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1904401"] = self.OnSubFinish1904401,
        ["1904420"] = self.OnSubFinish1904420,
        ["1904402"] = self.OnSubFinish1904402,
        ["1904403"] = self.OnSubFinish1904403,
        ["1904404"] = self.OnSubFinish1904404,
        ["1904415"] = self.OnSubFinish1904415,
        ["1904416"] = self.OnSubFinish1904416,
        ["1904407"] = self.OnSubFinish1904407,
        ["1904417"] = self.OnSubFinish1904417,
        ["1904409"] = self.OnSubFinish1904409,
        ["1904412"] = self.OnSubFinish1904412,
        ["1904413"] = self.OnSubFinish1904413,
        ["1904410"] = self.OnSubFinish1904410,
        ["1904419"] = self.OnSubFinish1904419,
        ["1904411"] = self.OnSubFinish1904411
    }
end

function Quest19044:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1904401"] = self.OnSubFailed1904401,
        ["1904420"] = self.OnSubFailed1904420,
        ["1904402"] = self.OnSubFailed1904402,
        ["1904403"] = self.OnSubFailed1904403,
        ["1904404"] = self.OnSubFailed1904404,
        ["1904415"] = self.OnSubFailed1904415,
        ["1904416"] = self.OnSubFailed1904416,
        ["1904407"] = self.OnSubFailed1904407,
        ["1904417"] = self.OnSubFailed1904417,
        ["1904409"] = self.OnSubFailed1904409,
        ["1904412"] = self.OnSubFailed1904412,
        ["1904413"] = self.OnSubFailed1904413,
        ["1904410"] = self.OnSubFailed1904410,
        ["1904419"] = self.OnSubFailed1904419,
        ["1904411"] = self.OnSubFailed1904411
    }
end

function Quest19044:Start()
    print("Start")
end

function Quest19044:OnDestroy()
    print("OnDestroy")
end

function Quest19044:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 20035)
    self:SafeDestroyQuestNpc(npcs.Npc10374Data.alias, 20035)
    self:SafeDestroyQuestNpc(npcs.Npc10371Data.alias, 20035)
    self:SafeDestroyQuestNpc(npcs.Npc10372Data.alias, 20035)
    self:SafeDestroyQuestNpc(npcs.Npc10373Data.alias, 20035)
end

function Quest19044:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19044:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 20035)
    self:SafeDestroyQuestNpc(npcs.Npc10374Data.alias, 20035)
    self:SafeDestroyQuestNpc(npcs.Npc10371Data.alias, 20035)
    self:SafeDestroyQuestNpc(npcs.Npc10372Data.alias, 20035)
    self:SafeDestroyQuestNpc(npcs.Npc10373Data.alias, 20035)
end

function Quest19044:Finish05()
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    actorMgr:GetActor("Quest19044"):FinishQuestID(false, 1904405)
end

function Quest19044:Finish07()
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1904407)
    end
end

function Quest19044:Narrator07()
    self:NarratorOnlyTaskByData(datas.NarratorWithId07, nil, 19044)
end

function Quest19044:Narrator05()
    self:NarratorOnlyTaskByData(datas.NarratorWithId05, nil, 0)
end

function Quest19044:NpcRun01()
    self:GetQuestNpcActor(npcs.Npc1024Data.alias):RunToTask(sceneData:GetDummyPoint(3, "Q19044BennettCook").pos, self.NpcTurn01)
end

function Quest19044:NpcRun07()
    self:GetQuestNpcActor(npcs.Npc1024Data.alias):RunToRouteTask(datas.RoutePointsData1)
end

function Quest19044:Narrator09()
    self:NarratorOnlyTaskByData(datas.NarratorWithId09Finish, nil, 19044)
end

function Quest19044:Narrator10()
    self:NarratorOnlyTaskByData(datas.NarratorWithId10Finish, function(arg1)
        arg1:ShowBlackScreen(0.2, 0.5, 0.2, function(arg1)
            arg1:CreateQuestNpcById(1904411, npcs.Npc1024Data.id, 1)
            arg1:RequestInteraction(npcs.Npc1024Data.alias)
        end, nil, nil, "")
    end, 19044)
end

function Quest19044:NpcRun05()
    self:GetQuestNpcActor(npcs.Npc1024Data.alias):RunToTask(sceneData:GetDummyPoint(20035, "Q19044Bennett2").pos, self.Finish05)
end

function Quest19044:Interact11()
    self:CreateQuestNpcById(1904411, npcs.Npc1024Data.id, 1)
    self:RequestInteraction(npcs.Npc1024Data.alias)
end

function Quest19044:NpcRun09()
    actorMgr:GetActor("Quest19044")
end

function Quest19044:NpcTurn01()
    self:GetQuestNpcActor(npcs.Npc1024Data.alias):TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q19044BennettCook").rot))
end

function Quest19044:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1904415)
        end
    elseif arg1 == 2 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1904416)
        end
    elseif arg1 == 3 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1904417)
        end
    end
end

function Quest19044:OnSubStart1904401(arg1)
    print("OnSubStart1904401")
    self:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 1)
    self:SetNavigationByMainId(19044, true)
    self:CallDelay(3, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc1024Data.alias)
        arg1:NpcRunToRouteTask(questNpcActor, datas.RoutePointsData2, function(arg1)
            local actor = actorMgr:GetActor("19044")
            local questNpcActor = actor:GetQuestNpcActor(npcs.Npc1024Data.alias, 0)
            questNpcActor:DoFreeStateTrigger()
            questNpcActor:Standby()
            questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q19044BennettCook").rot))
            actor:FinishQuestID(false, 1904420)
        end)
    end)
end

function Quest19044:OnSubFinish1904401(arg1)
    print("OnSubFinish1904401")
end

function Quest19044:OnSubFailed1904401(arg1)
    print("OnSubFailed1904401")
end

function Quest19044:OnSubStart1904402(arg1)
    print("OnSubStart1904402")
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904401)
    self:RequestInteraction(npcs.Npc1024Data.alias)
end

function Quest19044:OnSubFinish1904402(arg1)
    print("OnSubFinish1904402")
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
end

function Quest19044:OnSubFailed1904402(arg1)
    print("OnSubFailed1904402")
end

function Quest19044:OnSubStart1904403(arg1)
    print("OnSubStart1904403")
end

function Quest19044:OnSubFinish1904403(arg1)
    print("OnSubFinish1904403")
end

function Quest19044:OnSubFailed1904403(arg1)
    print("OnSubFailed1904403")
end

function Quest19044:OnSubStart1904404(arg1)
    print("OnSubStart1904404")
    self:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904402)
    self:SafeDestroyQuestNpc(npcs.Npc10371Data.alias, 20035)
    self:SafeDestroyQuestNpc(npcs.Npc10372Data.alias, 20035)
    self:SafeDestroyQuestNpc(npcs.Npc10373Data.alias, 20035)
end

function Quest19044:OnSubFinish1904404(arg1)
    print("OnSubFinish1904404")
end

function Quest19044:OnSubFailed1904404(arg1)
    print("OnSubFailed1904404")
    self:RemoveCoopInteractionDataFromSubStartPoint(103201, 1904402)
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 20035)
end

function Quest19044:OnSubStart1904407(arg1)
    print("OnSubStart1904407")
    self:CreateQuestNpc(arg1, npcs.Npc10374Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10371Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10372Data.id, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 8, 6, -1, self.Finish07, nil, nil, nil, nil, nil, false)
end

function Quest19044:OnSubFinish1904407(arg1)
    print("OnSubFinish1904407")
    self:NarratorOnlyTaskByData(datas.NarratorWithId07Finish, nil, 19044)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(20035, "Q19044NpcBorn").pos, 2, 3, true, false)
end

function Quest19044:OnSubFailed1904407(arg1)
    print("OnSubFailed1904407")
    self:SafeDestroyQuestNpc(npcs.Npc10374Data.alias, 20035)
    self:SafeDestroyQuestNpc(npcs.Npc10371Data.alias, 20035)
    self:SafeDestroyQuestNpc(npcs.Npc10372Data.alias, 20035)
    self:SafeDestroyQuestNpc(npcs.Npc10373Data.alias, 20035)
    self:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_PAUSE_TASK)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:ClearFollowTask()
    questNpcActor:Standby()
end

function Quest19044:OnSubStart1904409(arg1)
    print("OnSubStart1904409")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:EnableInteraction(false)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData1, 8, 6, -1, function(arg1)
        local actor = actorMgr:GetActor("19044")
        local questNpcActor = actor:GetQuestNpcActor(npcs.Npc1024Data.alias, 0)
        questNpcActor:EnableInteraction(true)
        questNpcActor:DoFreeStateTrigger()
        questNpcActor:Standby()
        actor:RequestCoopInteractionFromSubStartPoint(103201, 1904404)
        questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(20035, "Q19044Bennett5").rot))
    end, nil, nil, nil, nil, nil, false)
end

function Quest19044:OnSubFinish1904409(arg1)
    print("OnSubFinish1904409")
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 20035)
end

function Quest19044:OnSubFailed1904409(arg1)
    print("OnSubFailed1904409")
    self:RemoveCoopInteractionDataFromSubStartPoint(103201, 1904404)
    self:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_PAUSE_TASK)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:ClearFollowTask()
    questNpcActor:Standby()
end

function Quest19044:OnSubStart1904410(arg1)
    print("OnSubStart1904410")
    self:CreateQuestNpc(arg1, npcs.Npc10373Data.id, 1)
end

function Quest19044:OnSubFinish1904410(arg1)
    print("OnSubFinish1904410")
end

function Quest19044:OnSubFailed1904410(arg1)
    print("OnSubFailed1904410")
end

function Quest19044:OnSubStart1904411(arg1)
    print("OnSubStart1904411")
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904405)
    self:CallDelay(5, self.Narrator10)
end

function Quest19044:OnSubFinish1904411(arg1)
    print("OnSubFinish1904411")
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 20035)
    self:SafeDestroyQuestNpc(npcs.Npc10374Data.alias, 20035)
    self:SafeDestroyQuestNpc(npcs.Npc10371Data.alias, 20035)
    self:SafeDestroyQuestNpc(npcs.Npc10372Data.alias, 20035)
    self:SafeDestroyQuestNpc(npcs.Npc10373Data.alias, 20035)
end

function Quest19044:OnSubFailed1904411(arg1)
    print("OnSubFailed1904411")
    self:RemoveCoopInteractionDataFromSubStartPoint(103201, 1904405)
    self:UnCallFunc(self.Narrator10)
end

function Quest19044:OnSubStart1904412(arg1)
    print("OnSubStart1904412")
end

function Quest19044:OnSubFinish1904412(arg1)
    print("OnSubFinish1904412")
end

function Quest19044:OnSubFailed1904412(arg1)
    print("OnSubFailed1904412")
end

function Quest19044:OnSubStart1904413(arg1)
    print("OnSubStart1904413")
end

function Quest19044:OnSubFinish1904413(arg1)
    print("OnSubFinish1904413")
end

function Quest19044:OnSubFailed1904413(arg1)
    print("OnSubFailed1904413")
end

function Quest19044:OnSubStart1904415(arg1)
    print("OnSubStart1904415")
end

function Quest19044:OnSubFinish1904415(arg1)
    print("OnSubFinish1904415")
end

function Quest19044:OnSubFailed1904415(arg1)
    print("OnSubFailed1904415")
end

function Quest19044:OnSubStart1904416(arg1)
    print("OnSubStart1904416")
end

function Quest19044:OnSubFinish1904416(arg1)
    print("OnSubFinish1904416")
end

function Quest19044:OnSubFailed1904416(arg1)
    print("OnSubFailed1904416")
end

function Quest19044:OnSubStart1904417(arg1)
    print("OnSubStart1904417")
end

function Quest19044:OnSubFinish1904417(arg1)
    print("OnSubFinish1904417")
end

function Quest19044:OnSubFailed1904417(arg1)
    print("OnSubFailed1904417")
end

function Quest19044:OnSubStart1904419(arg1)
    print("OnSubStart1904419")
end

function Quest19044:OnSubFinish1904419(arg1)
    print("OnSubFinish1904419")
end

function Quest19044:OnSubFailed1904419(arg1)
    print("OnSubFailed1904419")
end

function Quest19044:OnSubStart1904420(arg1)
    print("OnSubStart1904420")
end

function Quest19044:OnSubFinish1904420(arg1)
    print("OnSubFinish1904420")
end

function Quest19044:OnSubFailed1904420(arg1)
    print("OnSubFailed1904420")
end

return Quest19044
