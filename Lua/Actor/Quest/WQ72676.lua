require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72676 = class("Quest72676", QuestActorProxy)
Quest72676.defaultAlias = "Quest72676"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest72676:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest72676:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7267614"] = self.OnSubStart7267614,
        ["7267601"] = self.OnSubStart7267601,
        ["7267602"] = self.OnSubStart7267602,
        ["7267603"] = self.OnSubStart7267603,
        ["7267604"] = self.OnSubStart7267604,
        ["7267605"] = self.OnSubStart7267605,
        ["7267606"] = self.OnSubStart7267606,
        ["7267607"] = self.OnSubStart7267607,
        ["7267608"] = self.OnSubStart7267608,
        ["7267609"] = self.OnSubStart7267609,
        ["7267613"] = self.OnSubStart7267613,
        ["7267610"] = self.OnSubStart7267610,
        ["7267611"] = self.OnSubStart7267611,
        ["7267612"] = self.OnSubStart7267612
    }
end

function Quest72676:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7267614"] = self.OnSubFinish7267614,
        ["7267601"] = self.OnSubFinish7267601,
        ["7267602"] = self.OnSubFinish7267602,
        ["7267603"] = self.OnSubFinish7267603,
        ["7267604"] = self.OnSubFinish7267604,
        ["7267605"] = self.OnSubFinish7267605,
        ["7267606"] = self.OnSubFinish7267606,
        ["7267607"] = self.OnSubFinish7267607,
        ["7267608"] = self.OnSubFinish7267608,
        ["7267609"] = self.OnSubFinish7267609,
        ["7267613"] = self.OnSubFinish7267613,
        ["7267610"] = self.OnSubFinish7267610,
        ["7267611"] = self.OnSubFinish7267611,
        ["7267612"] = self.OnSubFinish7267612
    }
end

function Quest72676:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72676:Start()
    print("Start")
end

function Quest72676:OnDestroy()
    print("OnDestroy")
end

function Quest72676:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72676:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72676:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 1034)
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 1034)
    self:SafeDestroyQuestNpc(npcs.Npc1419Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2082Data.alias, 1035)
    self:SafeDestroyQuestNpc(npcs.Npc2022Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2046Data.alias, 1035)
    self:SafeDestroyQuestNpc(npcs.Npc1463Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3188Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3161Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2146Data.alias, 1034)
    self:SafeDestroyQuestNpc(npcs.Npc2063Data.alias, 1034)
    self:SafeDestroyQuestNpc(npcs.Npc30122Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3160Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1463Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3188Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3161Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2146Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2063Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc30122Data.alias, 0, true)
    actorMgr:GetActor("72676"):UnSpawn(gadgets.Gadget70710103Data.alias)
    actorMgr:DestroyEntityActor("Q72676Trigger_EatPos2", 3, false)
    actorMgr:DestroyEntityActor("Q72676Trigger_Square", 3, false)
end

function Quest72676:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest72676:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 72676031 then
        self:UnSpawn(gadgets.Gadget70710103Data.alias)
        self:SpawnGadgetById(7267603, gadgets.Gadget70710103Data.id, 1)
    elseif arg1 == 72676032 then
        self:UnSpawn(gadgets.Gadget70710103Data.alias)
    end
end

function Quest72676:OnSubStart7267614(arg1)
    print("OnSubStart7267614")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72676:OnSubFinish7267614(arg1)
    print("OnSubFinish7267614")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.Narrator_Q7267614_Finish, nil, "")
    end)
end

function Quest72676:OnSubStart7267601(arg1)
    print("OnSubStart7267601")
    self:CreateQuestNpc(arg1, npcs.Npc1419Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc1463Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72676:OnSubFinish7267601(arg1)
    print("OnSubFinish7267601")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
end

function Quest72676:OnSubStart7267602(arg1)
    print("OnSubStart7267602")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1463Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest72676:OnSubFinish7267602(arg1)
    print("OnSubFinish7267602")
end

function Quest72676:OnSubStart7267603(arg1)
    print("OnSubStart7267603")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc1463Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72676:OnSubFinish7267603(arg1)
    print("OnSubFinish7267603")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1419Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710103Data.alias)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.Narrator_Q7267603_Finish, nil, "")
    end)

    self:LightNotifyTo(npcs.Npc1463Data.alias, 0, true)
end

function Quest72676:OnSubStart7267604(arg1)
    print("OnSubStart7267604")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q72676Trigger_Square", "Actor/Gadget/Q72676Trigger_Square", 70900002, 0, sceneData:GetDummyPoint(3, "Q7267604_N3160").pos, sceneData:GetDummyPoint(3, "Q7267604_N3160").rot, true, false, 3)
end

function Quest72676:OnSubFinish7267604(arg1)
    print("OnSubFinish7267604")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.Narrator_Q7267604_Finish, nil, "")
        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7267605_N3160").pos, 0, 3, true, false)
    end)
end

function Quest72676:OnSubStart7267605(arg1)
    print("OnSubStart7267605")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72676:OnSubFinish7267605(arg1)
    print("OnSubFinish7267605")
end

function Quest72676:OnSubStart7267606(arg1)
    print("OnSubStart7267606")
    self:CreateQuestNpc(arg1, npcs.Npc3160Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72676:OnSubFinish7267606(arg1)
    print("OnSubFinish7267606")
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
end

function Quest72676:OnSubStart7267607(arg1)
    print("OnSubStart7267607")
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc3160Data.alias)
end

function Quest72676:OnSubFinish7267607(arg1)
    print("OnSubFinish7267607")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
end

function Quest72676:OnSubStart7267608(arg1)
    print("OnSubStart7267608")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc2045Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:NotifyTo(npcs.Npc30122Data.alias, 1, true)
end

function Quest72676:OnSubFinish7267608(arg1)
    print("OnSubFinish7267608")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2045Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.Narrator_Q7267608_Finish, nil, "")
        arg1:LightNotifyTo(npcs.Npc30122Data.alias, 0, true)
    end)
end

function Quest72676:OnSubStart7267609(arg1)
    print("OnSubStart7267609")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc2082Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc2022Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc2046Data.id, 4)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2063Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc2082Data.alias):SitOnChair(8010)
    self:GetQuestNpcActor(npcs.Npc2046Data.alias):SitOnChair(8010)
end

function Quest72676:OnSubFinish7267609(arg1)
    print("OnSubFinish7267609")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2022Data.alias, 3)
end

function Quest72676:OnSubStart7267613(arg1)
    print("OnSubStart7267613")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2146Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2063Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc2082Data.alias):SitOnChair(8010)
    self:GetQuestNpcActor(npcs.Npc2046Data.alias):SitOnChair(8010)
    actorMgr:CreateActorWithPos("Q72676Trigger_EatPos2", "Actor/Gadget/Q72676Trigger_EatPos2", 70900002, 0, sceneData:GetDummyPoint(1034, "Q7267613_N3160").pos, sceneData:GetDummyPoint(1034, "Q7267613_N3160").rot, true, false, 1034)
end

function Quest72676:OnSubFinish7267613(arg1)
    print("OnSubFinish7267613")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2082Data.alias, 1035)
    self:SafeDestroyQuestNpc(npcs.Npc2046Data.alias, 1035)
    self:LightNotifyTo(npcs.Npc2146Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2063Data.alias, 0, true)
end

function Quest72676:OnSubStart7267610(arg1)
    print("OnSubStart7267610")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72676:OnSubFinish7267610(arg1)
    print("OnSubFinish7267610")
end

function Quest72676:OnSubStart7267611(arg1)
    print("OnSubStart7267611")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72676:OnSubFinish7267611(arg1)
    print("OnSubFinish7267611")
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 1034)
end

function Quest72676:OnSubStart7267612(arg1)
    print("OnSubStart7267612")
    self:CreateQuestNpc(arg1, npcs.Npc3160Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc3160Data.alias)
end

function Quest72676:OnSubFinish7267612(arg1)
    print("OnSubFinish7267612")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
end

return Quest72676
