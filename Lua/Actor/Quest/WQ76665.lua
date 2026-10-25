require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76665 = class("Quest76665", QuestActorProxy)
Quest76665.defaultAlias = "Quest76665"
local clientData
local this
local mainID
local actorAlias

function Quest76665:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76665:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7666501"] = self.OnSubStart7666501}
end

function Quest76665:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7666501"] = self.OnSubFinish7666501}
end

function Quest76665:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76665:Start()
    print("Start")
end

function Quest76665:OnDestroy()
    print("OnDestroy")
end

function Quest76665:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76665:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76665:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76665:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76665:OnSubStart7666501(arg1)
    print("OnSubStart7666501")
end

function Quest76665:OnSubFinish7666501(arg1)
    print("OnSubFinish7666501")
end

return Quest76665
