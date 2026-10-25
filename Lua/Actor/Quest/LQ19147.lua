require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19147 = class("Quest19147", QuestActorProxy)
Quest19147.defaultAlias = "Quest19147"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19147:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19147:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1914701"] = self.OnSubStart1914701}
end

function Quest19147:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1914701"] = self.OnSubFinish1914701}
end

function Quest19147:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19147:Start()
    print("Start")
end

function Quest19147:OnDestroy()
    print("OnDestroy")
end

function Quest19147:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19147:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19147:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
    actorMgr:DestroyEntityActor("Q19147Trigger", 3, false)
end

function Quest19147:OnSubStart1914701(arg1)
    print("OnSubStart1914701")
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914701)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12278Data.id, 4)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12277Data.id, 3)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12276Data.id, 2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_ShinobuData.id, 1)
    end)

    actorMgr:CreateActorWithPos("Q19147Trigger", "Actor/Gadget/Q19147Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914701_C1914701_N510").pos, sceneData:GetDummyPoint(3, "Q1914701_C1914701_N510").rot, true, false, 3)
end

function Quest19147:OnSubFinish1914701(arg1)
    print("OnSubFinish1914701")
    self:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
end

return Quest19147
