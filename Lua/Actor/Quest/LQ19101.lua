require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19101 = class("Quest19101", QuestActorProxy)
Quest19101.defaultAlias = "Quest19101"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19101:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19101:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1910101"] = self.OnSubStart1910101,
        ["1910102"] = self.OnSubStart1910102,
        ["1910103"] = self.OnSubStart1910103,
        ["1910104"] = self.OnSubStart1910104,
        ["1910105"] = self.OnSubStart1910105
    }
end

function Quest19101:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1910101"] = self.OnSubFinish1910101,
        ["1910102"] = self.OnSubFinish1910102,
        ["1910103"] = self.OnSubFinish1910103,
        ["1910104"] = self.OnSubFinish1910104,
        ["1910105"] = self.OnSubFinish1910105
    }
end

function Quest19101:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1910101"] = self.OnSubFailed1910101,
        ["1910102"] = self.OnSubFailed1910102,
        ["1910103"] = self.OnSubFailed1910103,
        ["1910104"] = self.OnSubFailed1910104,
        ["1910105"] = self.OnSubFailed1910105
    }
end

function Quest19101:Start()
    print("Start")
end

function Quest19101:OnDestroy()
    print("OnDestroy")
end

function Quest19101:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19101:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19101:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:LightNotifyTo(npcs.Npc1461Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1431Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc146101Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc143101Data.alias, 3)
    self:ActorDestroy("Q1910104Trigger")
    self:ActorDestroy("Q1910102Trigger")
end

function Quest19101:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19101:OnSubStart1910101(arg1)
    print("OnSubStart1910101")
    self:CreateQuestNpc(arg1, npcs.Npc146101Data.id, 1)
    self:NotifyTo(npcs.Npc1461Data.alias, 1, true)
end

function Quest19101:OnSubFinish1910101(arg1)
    print("OnSubFinish1910101")
    self:SafeDestroyQuestNpc(npcs.Npc146101Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1461Data.alias, 0, true)
end

function Quest19101:OnSubFailed1910101(arg1)
    print("OnSubFailed1910101")
end

function Quest19101:OnSubStart1910102(arg1)
    print("OnSubStart1910102")
    self:CreateQuestNpc(arg1, npcs.Coop_DionaData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc143101Data.id, 2)
    self:NotifyTo(npcs.Npc1431Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910101)
    actorMgr:CreateActorWithPos("Q1910102Trigger", "Actor/Gadget/Q1910102Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Diona01_01").pos, sceneData:GetDummyPoint(3, "COOP103901Diona01_01").rot, true, false, 3)
end

function Quest19101:OnSubFinish1910102(arg1)
    print("OnSubFinish1910102")
    self:SafeDestroyQuestNpc(npcs.Npc143101Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1431Data.alias, 0, true)
end

function Quest19101:OnSubFailed1910102(arg1)
    print("OnSubFailed1910102")
end

function Quest19101:OnSubStart1910103(arg1)
    print("OnSubStart1910103")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_DionaData.alias, 19101)
    self:NpcRunToRouteTask(questNpcActor, datas.RunTo1910103, function(arg1)
        actorMgr:GetActor("19101"):FinishQuestID(false, 1910103)
    end)
end

function Quest19101:OnSubFinish1910103(arg1)
    print("OnSubFinish1910103")
end

function Quest19101:OnSubFailed1910103(arg1)
    print("OnSubFailed1910103")
end

function Quest19101:OnSubStart1910104(arg1)
    print("OnSubStart1910104")
    actorMgr:CreateActorWithPos("Q1910104Trigger", "Actor/Gadget/Q1910104Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Diona08").pos, sceneData:GetDummyPoint(3, "COOP103901Diona08").rot, true, false, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
end

function Quest19101:OnSubFinish1910104(arg1)
    print("OnSubFinish1910104")
end

function Quest19101:OnSubFailed1910104(arg1)
    print("OnSubFailed1910104")
end

function Quest19101:OnSubStart1910105(arg1)
    print("OnSubStart1910105")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_DionaData.alias, 19101)
    self:NpcRunToRouteTask(questNpcActor, datas.RunTo1910105, function(arg1)
        actorMgr:GetActor("19101"):FinishQuestID(false, 1910105)
    end)

    self:NarratorOnlyTaskByData(datas.Q1910105NarratorWithId)
end

function Quest19101:OnSubFinish1910105(arg1)
    print("OnSubFinish1910105")
end

function Quest19101:OnSubFailed1910105(arg1)
    print("OnSubFailed1910105")
end

return Quest19101
