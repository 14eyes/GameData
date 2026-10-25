require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76021 = class("Quest76021", QuestActorProxy)
Quest76021.defaultAlias = "Quest76021"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76021:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76021:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7602101"] = self.OnSubStart7602101, ["7602102"] = self.OnSubStart7602102}
end

function Quest76021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7602101"] = self.OnSubFinish7602101, ["7602102"] = self.OnSubFinish7602102}
end

function Quest76021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76021:Start()
    print("Start")
end

function Quest76021:OnDestroy()
    print("OnDestroy")
end

function Quest76021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76021:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76021:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76021:OnSubStart7602101(arg1)
    print("OnSubStart7602101")
    this:CreateQuestNpc(arg1, npcs.Npc21927.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21928.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21930.id, 0, false, 0)
end

function Quest76021:OnSubFinish7602101(arg1)
    print("OnSubFinish7602101")
end

function Quest76021:OnSubStart7602102(arg1)
    print("OnSubStart7602102")
    this:CreateQuestNpc(arg1, npcs.Npc21924.id, 0, false, 0)
end

function Quest76021:OnSubFinish7602102(arg1)
    print("OnSubFinish7602102")
end

return Quest76021
