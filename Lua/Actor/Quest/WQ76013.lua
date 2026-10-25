require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76013 = class("Quest76013", QuestActorProxy)
Quest76013.defaultAlias = "Quest76013"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76013:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76013:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7601301"] = self.OnSubStart7601301, ["7601302"] = self.OnSubStart7601302}
end

function Quest76013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7601301"] = self.OnSubFinish7601301, ["7601302"] = self.OnSubFinish7601302}
end

function Quest76013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76013:Start()
    print("Start")
end

function Quest76013:OnDestroy()
    print("OnDestroy")
end

function Quest76013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76013:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76013:OnSubStart7601301(arg1)
    print("OnSubStart7601301")
    this:CreateQuestNpc(arg1, npcs.Npc21842.id, 0, false, 0)
end

function Quest76013:OnSubFinish7601301(arg1)
    print("OnSubFinish7601301")
end

function Quest76013:OnSubStart7601302(arg1)
    print("OnSubStart7601302")
end

function Quest76013:OnSubFinish7601302(arg1)
    print("OnSubFinish7601302")
end

return Quest76013
