require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19171 = class("Quest19171", QuestActorProxy)
Quest19171.defaultAlias = "Quest19171"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19171:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19171:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1917101"] = self.OnSubStart1917101,
        ["1917102"] = self.OnSubStart1917102,
        ["1917103"] = self.OnSubStart1917103,
        ["1917104"] = self.OnSubStart1917104,
        ["1917105"] = self.OnSubStart1917105,
        ["1917106"] = self.OnSubStart1917106
    }
end

function Quest19171:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1917101"] = self.OnSubFinish1917101,
        ["1917102"] = self.OnSubFinish1917102,
        ["1917103"] = self.OnSubFinish1917103,
        ["1917104"] = self.OnSubFinish1917104,
        ["1917105"] = self.OnSubFinish1917105,
        ["1917106"] = self.OnSubFinish1917106
    }
end

function Quest19171:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19171:Start()
    print("Start")
end

function Quest19171:OnDestroy()
    print("OnDestroy")
end

function Quest19171:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19171:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19171:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 1074)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 1074)
    this:SafeDestroyQuestNpc(npcs.Npc12923Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12924Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4003Data.alias, 1074)
    this:SafeDestroyQuestNpc(npcs.Npc4084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4054Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4083Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4084Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4054Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4083Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q19171Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917105Trigger", 1074, false)
    actorMgr:DestroyEntityActor("Q1917102N513Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917103N12923Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917104N12924Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917106N4003Trigger", 1074, false)
end

function Quest19171:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8, 1)
end

function Quest19171:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19171:NpcCreateWithTrigger(arg1, arg2, arg3)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8)
end

function Quest19171:OnSubStart1917101(arg1)
    print("OnSubStart1917101")
    this:DailyNpcSafeHideSelf(npcs.Npc4084Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4083Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q19171Trigger", "Actor/Gadget/Q19171Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1917102_guide").pos, sceneData:GetDummyPoint(3, "Q1917102_guide").rot, true, false, 3)
end

function Quest19171:OnSubFinish1917101(arg1)
    print("OnSubFinish1917101")
end

function Quest19171:OnSubStart1917102(arg1)
    print("OnSubStart1917102")
    this:NpcCreateWithTriggerBlack(npcs.Coop_FaruzanData.id, 1917102, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4084Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4083Data.alias, 1, true)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917102)
end

function Quest19171:OnSubFinish1917102(arg1)
    print("OnSubFinish1917102")
    this:NarratorOnlyTaskByData(datas.NarratorWithId1917102)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
end

function Quest19171:OnSubStart1917103(arg1)
    print("OnSubStart1917103")
    this:CreateQuestNpc(arg1, npcs.Coop_FaruzanData.id, 1)
    this:NpcCreateWithTrigger(npcs.Npc12923Data.id, 1917103, 3)
    this:LightNotifyTo(npcs.Npc4084Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4083Data.alias, 0, true)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917103)
end

function Quest19171:OnSubFinish1917103(arg1)
    print("OnSubFinish1917103")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
end

function Quest19171:OnSubStart1917104(arg1)
    print("OnSubStart1917104")
    this:CreateQuestNpc(arg1, npcs.Coop_FaruzanData.id, 1)
    this:NpcCreateWithTrigger(npcs.Npc12924Data.id, 1917104, 3)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917104)
end

function Quest19171:OnSubFinish1917104(arg1)
    print("OnSubFinish1917104")
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12923Data.alias, 3)
end

function Quest19171:OnSubStart1917105(arg1)
    print("OnSubStart1917105")
    this:CreateQuestNpc(arg1, npcs.Npc4003Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4054Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1917105Trigger", "Actor/Gadget/Q1917105Trigger", 70900002, 0, sceneData:GetDummyPoint(1074, "Q1917105_N4003").pos, sceneData:GetDummyPoint(1074, "Q1917105_N4003").rot, true, false, 1074)
end

function Quest19171:OnSubFinish1917105(arg1)
    print("OnSubFinish1917105")
    this:SafeDestroyQuestNpc(npcs.Npc12924Data.alias, 3)
end

function Quest19171:OnSubStart1917106(arg1)
    print("OnSubStart1917106")
    this:NpcCreateWithTrigger(npcs.Npc4003Data.id, 1917106, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4054Data.alias, 1, true)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917105)
end

function Quest19171:OnSubFinish1917106(arg1)
    print("OnSubFinish1917106")
    this:LightNotifyTo(npcs.Npc4054Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4003Data.alias, 1074)
end

return Quest19171
