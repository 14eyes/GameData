require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73120 = class("Quest73120", QuestActorProxy)
Quest73120.defaultAlias = "Quest73120"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73120:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73120:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7312001"] = self.OnSubStart7312001}
end

function Quest73120:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7312001"] = self.OnSubFinish7312001}
end

function Quest73120:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73120:Start()
    print("Start")
end

function Quest73120:OnDestroy()
    print("OnDestroy")
end

function Quest73120:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73120:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73120:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73120:OnSubStart7312001(arg1)
    print("OnSubStart7312001")
    self:CreateQuestNpc(arg1, npcs.Npc20768Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20826Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20827Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20828Data.id, 4)
end

function Quest73120:OnSubFinish7312001(arg1)
    print("OnSubFinish7312001")
    self:SafeDestroyQuestNpc(npcs.Npc20768Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20826Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20827Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20828Data.alias, 3)
end

return Quest73120
