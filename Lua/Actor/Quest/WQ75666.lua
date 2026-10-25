require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75666 = class("Quest75666", QuestActorProxy)
Quest75666.defaultAlias = "Quest75666"
local clientData
local this
local mainID
local actorAlias

function Quest75666:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75666:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7566601"] = self.OnSubStart7566601}
end

function Quest75666:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7566601"] = self.OnSubFinish7566601}
end

function Quest75666:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75666:Start()
    print("Start")
end

function Quest75666:OnDestroy()
    print("OnDestroy")
end

function Quest75666:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75666:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75666:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75666:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75666:OnSubStart7566601(arg1)
    print("OnSubStart7566601")
end

function Quest75666:OnSubFinish7566601(arg1)
    print("OnSubFinish7566601")
end

return Quest75666
