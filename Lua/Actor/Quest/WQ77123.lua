require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77123 = class("Quest77123", QuestActorProxy)
Quest77123.defaultAlias = "Quest77123"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77123:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77123:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7712301"] = self.OnSubStart7712301}
end

function Quest77123:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7712301"] = self.OnSubFinish7712301}
end

function Quest77123:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77123:Start()
    print("Start")
end

function Quest77123:OnDestroy()
    print("OnDestroy")
end

function Quest77123:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77123:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77123:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77123:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77123:OnSubStart7712301(arg1)
    print("OnSubStart7712301")
    this:CreateQuestNpc(arg1, npcs.Npc22823.id, 0, false, 0)
end

function Quest77123:OnSubFinish7712301(arg1)
    print("OnSubFinish7712301")
end

return Quest77123
