require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6021 = class("Quest6021", QuestActorProxy)
Quest6021.defaultAlias = "Quest6021"
local clientData
local this
local mainID
local actorAlias

function Quest6021:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest6021:OnSubStartHandlerBuild()
    self.subStartHandlers = {["602101"] = self.OnSubStart602101, ["602102"] = self.OnSubStart602102}
end

function Quest6021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["602101"] = self.OnSubFinish602101, ["602102"] = self.OnSubFinish602102}
end

function Quest6021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest6021:Start()
    print("Start")
end

function Quest6021:OnDestroy()
    print("OnDestroy")
end

function Quest6021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6021:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6021:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest6021:OnSubStart602101(arg1)
    print("OnSubStart602101")
end

function Quest6021:OnSubFinish602101(arg1)
    print("OnSubFinish602101")
end

function Quest6021:OnSubStart602102(arg1)
    print("OnSubStart602102")
end

function Quest6021:OnSubFinish602102(arg1)
    print("OnSubFinish602102")
end

return Quest6021
