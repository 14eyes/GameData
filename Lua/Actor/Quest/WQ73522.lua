require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73522 = class("Quest73522", QuestActorProxy)
Quest73522.defaultAlias = "Quest73522"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73522:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73522:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7352201"] = self.OnSubStart7352201, ["7352202"] = self.OnSubStart7352202}
end

function Quest73522:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7352201"] = self.OnSubFinish7352201, ["7352202"] = self.OnSubFinish7352202}
end

function Quest73522:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73522:Start()
    print("Start")
end

function Quest73522:OnDestroy()
    print("OnDestroy")
end

function Quest73522:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73522:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73522:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1055Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30356Data.alias, 3)
end

function Quest73522:OnSubStart7352201(arg1)
    print("OnSubStart7352201")
    this:CreateQuestNpc(arg1, npcs.Npc1055Data.id, 1)
end

function Quest73522:OnSubFinish7352201(arg1)
    print("OnSubFinish7352201")
end

function Quest73522:OnSubStart7352202(arg1)
    print("OnSubStart7352202")
    this:CreateQuestNpc(arg1, npcs.Npc30356Data.id, 1)
end

function Quest73522:OnSubFinish7352202(arg1)
    print("OnSubFinish7352202")
    this:SafeDestroyQuestNpc(npcs.Npc1055Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30356Data.alias, 3)
end

return Quest73522
