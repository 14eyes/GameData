require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19141 = class("Quest19141", QuestActorProxy)
Quest19141.defaultAlias = "Quest19141"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19141:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19141:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1914101"] = self.OnSubStart1914101, ["1914102"] = self.OnSubStart1914102}
end

function Quest19141:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1914101"] = self.OnSubFinish1914101, ["1914102"] = self.OnSubFinish1914102}
end

function Quest19141:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19141:Start()
    print("Start")
end

function Quest19141:OnDestroy()
    print("OnDestroy")
end

function Quest19141:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19141:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19141:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3020Data.alias, 3)
    actorMgr:DestroyEntityActor("Q19141Trigger", 3, false)
end

function Quest19141:OnSubStart1914101(arg1)
    print("OnSubStart1914101")
    self:CreateQuestNpc(arg1, npcs.Coop_ShinobuData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3020Data.id, 5)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914101)
    actorMgr:CreateActorWithPos("Q19141Trigger", "Actor/Gadget/Q19141Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914101_C1914101_guide").pos, sceneData:GetDummyPoint(3, "Q1914101_C1914101_guide").rot, true, false, 3)
end

function Quest19141:OnSubFinish1914101(arg1)
    print("OnSubFinish1914101")
end

function Quest19141:OnSubStart1914102(arg1)
    print("OnSubStart1914102")
    self:CreateQuestNpc(arg1, npcs.Coop_ShinobuData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12276Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12277Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12278Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc3020Data.id, 5)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914102)
end

function Quest19141:OnSubFinish1914102(arg1)
    print("OnSubFinish1914102")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3020Data.alias, 3)
end

return Quest19141
