require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75078 = class("Quest75078", QuestActorProxy)
Quest75078.defaultAlias = "Quest75078"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75078:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75078:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7507801"] = self.OnSubStart7507801}
end

function Quest75078:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7507801"] = self.OnSubFinish7507801}
end

function Quest75078:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75078:Start()
    print("Start")
end

function Quest75078:OnDestroy()
    print("OnDestroy")
end

function Quest75078:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75078:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75078:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75078:OnSubStart7507801(arg1)
    print("OnSubStart7507801")
end

function Quest75078:OnSubFinish7507801(arg1)
    print("OnSubFinish7507801")
end

return Quest75078
