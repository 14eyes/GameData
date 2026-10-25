require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75198 = class("Quest75198", QuestActorProxy)
Quest75198.defaultAlias = "Quest75198"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75198:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75198:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7519801"] = self.OnSubStart7519801, ["7519802"] = self.OnSubStart7519802}
end

function Quest75198:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7519801"] = self.OnSubFinish7519801, ["7519802"] = self.OnSubFinish7519802}
end

function Quest75198:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75198:Start()
    print("Start")
end

function Quest75198:OnDestroy()
    print("OnDestroy")
end

function Quest75198:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75198:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75198:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75198:OnSubStart7519801(arg1)
    print("OnSubStart7519801")
end

function Quest75198:OnSubFinish7519801(arg1)
    print("OnSubFinish7519801")
end

function Quest75198:OnSubStart7519802(arg1)
    print("OnSubStart7519802")
end

function Quest75198:OnSubFinish7519802(arg1)
    print("OnSubFinish7519802")
end

return Quest75198
