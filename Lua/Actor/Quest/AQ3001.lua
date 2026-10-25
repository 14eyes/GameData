require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3001 = class("Quest3001", QuestActorProxy)
Quest3001.defaultAlias = "Quest3001"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3001:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["300101"] = self.OnSubStart300101,
        ["300102"] = self.OnSubStart300102,
        ["300108"] = self.OnSubStart300108,
        ["300109"] = self.OnSubStart300109,
        ["300103"] = self.OnSubStart300103,
        ["300104"] = self.OnSubStart300104,
        ["300107"] = self.OnSubStart300107,
        ["300105"] = self.OnSubStart300105,
        ["300106"] = self.OnSubStart300106,
        ["300110"] = self.OnSubStart300110,
        ["300111"] = self.OnSubStart300111
    }
end

function Quest3001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["300101"] = self.OnSubFinish300101,
        ["300102"] = self.OnSubFinish300102,
        ["300108"] = self.OnSubFinish300108,
        ["300109"] = self.OnSubFinish300109,
        ["300103"] = self.OnSubFinish300103,
        ["300104"] = self.OnSubFinish300104,
        ["300107"] = self.OnSubFinish300107,
        ["300105"] = self.OnSubFinish300105,
        ["300106"] = self.OnSubFinish300106,
        ["300110"] = self.OnSubFinish300110,
        ["300111"] = self.OnSubFinish300111
    }
end

function Quest3001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3001:Start()
    print("Start")
end

function Quest3001:OnDestroy()
    print("OnDestroy")
end

function Quest3001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3001:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3001:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest3001:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest3001:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest3001:NpcCreateWithTrigger(arg1, arg2, arg3)
    self:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5)
end

function Quest3001:OnSubStart300101(arg1)
    print("OnSubStart300101")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1050Data.id, 1)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1051Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc4302Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4305Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4307Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4351Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4353Data.alias, 1, true)
    self:NarratorOnlyTaskByData(datas.NarratorWithId300101)
    actorMgr:CreateActorWithPos("Q300101Trigger", "Actor/Gadget/Q300101Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300101_N1051").pos, sceneData:GetDummyPoint(3, "Q300101_N1051").rot, true, false, 3)
end

function Quest3001:OnSubFinish300101(arg1)
    print("OnSubFinish300101")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300102)
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4301Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12576Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12586Data.alias, 3)
end

function Quest3001:OnSubStart300102(arg1)
    print("OnSubStart300102")
    self:DailyNpcSafeHideSelf(npcs.Npc4302Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4305Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4307Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4351Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4353Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q300102Trigger", "Actor/Gadget/Q300102Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300102_guide").pos, sceneData:GetDummyPoint(3, "Q300102_guide").rot, true, false, 3)
end

function Quest3001:OnSubFinish300102(arg1)
    print("OnSubFinish300102")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300103)
end

function Quest3001:OnSubStart300108(arg1)
    print("OnSubStart300108")
    self:LightNotifyTo(npcs.Npc4302Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4305Data.alias, 0, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4307Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4351Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4353Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q300108Trigger", "Actor/Gadget/Q300108Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300108_guide").pos, sceneData:GetDummyPoint(3, "Q300108_guide").rot, true, false, 3)
end

function Quest3001:OnSubFinish300108(arg1)
    print("OnSubFinish300108")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300104)
end

function Quest3001:OnSubStart300109(arg1)
    print("OnSubStart300109")
    self:DailyNpcSafeHideSelf(npcs.Npc4307Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4351Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4353Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q300109Trigger", "Actor/Gadget/Q300109Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300109_guide").pos, sceneData:GetDummyPoint(3, "Q300109_guide").rot, true, false, 3)
end

function Quest3001:OnSubFinish300109(arg1)
    print("OnSubFinish300109")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300105)
end

function Quest3001:OnSubStart300103(arg1)
    print("OnSubStart300103")
    self:NpcCreateWithTriggerBlack(npcs.Npc1051Data.id, 300103, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc4307Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4351Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4353Data.alias, 1, true)
end

function Quest3001:OnSubFinish300103(arg1)
    print("OnSubFinish300103")
    self:ClearNarratorTask()
end

function Quest3001:OnSubStart300104(arg1)
    print("OnSubStart300104")
    self:DailyNpcSafeHideSelf(npcs.Npc4307Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4351Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4353Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q300104Trigger", "Actor/Gadget/Q300104Trigger", 70900002, 0, {x = -826.304, y = 203.213, z = 2294.324}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest3001:OnSubFinish300104(arg1)
    print("OnSubFinish300104")
end

function Quest3001:OnSubStart300107(arg1)
    print("OnSubStart300107")
    self:DailyNpcSafeHideSelf(npcs.Npc4307Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4351Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4353Data.alias, 1, true)
    self:NarratorOnlyTaskByData(datas.NarratorWithId300106)
end

function Quest3001:OnSubFinish300107(arg1)
    print("OnSubFinish300107")
end

function Quest3001:OnSubStart300105(arg1)
    print("OnSubStart300105")
    self:NpcCreateWithTriggerBlack(npcs.PaimonData.id, 300105, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc4307Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4351Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4353Data.alias, 1, true)
end

function Quest3001:OnSubFinish300105(arg1)
    print("OnSubFinish300105")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300107)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc12557Data.alias, 3)
end

function Quest3001:OnSubStart300106(arg1)
    print("OnSubStart300106")
    self:NpcCreateWithTrigger(npcs.Npc1051Data.id, 300106, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc4307Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4351Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc4353Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc1051Data.alias):SitOnChair(0)
end

function Quest3001:OnSubFinish300106(arg1)
    print("OnSubFinish300106")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
end

function Quest3001:OnSubStart300110(arg1)
    print("OnSubStart300110")
    self:NpcCreateWithTriggerBlack(npcs.Npc4302Data.id, 300110, 3)
    self:LightNotifyTo(npcs.Npc4307Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4351Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4353Data.alias, 0, true)
end

function Quest3001:OnSubFinish300110(arg1)
    print("OnSubFinish300110")
    self:SafeDestroyQuestNpc(npcs.Npc4302Data.alias, 3)
end

function Quest3001:OnSubStart300111(arg1)
    print("OnSubStart300111")
end

function Quest3001:OnSubFinish300111(arg1)
    print("OnSubFinish300111")
end

return Quest3001
