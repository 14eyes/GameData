require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70533 = class("Quest70533", QuestActorProxy)
Quest70533.defaultAlias = "Quest70533"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest70533:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70533:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7053301"] = self.OnSubStart7053301}
end

function Quest70533:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7053301"] = self.OnSubFinish7053301}
end

function Quest70533:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70533:Start()
    print("Start")
end

function Quest70533:OnDestroy()
    print("OnDestroy")
end

function Quest70533:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70533:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70533:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70533:OnSubStart7053301(arg1)
    print("OnSubStart7053301")
end

function Quest70533:OnSubFinish7053301(arg1)
    print("OnSubFinish7053301")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(973)
    end)
end

return Quest70533
