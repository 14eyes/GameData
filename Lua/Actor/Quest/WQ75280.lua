require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75280 = class("Quest75280", QuestActorProxy)
Quest75280.defaultAlias = "Quest75280"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75280:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75280:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7528001"] = self.OnSubStart7528001}
end

function Quest75280:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7528001"] = self.OnSubFinish7528001}
end

function Quest75280:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75280:Start()
    print("Start")
end

function Quest75280:OnDestroy()
    print("OnDestroy")
end

function Quest75280:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75280:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75280:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75280:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75280:OnSubStart7528001(arg1)
    print("OnSubStart7528001")
    this:CreateQuestNpc(arg1, npcs.Npc21976.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22032.id, 0, false, 0)
end

function Quest75280:OnSubFinish7528001(arg1)
    print("OnSubFinish7528001")
    this:SafeDestroyQuestNpc(npcs.Npc21976.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22032.alias, 3)
end

return Quest75280
