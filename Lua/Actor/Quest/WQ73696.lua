require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73696 = class("Quest73696", QuestActorProxy)
Quest73696.defaultAlias = "Quest73696"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73696:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73696:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7369601"] = self.OnSubStart7369601}
end

function Quest73696:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7369601"] = self.OnSubFinish7369601}
end

function Quest73696:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73696:Start()
    print("Start")
end

function Quest73696:OnDestroy()
    print("OnDestroy")
end

function Quest73696:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73696:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73696:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73696:OnSubStart7369601(arg1)
    print("OnSubStart7369601")
end

function Quest73696:OnSubFinish7369601(arg1)
    print("OnSubFinish7369601")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(960)
    end)
end

return Quest73696
