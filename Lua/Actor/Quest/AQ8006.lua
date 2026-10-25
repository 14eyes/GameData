require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8006 = class("Quest8006", QuestActorProxy)
Quest8006.defaultAlias = "Quest8006"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest8006:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest8006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["800601"] = self.OnSubStart800601,
        ["800602"] = self.OnSubStart800602,
        ["800603"] = self.OnSubStart800603,
        ["800612"] = self.OnSubStart800612,
        ["800604"] = self.OnSubStart800604,
        ["800605"] = self.OnSubStart800605,
        ["800609"] = self.OnSubStart800609,
        ["800610"] = self.OnSubStart800610,
        ["800613"] = self.OnSubStart800613,
        ["800611"] = self.OnSubStart800611,
        ["800606"] = self.OnSubStart800606,
        ["800614"] = self.OnSubStart800614,
        ["800607"] = self.OnSubStart800607,
        ["800608"] = self.OnSubStart800608
    }
end

function Quest8006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["800601"] = self.OnSubFinish800601,
        ["800602"] = self.OnSubFinish800602,
        ["800603"] = self.OnSubFinish800603,
        ["800612"] = self.OnSubFinish800612,
        ["800604"] = self.OnSubFinish800604,
        ["800605"] = self.OnSubFinish800605,
        ["800609"] = self.OnSubFinish800609,
        ["800610"] = self.OnSubFinish800610,
        ["800613"] = self.OnSubFinish800613,
        ["800611"] = self.OnSubFinish800611,
        ["800606"] = self.OnSubFinish800606,
        ["800614"] = self.OnSubFinish800614,
        ["800607"] = self.OnSubFinish800607,
        ["800608"] = self.OnSubFinish800608
    }
end

function Quest8006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["800612"] = self.OnSubFailed800612}
end

function Quest8006:Start()
    print("Start")
end

function Quest8006:OnDestroy()
    print("OnDestroy")
end

function Quest8006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8006:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12427Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12458Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12459Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12460Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc10916Data.alias, 6)
    actorMgr:DestroyEntityActor("Q800602_TriggerIn", 6, false)
    actorMgr:DestroyEntityActor("Q800603_TriggerIn", 6, false)
    actorMgr:DestroyEntityActor("Q800606_TriggerIn", 6, false)
    actorMgr:DestroyEntityActor("Q800612_TriggerIn", 6, false)
end

function Quest8006:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 800614 then
        actorUtils.FinishQuestID(false, 800614)
    end
end

function Quest8006:OnSubStart800601(arg1)
    print("OnSubStart800601")
    self:CreateQuestNpc(arg1, npcs.Npc12427Data.id, 2)
    actorMgr:CreateActorWithPos("Q800601_TriggerIn", "Actor/Gadget/Q800601_TriggerIn", 70900002, 0, {x = 477.6995, y = 491.3583, z = 522.4428}, {x = 0, y = 0, z = 0}, true, false, 6)
end

function Quest8006:OnSubFinish800601(arg1)
    print("OnSubFinish800601")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
    actorMgr:DestroyEntityActor(datas.Q800601_TriggerIn.alias, 6, false)
end

function Quest8006:OnSubStart800602(arg1)
    print("OnSubStart800602")
    actorMgr:CreateActorWithPos("Q800602_TriggerIn", "Actor/Gadget/Q800602_TriggerIn", 70900002, 0, sceneData:GetDummyPoint(6, "Q800602_guide").pos, sceneData:GetDummyPoint(6, "Q800602_guide").rot, true, false, 6)
end

function Quest8006:OnSubFinish800602(arg1)
    print("OnSubFinish800602")
end

function Quest8006:OnSubStart800603(arg1)
    print("OnSubStart800603")
    actorMgr:CreateActorWithPos("Q800603_TriggerIn", "Actor/Gadget/Q800603_TriggerIn", 70900002, 0, sceneData:GetDummyPoint(6, "Q800603_guide").pos, sceneData:GetDummyPoint(6, "Q800603_guide").rot, true, false, 6)
end

function Quest8006:OnSubFinish800603(arg1)
    print("OnSubFinish800603")
end

function Quest8006:OnSubStart800612(arg1)
    print("OnSubStart800612")
    self:CreateQuestNpc(arg1, npcs.Npc12427Data.id, 2)
    actorMgr:CreateActorWithPos("Q800612_TriggerIn", "Actor/Gadget/Q800612_TriggerIn", 70900002, 0, sceneData:GetDummyPoint(6, "Q800604_guide").pos, sceneData:GetDummyPoint(6, "Q800604_guide").rot, true, false, 6)
end

function Quest8006:OnSubFinish800612(arg1)
    print("OnSubFinish800612")
    actorMgr:DestroyEntityActor(datas.Q800602_TriggerIn.alias, 6, false)
    actorMgr:DestroyEntityActor(datas.Q800603_TriggerIn.alias, 6, false)
end

function Quest8006:OnSubFailed800612(arg1)
    print("OnSubFailed800612")
    actorMgr:DestroyEntityActor(datas.Q800612_TriggerIn.alias, 6, false)
end

function Quest8006:OnSubStart800604(arg1)
    print("OnSubStart800604")
    self:CreateQuestNpc(arg1, npcs.Npc12427Data.id, 2)
    actorMgr:CreateActorWithPos("Q800604_TriggerIn", "Actor/Gadget/Q800604_TriggerIn", 70900002, 0, sceneData:GetDummyPoint(6, "Q800604_guide").pos, sceneData:GetDummyPoint(6, "Q800604_guide").rot, true, false, 6)
end

function Quest8006:OnSubFinish800604(arg1)
    print("OnSubFinish800604")
end

function Quest8006:OnSubStart800605(arg1)
    print("OnSubStart800605")
    self:CreateQuestNpc(arg1, npcs.Npc12427Data.id, 2)
end

function Quest8006:OnSubFinish800605(arg1)
    print("OnSubFinish800605")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
end

function Quest8006:OnSubStart800609(arg1)
    print("OnSubStart800609")
    self:CreateQuestNpc(arg1, npcs.Npc12458Data.id, 2)
end

function Quest8006:OnSubFinish800609(arg1)
    print("OnSubFinish800609")
    self:SafeDestroyQuestNpc(npcs.Npc12458Data.alias, 6)
end

function Quest8006:OnSubStart800610(arg1)
    print("OnSubStart800610")
    self:CreateQuestNpc(arg1, npcs.Npc12459Data.id, 2)
end

function Quest8006:OnSubFinish800610(arg1)
    print("OnSubFinish800610")
    self:SafeDestroyQuestNpc(npcs.Npc12459Data.alias, 6)
end

function Quest8006:OnSubStart800613(arg1)
    print("OnSubStart800613")
end

function Quest8006:OnSubFinish800613(arg1)
    print("OnSubFinish800613")
    self:RequestInteraction(npcs.Npc12459Data.alias)
end

function Quest8006:OnSubStart800611(arg1)
    print("OnSubStart800611")
    self:CreateQuestNpc(arg1, npcs.Npc12460Data.id, 2)
end

function Quest8006:OnSubFinish800611(arg1)
    print("OnSubFinish800611")
    self:SafeDestroyQuestNpc(npcs.Npc12460Data.alias, 6)
end

function Quest8006:OnSubStart800606(arg1)
    print("OnSubStart800606")
    self:CreateQuestNpc(arg1, npcs.Npc12427Data.id, 2)
    actorMgr:CreateActorWithPos("Q800606_TriggerIn", "Actor/Gadget/Q800606_TriggerIn", 70900002, 0, sceneData:GetDummyPoint(6, "Q800606_T800606_guide").pos, sceneData:GetDummyPoint(6, "Q800606_T800606_guide").rot, true, false, 6)
end

function Quest8006:OnSubFinish800606(arg1)
    print("OnSubFinish800606")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12427Data.alias, 6)
end

function Quest8006:OnSubStart800614(arg1)
    print("OnSubStart800614")
end

function Quest8006:OnSubFinish800614(arg1)
    print("OnSubFinish800614")
end

function Quest8006:OnSubStart800607(arg1)
    print("OnSubStart800607")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId_800602)
    end)
end

function Quest8006:OnSubFinish800607(arg1)
    print("OnSubFinish800607")
end

function Quest8006:OnSubStart800608(arg1)
    print("OnSubStart800608")
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1022Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc1022Data.alias)
    end)
end

function Quest8006:OnSubFinish800608(arg1)
    print("OnSubFinish800608")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc10916Data.alias, 6)
end

return Quest8006
