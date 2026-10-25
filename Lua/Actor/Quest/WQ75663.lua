require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75663 = class("Quest75663", QuestActorProxy)
Quest75663.defaultAlias = "Quest75663"
local clientData
local this
local mainID
local actorAlias

function Quest75663:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75663:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7566301"] = self.OnSubStart7566301}
end

function Quest75663:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7566301"] = self.OnSubFinish7566301}
end

function Quest75663:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75663:Start()
    print("Start")
end

function Quest75663:OnDestroy()
    print("OnDestroy")
end

function Quest75663:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75663:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75663:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75663:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75663:OnSubStart7566301(arg1)
    print("OnSubStart7566301")
end

function Quest75663:OnSubFinish7566301(arg1)
    print("OnSubFinish7566301")
end

return Quest75663
