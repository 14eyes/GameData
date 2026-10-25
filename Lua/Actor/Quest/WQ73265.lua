require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73265 = class("Quest73265", QuestActorProxy)
Quest73265.defaultAlias = "Quest73265"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73265:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73265:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7326501"] = self.OnSubStart7326501}
end

function Quest73265:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7326501"] = self.OnSubFinish7326501}
end

function Quest73265:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73265:Start()
    print("Start")
end

function Quest73265:OnDestroy()
    print("OnDestroy")
end

function Quest73265:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73265:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73265:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73265:OnSubStart7326501(arg1)
    print("OnSubStart7326501")
end

function Quest73265:OnSubFinish7326501(arg1)
    print("OnSubFinish7326501")
end

return Quest73265
