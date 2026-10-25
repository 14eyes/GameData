require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70071 = class("Quest70071", QuestActorProxy)
Quest70071.defaultAlias = "Quest70071"
local clientData
local this
local mainID
local actorAlias

function Quest70071:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70071:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7007101"] = self.OnSubStart7007101}
end

function Quest70071:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7007101"] = self.OnSubFinish7007101}
end

function Quest70071:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70071:Start()
    print("Start")
end

function Quest70071:OnDestroy()
    print("OnDestroy")
end

function Quest70071:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70071:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70071:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70071:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest70071:OnSubStart7007101(arg1)
    print("OnSubStart7007101")
end

function Quest70071:OnSubFinish7007101(arg1)
    print("OnSubFinish7007101")
end

return Quest70071
