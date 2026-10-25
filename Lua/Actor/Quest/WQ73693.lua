require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73693 = class("Quest73693", QuestActorProxy)
Quest73693.defaultAlias = "Quest73693"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73693:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73693:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7369301"] = self.OnSubStart7369301}
end

function Quest73693:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7369301"] = self.OnSubFinish7369301}
end

function Quest73693:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73693:Start()
    print("Start")
end

function Quest73693:OnDestroy()
    print("OnDestroy")
end

function Quest73693:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73693:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73693:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73693:OnSubStart7369301(arg1)
    print("OnSubStart7369301")
end

function Quest73693:OnSubFinish7369301(arg1)
    print("OnSubFinish7369301")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(964)
    end)
end

return Quest73693
