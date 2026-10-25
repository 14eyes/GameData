require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76167 = class("Quest76167", QuestActorProxy)
Quest76167.defaultAlias = "Quest76167"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76167:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76167:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7616701"] = self.OnSubStart7616701}
end

function Quest76167:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7616701"] = self.OnSubFinish7616701}
end

function Quest76167:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76167:Start()
    print("Start")
end

function Quest76167:OnDestroy()
    print("OnDestroy")
end

function Quest76167:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76167:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76167:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76167:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76167:OnSubStart7616701(arg1)
    print("OnSubStart7616701")
    this:CreateQuestNpc(arg1, npcs.Npc7674.id, 0, false, 0)
end

function Quest76167:OnSubFinish7616701(arg1)
    print("OnSubFinish7616701")
end

return Quest76167
