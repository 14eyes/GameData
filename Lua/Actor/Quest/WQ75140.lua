require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75140 = class("Quest75140", QuestActorProxy)
Quest75140.defaultAlias = "Quest75140"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75140:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75140:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7514001"] = self.OnSubStart7514001}
end

function Quest75140:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7514001"] = self.OnSubFinish7514001}
end

function Quest75140:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75140:Start()
    print("Start")
end

function Quest75140:OnDestroy()
    print("OnDestroy")
end

function Quest75140:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75140:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75140:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75140:OnSubStart7514001(arg1)
    print("OnSubStart7514001")
end

function Quest75140:OnSubFinish7514001(arg1)
    print("OnSubFinish7514001")
end

return Quest75140
