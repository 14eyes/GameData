require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77247 = class("Quest77247", QuestActorProxy)
Quest77247.defaultAlias = "Quest77247"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77247:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77247:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7724701"] = self.OnSubStart7724701}
end

function Quest77247:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7724701"] = self.OnSubFinish7724701}
end

function Quest77247:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77247:Start()
    print("Start")
end

function Quest77247:OnDestroy()
    print("OnDestroy")
end

function Quest77247:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77247:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77247:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77247:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77247:OnSubStart7724701(arg1)
    print("OnSubStart7724701")
    this:CreateQuestNpc(arg1, npcs.Npc20769.id, 0, false, 0)
end

function Quest77247:OnSubFinish7724701(arg1)
    print("OnSubFinish7724701")
end

return Quest77247
