require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76661 = class("Quest76661", QuestActorProxy)
Quest76661.defaultAlias = "Quest76661"
local clientData
local this
local mainID
local actorAlias

function Quest76661:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76661:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7666101"] = self.OnSubStart7666101}
end

function Quest76661:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7666101"] = self.OnSubFinish7666101}
end

function Quest76661:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76661:Start()
    print("Start")
end

function Quest76661:OnDestroy()
    print("OnDestroy")
end

function Quest76661:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76661:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76661:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76661:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76661:OnSubStart7666101(arg1)
    print("OnSubStart7666101")
end

function Quest76661:OnSubFinish7666101(arg1)
    print("OnSubFinish7666101")
end

return Quest76661
