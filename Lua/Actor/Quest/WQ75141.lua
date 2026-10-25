require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75141 = class("Quest75141", QuestActorProxy)
Quest75141.defaultAlias = "Quest75141"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75141:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75141:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7514101"] = self.OnSubStart7514101}
end

function Quest75141:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7514101"] = self.OnSubFinish7514101}
end

function Quest75141:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75141:Start()
    print("Start")
end

function Quest75141:OnDestroy()
    print("OnDestroy")
end

function Quest75141:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75141:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75141:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75141:OnSubStart7514101(arg1)
    print("OnSubStart7514101")
end

function Quest75141:OnSubFinish7514101(arg1)
    print("OnSubFinish7514101")
end

return Quest75141
