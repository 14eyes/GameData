require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70697 = class("Quest70697", QuestActorProxy)
Quest70697.defaultAlias = "Quest70697"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70697:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70697:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7069701"] = self.OnSubStart7069701}
end

function Quest70697:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7069701"] = self.OnSubFinish7069701}
end

function Quest70697:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70697:Start()
    print("Start")
end

function Quest70697:OnDestroy()
    print("OnDestroy")
end

function Quest70697:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70697:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70697:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1035.alias, 3)
end

function Quest70697:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70697:OnSubStart7069701(arg1)
    print("OnSubStart7069701")
    this:CreateQuestNpc(arg1, npcs.Npc1035.id, 0, false, 0)
end

function Quest70697:OnSubFinish7069701(arg1)
    print("OnSubFinish7069701")
    this:SafeDestroyQuestNpc(npcs.Npc1035.alias, 3)
end

return Quest70697
