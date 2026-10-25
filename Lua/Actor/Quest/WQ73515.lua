require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73515 = class("Quest73515", QuestActorProxy)
Quest73515.defaultAlias = "Quest73515"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73515:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73515:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7351502"] = self.OnSubStart7351502, ["7351501"] = self.OnSubStart7351501}
end

function Quest73515:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7351502"] = self.OnSubFinish7351502, ["7351501"] = self.OnSubFinish7351501}
end

function Quest73515:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73515:Start()
    print("Start")
end

function Quest73515:OnDestroy()
    print("OnDestroy")
end

function Quest73515:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73515:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73515:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30342Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30343Data.alias, 3)
end

function Quest73515:OnSubStart7351502(arg1)
    print("OnSubStart7351502")
end

function Quest73515:OnSubFinish7351502(arg1)
    print("OnSubFinish7351502")
end

function Quest73515:OnSubStart7351501(arg1)
    print("OnSubStart7351501")
    this:CreateQuestNpc(arg1, npcs.Npc30342Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc30343Data.id, 2)
end

function Quest73515:OnSubFinish7351501(arg1)
    print("OnSubFinish7351501")
    this:SafeDestroyQuestNpc(npcs.Npc30342Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30343Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1349)
    end)
end

return Quest73515
