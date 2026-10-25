require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76135 = class("Quest76135", QuestActorProxy)
Quest76135.defaultAlias = "Quest76135"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76135:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76135:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7613501"] = self.OnSubStart7613501}
end

function Quest76135:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7613501"] = self.OnSubFinish7613501}
end

function Quest76135:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76135:Start()
    print("Start")
end

function Quest76135:OnDestroy()
    print("OnDestroy")
end

function Quest76135:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76135:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76135:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76135:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76135:OnSubStart7613501(arg1)
    print("OnSubStart7613501")
    this:CreateQuestNpc(arg1, npcs.Npc22226.id, 0, false, 0)
end

function Quest76135:OnSubFinish7613501(arg1)
    print("OnSubFinish7613501")
    this:SafeDestroyQuestNpc(npcs.Npc22226.alias, 3)
end

return Quest76135
