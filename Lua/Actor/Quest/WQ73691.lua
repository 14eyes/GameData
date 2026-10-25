require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73691 = class("Quest73691", QuestActorProxy)
Quest73691.defaultAlias = "Quest73691"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73691:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73691:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7369101"] = self.OnSubStart7369101}
end

function Quest73691:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7369101"] = self.OnSubFinish7369101}
end

function Quest73691:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73691:Start()
    print("Start")
end

function Quest73691:OnDestroy()
    print("OnDestroy")
end

function Quest73691:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73691:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73691:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73691:OnSubStart7369101(arg1)
    print("OnSubStart7369101")
end

function Quest73691:OnSubFinish7369101(arg1)
    print("OnSubFinish7369101")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(962)
    end)
end

return Quest73691
