require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19017 = class("Quest19017", QuestActorProxy)
Quest19017.defaultAlias = "Quest19017"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19017:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1901701"] = self.OnSubStart1901701,
        ["1901702"] = self.OnSubStart1901702,
        ["1901703"] = self.OnSubStart1901703,
        ["1901704"] = self.OnSubStart1901704,
        ["1901705"] = self.OnSubStart1901705,
        ["1901706"] = self.OnSubStart1901706
    }
end

function Quest19017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1901701"] = self.OnSubFinish1901701,
        ["1901702"] = self.OnSubFinish1901702,
        ["1901703"] = self.OnSubFinish1901703,
        ["1901704"] = self.OnSubFinish1901704,
        ["1901705"] = self.OnSubFinish1901705,
        ["1901706"] = self.OnSubFinish1901706
    }
end

function Quest19017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19017:Start()
    print("Start")
end

function Quest19017:OnDestroy()
    print("OnDestroy")
end

function Quest19017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19017:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12318Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10227Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10228Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10229Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10230Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10231Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12407Data.alias, 3)
    actorMgr:DestroyEntityActor("Q19017Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19017Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q19017Trigger2", 3, false)
end

function Quest19017:OnSubStart1901701(arg1)
    print("OnSubStart1901701")
    self:CreateQuestNpc(arg1, npcs.Npc12318Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(106401, 1901704)
    actorMgr:CreateActorWithPos("Q19017Trigger", "Actor/Gadget/Q19017Trigger", 70900002, 0, {x = -658.0907, y = 223.6952, z = 202.6087}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest19017:OnSubFinish1901701(arg1)
    print("OnSubFinish1901701")
end

function Quest19017:OnSubStart1901702(arg1)
    print("OnSubStart1901702")
    self:CreateQuestNpc(arg1, npcs.Coop_YunjinData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10227Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10228Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10229Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc10230Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc10231Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc12407Data.id, 7)
    actorMgr:CreateActorWithPos("Q19017Trigger1", "Actor/Gadget/Q19017Trigger1", 70900002, 0, {x = -635.5076, y = 224.0182, z = 962.9364}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest19017:OnSubFinish1901702(arg1)
    print("OnSubFinish1901702")
    self:RequestCoopInteractionFromSubStartPoint(106401, 1901701)
    self:RequestInteraction(npcs.Coop_YunjinData.alias)
end

function Quest19017:OnSubStart1901703(arg1)
    print("OnSubStart1901703")
end

function Quest19017:OnSubFinish1901703(arg1)
    print("OnSubFinish1901703")
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12407Data.alias, 3)
end

function Quest19017:OnSubStart1901704(arg1)
    print("OnSubStart1901704")
end

function Quest19017:OnSubFinish1901704(arg1)
    print("OnSubFinish1901704")
end

function Quest19017:OnSubStart1901705(arg1)
    print("OnSubStart1901705")
    self:CallDelay(2, function(arg1)
        actorMgr:CreateActorWithPos("Q19017Trigger2", "Actor/Gadget/Q19017Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q1901705_C1901702_N509_310701437").pos, sceneData:GetDummyPoint(3, "Q1901705_C1901702_N509_310701437").rot, true, false, 3)
    end)

    self:RequestCoopInteractionFromSubStartPoint(106401, 1901702)
end

function Quest19017:OnSubFinish1901705(arg1)
    print("OnSubFinish1901705")
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
end

function Quest19017:OnSubStart1901706(arg1)
    print("OnSubStart1901706")
    self:RequestCoopInteractionFromSubStartPoint(106401, 1901703)
    actorMgr:CreateActorWithPos("Q19017Trigger", "Actor/Gadget/Q19017Trigger", 70900002, 0, {x = -658.0907, y = 223.6952, z = 202.6087}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest19017:OnSubFinish1901706(arg1)
    print("OnSubFinish1901706")
    self:SafeDestroyQuestNpc(npcs.Npc12318Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10227Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10228Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10229Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10230Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10231Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
end

return Quest19017
