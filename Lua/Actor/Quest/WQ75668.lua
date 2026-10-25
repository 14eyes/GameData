require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75668 = class("Quest75668", QuestActorProxy)
Quest75668.defaultAlias = "Quest75668"
local clientData
local this
local mainID
local actorAlias

function Quest75668:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75668:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7566801"] = self.OnSubStart7566801}
end

function Quest75668:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7566801"] = self.OnSubFinish7566801}
end

function Quest75668:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75668:Start()
    print("Start")
end

function Quest75668:OnDestroy()
    print("OnDestroy")
end

function Quest75668:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75668:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75668:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75668:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75668:OnSubStart7566801(arg1)
    print("OnSubStart7566801")
end

function Quest75668:OnSubFinish7566801(arg1)
    print("OnSubFinish7566801")
end

return Quest75668
