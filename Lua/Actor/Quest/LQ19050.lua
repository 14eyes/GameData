require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19050 = class("Quest19050", QuestActorProxy)
Quest19050.defaultAlias = "Quest19050"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19050:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19050:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1905001"] = self.OnSubStart1905001,
        ["1905002"] = self.OnSubStart1905002,
        ["1905003"] = self.OnSubStart1905003,
        ["1905004"] = self.OnSubStart1905004
    }
end

function Quest19050:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1905001"] = self.OnSubFinish1905001,
        ["1905002"] = self.OnSubFinish1905002,
        ["1905003"] = self.OnSubFinish1905003,
        ["1905004"] = self.OnSubFinish1905004
    }
end

function Quest19050:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19050:Start()
    print("Start")
end

function Quest19050:OnDestroy()
    print("OnDestroy")
end

function Quest19050:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19050:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19050:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2433Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2434Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2440Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2437Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2436Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2438Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2439Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2441Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2435Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2433Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2436Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2438Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2441Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2435Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q1905001Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905002Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905003Trigger", 3, false)
end

function Quest19050:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19050:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("Invoke 1")
        self:ShowReadingDialog(101590)
    end
end

function Quest19050:OnSubStart1905001(arg1)
    print("OnSubStart1905001")
    self:CreateQuestNpc(arg1, npcs.Npc2433Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc2434Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc2440Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc2437Data.id, 5)
    self:DailyNpcSafeHideSelf(npcs.Npc2436Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2438Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc2439Data.id, 6)
    self:DailyNpcSafeHideSelf(npcs.Npc2441Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1905001Trigger", "Actor/Gadget/Q1905001Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Beidou01").pos, sceneData:GetDummyPoint(3, "COOP10240101Beidou01").rot, true, false, 3)
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905001)
end

function Quest19050:OnSubFinish1905001(arg1)
    print("OnSubFinish1905001")
    self:SafeDestroyQuestNpc(npcs.Npc2433Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2434Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2440Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2437Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2439Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest19050:OnSubStart1905002(arg1)
    print("OnSubStart1905002")
    self:CreateQuestNpc(arg1, npcs.Coop_BeidouData.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc2433Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2436Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2438Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2441Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1905002Trigger", "Actor/Gadget/Q1905002Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Beidou01").pos, sceneData:GetDummyPoint(3, "COOP10240101Beidou01").rot, true, false, 3)
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905004)
end

function Quest19050:OnSubFinish1905002(arg1)
    print("OnSubFinish1905002")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
end

function Quest19050:OnSubStart1905003(arg1)
    print("OnSubStart1905003")
    self:CreateQuestNpc(arg1, npcs.Npc2433Data.id, 2)
    self:LightNotifyTo(npcs.Npc2436Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2438Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2441Data.alias, 0, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2435Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905002)
    actorMgr:CreateActorWithPos("Q1905003Trigger", "Actor/Gadget/Q1905003Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Juza02").pos, sceneData:GetDummyPoint(3, "COOP10240101Juza02").rot, true, false, 3)
end

function Quest19050:OnSubFinish1905003(arg1)
    print("OnSubFinish1905003")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2433Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2435Data.alias, 0, true)
end

function Quest19050:OnSubStart1905004(arg1)
    print("OnSubStart1905004")
    self:LightNotifyTo(npcs.Npc2433Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2436Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2438Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2441Data.alias, 0, true)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_BeidouData.id, 1)
        arg1_2:RequestCoopInteractionFromSubStartPoint(102401, 1905003)
    end)
end

function Quest19050:OnSubFinish1905004(arg1)
    print("OnSubFinish1905004")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
end

return Quest19050
