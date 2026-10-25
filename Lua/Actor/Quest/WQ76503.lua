require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76503 = class("Quest76503", QuestActorProxy)
Quest76503.defaultAlias = "Quest76503"
local clientData
local this
local mainID
local actorAlias

function Quest76503:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76503:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7650301"] = self.OnSubStart7650301, ["7650302"] = self.OnSubStart7650302}
end

function Quest76503:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7650301"] = self.OnSubFinish7650301, ["7650302"] = self.OnSubFinish7650302}
end

function Quest76503:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76503:Start()
    print("Start")
end

function Quest76503:OnDestroy()
    print("OnDestroy")
end

function Quest76503:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76503:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76503:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76503:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76503:OnSubStart7650301(arg1)
    print("OnSubStart7650301")
end

function Quest76503:OnSubFinish7650301(arg1)
    print("OnSubFinish7650301")
end

function Quest76503:OnSubStart7650302(arg1)
    print("OnSubStart7650302")
end

function Quest76503:OnSubFinish7650302(arg1)
    print("OnSubFinish7650302")
end

return Quest76503
