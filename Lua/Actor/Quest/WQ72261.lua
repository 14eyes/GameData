require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72261 = class("Quest72261", QuestActorProxy)
Quest72261.defaultAlias = "Quest72261"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72261:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72261:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7226101"] = self.OnSubStart7226101,
        ["7226102"] = self.OnSubStart7226102,
        ["7226103"] = self.OnSubStart7226103,
        ["7226104"] = self.OnSubStart7226104,
        ["7226105"] = self.OnSubStart7226105,
        ["7226106"] = self.OnSubStart7226106,
        ["7226107"] = self.OnSubStart7226107
    }
end

function Quest72261:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7226101"] = self.OnSubFinish7226101,
        ["7226102"] = self.OnSubFinish7226102,
        ["7226103"] = self.OnSubFinish7226103,
        ["7226104"] = self.OnSubFinish7226104,
        ["7226105"] = self.OnSubFinish7226105,
        ["7226106"] = self.OnSubFinish7226106,
        ["7226107"] = self.OnSubFinish7226107
    }
end

function Quest72261:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72261:Start()
    print("Start")
end

function Quest72261:OnDestroy()
    print("OnDestroy")
end

function Quest72261:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72261:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72261:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3188Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3161Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3160Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3188Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3161Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q72261Trigger01", 3, false)
    actorMgr:DestroyEntityActor("Q72261Trigger02", 3, false)
    actorMgr:DestroyEntityActor("Q72261Trigger03", 3, false)
    actorMgr:DestroyEntityActor("Q72261Trigger04", 3, false)
    actorMgr:DestroyEntityActor("Q72261Trigger05", 3, false)
    actorMgr:DestroyEntityActor("Q72261Trigger06", 3, false)
end

function Quest72261:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest72261:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72261:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72261:OnSubStart7226101(arg1)
    print("OnSubStart7226101")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72261:OnSubFinish7226101(arg1)
    print("OnSubFinish7226101")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.paimengStart, nil, "")
    end)
end

function Quest72261:OnSubStart7226102(arg1)
    print("OnSubStart7226102")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q72261Trigger01", "Actor/Gadget/Q72261Trigger01", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72261_Start").pos, sceneData:GetDummyPoint(3, "Q3_72261_Start").rot, true, false, 3)
end

function Quest72261:OnSubFinish7226102(arg1)
    print("OnSubFinish7226102")
end

function Quest72261:OnSubStart7226103(arg1)
    print("OnSubStart7226103")
    self:CreateQuestNpc(arg1, npcs.Npc3160Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72261:OnSubFinish7226103(arg1)
    print("OnSubFinish7226103")
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
end

function Quest72261:OnSubStart7226104(arg1)
    print("OnSubStart7226104")
    self:CreateQuestNpc(arg1, npcs.Npc3160Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc3160Data.alias)
end

function Quest72261:OnSubFinish7226104(arg1)
    print("OnSubFinish7226104")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc3160Data.alias)
end

function Quest72261:OnSubStart7226105(arg1)
    print("OnSubStart7226105")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.paimengLiugou1, nil, "")
        actorMgr:CreateActorWithPos("Q72261Trigger02", "Actor/Gadget/Q72261Trigger02", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72261_PaimengHupo").pos, sceneData:GetDummyPoint(3, "Q3_72261_PaimengHupo").rot, true, false, 3)
        actorMgr:CreateActorWithPos("Q72261Trigger03", "Actor/Gadget/Q72261Trigger03", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72261_PaimengHupo").pos, sceneData:GetDummyPoint(3, "Q3_72261_PaimengHupo").rot, true, false, 3)
        actorMgr:CreateActorWithPos("Q72261Trigger04", "Actor/Gadget/Q72261Trigger04", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72261_Liugou4").pos, sceneData:GetDummyPoint(3, "Q3_72261_Liugou4").rot, true, false, 3)
    end)
end

function Quest72261:OnSubFinish7226105(arg1)
    print("OnSubFinish7226105")
end

function Quest72261:OnSubStart7226106(arg1)
    print("OnSubStart7226106")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q72261Trigger05", "Actor/Gadget/Q72261Trigger05", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72261_Paimengwhere").pos, sceneData:GetDummyPoint(3, "Q3_72261_Paimengwhere").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q72261Trigger06", "Actor/Gadget/Q72261Trigger06", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72261_PaimengFind").pos, sceneData:GetDummyPoint(3, "Q3_72261_PaimengFind").rot, true, false, 3)
end

function Quest72261:OnSubFinish7226106(arg1)
    print("OnSubFinish7226106")
end

function Quest72261:OnSubStart7226107(arg1)
    print("OnSubStart7226107")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3160Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72261:OnSubFinish7226107(arg1)
    print("OnSubFinish7226107")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc3160Data.alias)
end

return Quest72261
