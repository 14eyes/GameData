require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72678 = class("Quest72678", QuestActorProxy)
Quest72678.defaultAlias = "Quest72678"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72678:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72678:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7267810"] = self.OnSubStart7267810,
        ["7267801"] = self.OnSubStart7267801,
        ["7267802"] = self.OnSubStart7267802,
        ["7267803"] = self.OnSubStart7267803,
        ["7267804"] = self.OnSubStart7267804,
        ["7267809"] = self.OnSubStart7267809,
        ["7267805"] = self.OnSubStart7267805,
        ["7267806"] = self.OnSubStart7267806,
        ["7267807"] = self.OnSubStart7267807,
        ["7267811"] = self.OnSubStart7267811,
        ["7267808"] = self.OnSubStart7267808
    }
end

function Quest72678:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7267810"] = self.OnSubFinish7267810,
        ["7267801"] = self.OnSubFinish7267801,
        ["7267802"] = self.OnSubFinish7267802,
        ["7267803"] = self.OnSubFinish7267803,
        ["7267804"] = self.OnSubFinish7267804,
        ["7267809"] = self.OnSubFinish7267809,
        ["7267805"] = self.OnSubFinish7267805,
        ["7267806"] = self.OnSubFinish7267806,
        ["7267807"] = self.OnSubFinish7267807,
        ["7267811"] = self.OnSubFinish7267811,
        ["7267808"] = self.OnSubFinish7267808
    }
end

function Quest72678:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72678:Start()
    print("Start")
end

function Quest72678:OnDestroy()
    print("OnDestroy")
end

function Quest72678:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72678:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72678:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3188Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3161Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3159Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3160Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3188Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3161Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q72678Trigger_B1", 3, false)
    actorMgr:DestroyEntityActor("Q72678Trigger_B2", 3, false)
    actorMgr:DestroyEntityActor("Q72678Trigger_B3", 3, false)
    actorMgr:DestroyEntityActor("Q72678Trigger_B4", 3, false)
end

function Quest72678:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest72678:OnSubStart7267810(arg1)
    print("OnSubStart7267810")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72678:OnSubFinish7267810(arg1)
    print("OnSubFinish7267810")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.Narrator_Q7267810_Finish, nil, "")
    end)
end

function Quest72678:OnSubStart7267801(arg1)
    print("OnSubStart7267801")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72678:OnSubFinish7267801(arg1)
    print("OnSubFinish7267801")
end

function Quest72678:OnSubStart7267802(arg1)
    print("OnSubStart7267802")
    self:CreateQuestNpc(arg1, npcs.Npc3160Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest72678:OnSubFinish7267802(arg1)
    print("OnSubFinish7267802")
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
end

function Quest72678:OnSubStart7267803(arg1)
    print("OnSubStart7267803")
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc3160Data.alias)
end

function Quest72678:OnSubFinish7267803(arg1)
    print("OnSubFinish7267803")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
end

function Quest72678:OnSubStart7267804(arg1)
    print("OnSubStart7267804")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72678:OnSubFinish7267804(arg1)
    print("OnSubFinish7267804")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.Narrator_Q7267804_Finish, nil, "")
    end)
end

function Quest72678:OnSubStart7267809(arg1)
    print("OnSubStart7267809")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q72678Trigger_B2", "Actor/Gadget/Q72678Trigger_B2", 70900002, 0, sceneData:GetDummyPoint(3, "Q7267808_guide2").pos, sceneData:GetDummyPoint(3, "Q7267808_guide2").rot, true, false, 3)
end

function Quest72678:OnSubFinish7267809(arg1)
    print("OnSubFinish7267809")
    self:ActionSafeCall(function(arg1) end)
    self:NarratorOnlyTask(datas.Narrator_Q7267808_Finish, nil, "")
end

function Quest72678:OnSubStart7267805(arg1)
    print("OnSubStart7267805")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q72678Trigger_B3", "Actor/Gadget/Q72678Trigger_B3", 70900002, 0, sceneData:GetDummyPoint(3, "Q7267805_N3160").pos, sceneData:GetDummyPoint(3, "Q7267805_N3160").rot, true, false, 3)
end

function Quest72678:OnSubFinish7267805(arg1)
    print("OnSubFinish7267805")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.Narrator_Q7267809_Finish, nil, "")
    end)
end

function Quest72678:OnSubStart7267806(arg1)
    print("OnSubStart7267806")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q72678Trigger_B4", "Actor/Gadget/Q72678Trigger_B4", 70900002, 0, sceneData:GetDummyPoint(3, "Q7267808_guide1").pos, sceneData:GetDummyPoint(3, "Q7267808_guide1").rot, true, false, 3)
end

function Quest72678:OnSubFinish7267806(arg1)
    print("OnSubFinish7267806")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.Narrator_Q7267805_Finish, nil, "")
    end)
end

function Quest72678:OnSubStart7267807(arg1)
    print("OnSubStart7267807")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72678:OnSubFinish7267807(arg1)
    print("OnSubFinish7267807")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
end

function Quest72678:OnSubStart7267811(arg1)
    print("OnSubStart7267811")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc3159Data.id, 4)
end

function Quest72678:OnSubFinish7267811(arg1)
    print("OnSubFinish7267811")
    self:SafeDestroyQuestNpc(npcs.Npc3159Data.alias, 3)
end

function Quest72678:OnSubStart7267808(arg1)
    print("OnSubStart7267808")
end

function Quest72678:OnSubFinish7267808(arg1)
    print("OnSubFinish7267808")
end

return Quest72678
