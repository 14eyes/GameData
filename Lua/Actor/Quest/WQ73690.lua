require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73690 = class("Quest73690", QuestActorProxy)
Quest73690.defaultAlias = "Quest73690"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73690:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73690:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7369001"] = self.OnSubStart7369001}
end

function Quest73690:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7369001"] = self.OnSubFinish7369001}
end

function Quest73690:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73690:Start()
    print("Start")
end

function Quest73690:OnDestroy()
    print("OnDestroy")
end

function Quest73690:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73690:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73690:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73690:OnSubStart7369001(arg1)
    print("OnSubStart7369001")
end

function Quest73690:OnSubFinish7369001(arg1)
    print("OnSubFinish7369001")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(963)
    end)
end

return Quest73690
