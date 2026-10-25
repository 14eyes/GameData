require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19045 = class("Quest19045", QuestActorProxy)
Quest19045.defaultAlias = "Quest19045"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19045:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19045:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1904501"] = self.OnSubStart1904501,
        ["1904502"] = self.OnSubStart1904502,
        ["1904503"] = self.OnSubStart1904503,
        ["1904504"] = self.OnSubStart1904504,
        ["1904519"] = self.OnSubStart1904519,
        ["1904505"] = self.OnSubStart1904505,
        ["1904516"] = self.OnSubStart1904516,
        ["1904506"] = self.OnSubStart1904506,
        ["1904507"] = self.OnSubStart1904507,
        ["1904508"] = self.OnSubStart1904508,
        ["1904509"] = self.OnSubStart1904509,
        ["1904510"] = self.OnSubStart1904510,
        ["1904511"] = self.OnSubStart1904511,
        ["1904513"] = self.OnSubStart1904513,
        ["1904520"] = self.OnSubStart1904520,
        ["1904521"] = self.OnSubStart1904521,
        ["1904515"] = self.OnSubStart1904515,
        ["1904522"] = self.OnSubStart1904522,
        ["1904512"] = self.OnSubStart1904512,
        ["1904514"] = self.OnSubStart1904514,
        ["1904517"] = self.OnSubStart1904517,
        ["1904518"] = self.OnSubStart1904518
    }
end

function Quest19045:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1904501"] = self.OnSubFinish1904501,
        ["1904502"] = self.OnSubFinish1904502,
        ["1904503"] = self.OnSubFinish1904503,
        ["1904504"] = self.OnSubFinish1904504,
        ["1904519"] = self.OnSubFinish1904519,
        ["1904505"] = self.OnSubFinish1904505,
        ["1904516"] = self.OnSubFinish1904516,
        ["1904506"] = self.OnSubFinish1904506,
        ["1904507"] = self.OnSubFinish1904507,
        ["1904508"] = self.OnSubFinish1904508,
        ["1904509"] = self.OnSubFinish1904509,
        ["1904510"] = self.OnSubFinish1904510,
        ["1904511"] = self.OnSubFinish1904511,
        ["1904513"] = self.OnSubFinish1904513,
        ["1904520"] = self.OnSubFinish1904520,
        ["1904521"] = self.OnSubFinish1904521,
        ["1904515"] = self.OnSubFinish1904515,
        ["1904522"] = self.OnSubFinish1904522,
        ["1904512"] = self.OnSubFinish1904512,
        ["1904514"] = self.OnSubFinish1904514,
        ["1904517"] = self.OnSubFinish1904517,
        ["1904518"] = self.OnSubFinish1904518
    }
end

function Quest19045:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1904501"] = self.OnSubFailed1904501,
        ["1904502"] = self.OnSubFailed1904502,
        ["1904503"] = self.OnSubFailed1904503,
        ["1904504"] = self.OnSubFailed1904504,
        ["1904519"] = self.OnSubFailed1904519,
        ["1904505"] = self.OnSubFailed1904505,
        ["1904516"] = self.OnSubFailed1904516,
        ["1904506"] = self.OnSubFailed1904506,
        ["1904507"] = self.OnSubFailed1904507,
        ["1904508"] = self.OnSubFailed1904508,
        ["1904509"] = self.OnSubFailed1904509,
        ["1904510"] = self.OnSubFailed1904510,
        ["1904511"] = self.OnSubFailed1904511,
        ["1904513"] = self.OnSubFailed1904513,
        ["1904520"] = self.OnSubFailed1904520,
        ["1904521"] = self.OnSubFailed1904521,
        ["1904515"] = self.OnSubFailed1904515,
        ["1904522"] = self.OnSubFailed1904522,
        ["1904512"] = self.OnSubFailed1904512,
        ["1904514"] = self.OnSubFailed1904514,
        ["1904517"] = self.OnSubFailed1904517,
        ["1904518"] = self.OnSubFailed1904518
    }
end

function Quest19045:Start()
    print("Start")
end

function Quest19045:OnDestroy()
    print("OnDestroy")
end

function Quest19045:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 20036)
end

function Quest19045:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19045:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 20036)
    self:EnablePlayerInput(true)
end

function Quest19045:Finish03()
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    local actor = actorMgr:GetActor(clientData.ActorAlias)
    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc1024Data.alias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1904503)
    end
end

function Quest19045:Finish06()
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    local actor = actorMgr:GetActor(clientData.ActorAlias)
    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc1024Data.alias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1904506)
    end
end

function Quest19045:Finish08()
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1904508)
    end
end

function Quest19045:Finish10()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1904510)
    end
end

function Quest19045:StartCoop()
    print("StartCoop")
end

function Quest19045:Finish17()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1904517)
    end
end

function Quest19045:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:ShowReadingDialog(100740)
        end
    elseif arg1 == 2 then
    end
end

function Quest19045:PuzzleFailInteract()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    actor:GetQuestNpcActor(npcs.Npc1024Data.alias):DoFreeStateTrigger()
    self:EnablePlayerInput(true)
    actor:RequestInteraction(npcs.Npc1024Data.alias)
end

function Quest19045:NpcTurn10()
    print("NpcTurn10")
    self:GetQuestNpcActor(npcs.Npc1024Data.alias):TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(20036, "Q19045Bennett6").rot))
end

function Quest19045:NpcStandby()
    print("NpcStandby")
    self:GetQuestNpcActor(npcs.Npc1024Data.alias):DoFreeStateTrigger()
end

function Quest19045:OnSubStart1904501(arg1)
    print("OnSubStart1904501")
    self:SetNavigationByMainId(19045, true)
end

function Quest19045:OnSubFinish1904501(arg1)
    print("OnSubFinish1904501")
end

function Quest19045:OnSubFailed1904501(arg1)
    print("OnSubFailed1904501")
end

function Quest19045:OnSubStart1904502(arg1)
    print("OnSubStart1904502")
    self:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904501)
end

function Quest19045:OnSubFinish1904502(arg1)
    print("OnSubFinish1904502")
end

function Quest19045:OnSubFailed1904502(arg1)
    print("OnSubFailed1904502")
    self:RemoveCoopInteractionDataFromSubStartPoint(103201, 1904501)
end

function Quest19045:OnSubStart1904503(arg1)
    print("OnSubStart1904503")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData1, 8, 6, -1, self.Finish03, nil, nil, nil, nil, nil, false)
end

function Quest19045:OnSubFinish1904503(arg1)
    print("OnSubFinish1904503")
end

function Quest19045:OnSubFailed1904503(arg1)
    print("OnSubFailed1904503")
    self:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_PAUSE_TASK)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:ClearFollowTask()
    questNpcActor:Standby()
end

function Quest19045:OnSubStart1904504(arg1)
    print("OnSubStart1904504")
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904502)
end

function Quest19045:OnSubFinish1904504(arg1)
    print("OnSubFinish1904504")
end

function Quest19045:OnSubFailed1904504(arg1)
    print("OnSubFailed1904504")
    self:RemoveCoopInteractionDataFromSubStartPoint(103201, 1904502)
end

function Quest19045:OnSubStart1904519(arg1)
    print("OnSubStart1904519")
end

function Quest19045:OnSubFinish1904519(arg1)
    print("OnSubFinish1904519")
end

function Quest19045:OnSubFailed1904519(arg1)
    print("OnSubFailed1904519")
end

function Quest19045:OnSubStart1904505(arg1)
    print("OnSubStart1904505")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    self:NpcRunToTask(questNpcActor, sceneData:GetDummyPoint(20036, "Q19045Bennett3").pos)
    self:NarratorOnlyTaskByData(datas.Narrator05Start)
end

function Quest19045:OnSubFinish1904505(arg1)
    print("OnSubFinish1904505")
end

function Quest19045:OnSubFailed1904505(arg1)
    print("OnSubFailed1904505")
    self:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_TASK)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:ClearAllTask()
    questNpcActor:Standby()
end

function Quest19045:OnSubStart1904516(arg1)
    print("OnSubStart1904516")
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904507)
    self:CallDelay(5, self.PuzzleFailInteract)
end

function Quest19045:OnSubFinish1904516(arg1)
    print("OnSubFinish1904516")
end

function Quest19045:OnSubFailed1904516(arg1)
    print("OnSubFailed1904516")
    self:RemoveCoopInteractionDataFromSubStartPoint(103201, 1904507)
    self:UnCallFunc(self.PuzzleFailInteract)
end

function Quest19045:OnSubStart1904506(arg1)
    print("OnSubStart1904506")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData2, 8, 6, -1, self.Finish06, nil, nil, nil, nil, nil, false)
end

function Quest19045:OnSubFinish1904506(arg1)
    print("OnSubFinish1904506")
end

function Quest19045:OnSubFailed1904506(arg1)
    print("OnSubFailed1904506")
    self:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_PAUSE_TASK)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:ClearFollowTask()
    questNpcActor:Standby()
end

function Quest19045:OnSubStart1904507(arg1)
    print("OnSubStart1904507")
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904503)
end

function Quest19045:OnSubFinish1904507(arg1)
    print("OnSubFinish1904507")
end

function Quest19045:OnSubFailed1904507(arg1)
    print("OnSubFailed1904507")
    self:RemoveCoopInteractionDataFromSubStartPoint(103201, 1904503)
end

function Quest19045:OnSubStart1904508(arg1)
    print("OnSubStart1904508")
    self:GetQuestNpcActor(npcs.Npc1024Data.alias):TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(20036, "Q19045Bennett4Turn").rot))
end

function Quest19045:OnSubFinish1904508(arg1)
    print("OnSubFinish1904508")
end

function Quest19045:OnSubFailed1904508(arg1)
    print("OnSubFailed1904508")
end

function Quest19045:OnSubStart1904509(arg1)
    print("OnSubStart1904509")
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904504)
end

function Quest19045:OnSubFinish1904509(arg1)
    print("OnSubFinish1904509")
end

function Quest19045:OnSubFailed1904509(arg1)
    print("OnSubFailed1904509")
    self:RemoveCoopInteractionDataFromSubStartPoint(103201, 1904504)
end

function Quest19045:OnSubStart1904510(arg1)
    print("OnSubStart1904510")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    self:NpcWalkToTask(questNpcActor, sceneData:GetDummyPoint(20036, "Q19045Bennett8").pos, self.Finish10)
end

function Quest19045:OnSubFinish1904510(arg1)
    print("OnSubFinish1904510")
end

function Quest19045:OnSubFailed1904510(arg1)
    print("OnSubFailed1904510")
    self:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_TASK)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:ClearAllTask()
    questNpcActor:Standby()
end

function Quest19045:OnSubStart1904511(arg1)
    print("OnSubStart1904511")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:Standby()
    questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(20036, "Q19045Bennett8").rot))
    questNpcActor:DoFreeStyle(1030, true, nil, true, true)
end

function Quest19045:OnSubFinish1904511(arg1)
    print("OnSubFinish1904511")
end

function Quest19045:OnSubFailed1904511(arg1)
    print("OnSubFailed1904511")
end

function Quest19045:OnSubStart1904513(arg1)
    print("OnSubStart1904513")
end

function Quest19045:OnSubFinish1904513(arg1)
    print("OnSubFinish1904513")
    self:ClearNarratorTask()
    self:StopNarrator()
    actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
    self:NarratorOnlyTaskByData(datas.NarratorFail1, nil, 19045)
    self:GetQuestNpcActor(npcs.Npc1024Data.alias):DoFreeStyle(1070, true, nil, true, true)
    self:CallDelay(5, self.NpcStandby)
end

function Quest19045:OnSubFailed1904513(arg1)
    print("OnSubFailed1904513")
end

function Quest19045:OnSubStart1904520(arg1)
    print("OnSubStart1904520")
end

function Quest19045:OnSubFinish1904520(arg1)
    print("OnSubFinish1904520")
    self:ClearNarratorTask()
    self:StopNarrator()
    actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
    self:NarratorOnlyTaskByData(datas.NarratorFail2, nil, 19045)
    self:GetQuestNpcActor(npcs.Npc1024Data.alias):DoFreeStyle(1070, true, nil, true, true)
    self:CallDelay(5, self.NpcStandby)
end

function Quest19045:OnSubFailed1904520(arg1)
    print("OnSubFailed1904520")
end

function Quest19045:OnSubStart1904521(arg1)
    print("OnSubStart1904521")
end

function Quest19045:OnSubFinish1904521(arg1)
    print("OnSubFinish1904521")
    self:GetQuestNpcActor(npcs.Npc1024Data.alias):DoFreeStyle(1160, true, nil, true, true)
end

function Quest19045:OnSubFailed1904521(arg1)
    print("OnSubFailed1904521")
end

function Quest19045:OnSubStart1904515(arg1)
    print("OnSubStart1904515")
    self:ClearNarratorTask()
    self:StopNarrator()
    actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904505)
    self:NarratorOnlyTaskByData(datas.NarratorFail3, self.PuzzleFailInteract, 19045)
end

function Quest19045:OnSubFinish1904515(arg1)
    print("OnSubFinish1904515")
end

function Quest19045:OnSubFailed1904515(arg1)
    print("OnSubFailed1904515")
    self:RemoveCoopInteractionDataFromSubStartPoint(103201, 1904505)
end

function Quest19045:OnSubStart1904522(arg1)
    print("OnSubStart1904522")
end

function Quest19045:OnSubFinish1904522(arg1)
    print("OnSubFinish1904522")
end

function Quest19045:OnSubFailed1904522(arg1)
    print("OnSubFailed1904522")
end

function Quest19045:OnSubStart1904512(arg1)
    print("OnSubStart1904512")
end

function Quest19045:OnSubFinish1904512(arg1)
    print("OnSubFinish1904512")
end

function Quest19045:OnSubFailed1904512(arg1)
    print("OnSubFailed1904512")
end

function Quest19045:OnSubStart1904514(arg1)
    print("OnSubStart1904514")
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904508)
    self:CallDelay(5, self.PuzzleFailInteract)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(20036, "Q19045Bennett7").pos, 1, 3, true, true)
    self:GetQuestNpcActor(npcs.Npc1024Data.alias):DoFreeStateTrigger()
    self:EnablePlayerInput(false)
end

function Quest19045:OnSubFinish1904514(arg1)
    print("OnSubFinish1904514")
    self:EnablePlayerInput(true)
end

function Quest19045:OnSubFailed1904514(arg1)
    print("OnSubFailed1904514")
    self:EnablePlayerInput(true)
    self:RemoveCoopInteractionDataFromSubStartPoint(103201, 1904508)
end

function Quest19045:OnSubStart1904517(arg1)
    print("OnSubStart1904517")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData3, 8, 6, -1, nil, nil, nil, nil, nil, nil, false)
end

function Quest19045:OnSubFinish1904517(arg1)
    print("OnSubFinish1904517")
    self:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_PAUSE_TASK)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:ClearFollowTask()
    questNpcActor:Standby()
end

function Quest19045:OnSubFailed1904517(arg1)
    print("OnSubFailed1904517")
    self:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_PAUSE_TASK)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:ClearFollowTask()
    questNpcActor:Standby()
end

function Quest19045:OnSubStart1904518(arg1)
    print("OnSubStart1904518")
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904506)
    self:RequestInteraction(npcs.Npc1024Data.alias)
end

function Quest19045:OnSubFinish1904518(arg1)
    print("OnSubFinish1904518")
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 20036)
end

function Quest19045:OnSubFailed1904518(arg1)
    print("OnSubFailed1904518")
    self:RemoveCoopInteractionDataFromSubStartPoint(103201, 1904506)
end

return Quest19045
