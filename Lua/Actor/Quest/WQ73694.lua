require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73694 = class("Quest73694", QuestActorProxy)
Quest73694.defaultAlias = "Quest73694"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73694:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73694:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7369401"] = self.OnSubStart7369401}
end

function Quest73694:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7369401"] = self.OnSubFinish7369401}
end

function Quest73694:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73694:Start()
    print("Start")
end

function Quest73694:OnDestroy()
    print("OnDestroy")
end

function Quest73694:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73694:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73694:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73694:OnSubStart7369401(arg1)
    print("OnSubStart7369401")
end

function Quest73694:OnSubFinish7369401(arg1)
    print("OnSubFinish7369401")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(961)
    end)
end

return Quest73694
