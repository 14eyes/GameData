require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76104 = class("Quest76104", QuestActorProxy)
Quest76104.defaultAlias = "Quest76104"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76104:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76104:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7610401"] = self.OnSubStart7610401}
end

function Quest76104:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7610401"] = self.OnSubFinish7610401}
end

function Quest76104:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76104:Start()
    print("Start")
end

function Quest76104:OnDestroy()
    print("OnDestroy")
end

function Quest76104:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76104:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76104:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76104:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76104:OnSubStart7610401(arg1)
    print("OnSubStart7610401")
    this:CreateQuestNpc(arg1, npcs.Npc22221.id, 0, false, 0)
end

function Quest76104:OnSubFinish7610401(arg1)
    print("OnSubFinish7610401")
    this:SafeDestroyQuestNpc(npcs.Npc22221.alias, 3)
end

return Quest76104
