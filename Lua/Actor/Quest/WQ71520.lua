require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71520 = class("Quest71520", QuestActorProxy)
Quest71520.defaultAlias = "Quest71520"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest71520:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71520:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7152001"] = self.OnSubStart7152001}
end

function Quest71520:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7152001"] = self.OnSubFinish7152001}
end

function Quest71520:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71520:Start()
    print("Start")
end

function Quest71520:OnDestroy()
    print("OnDestroy")
end

function Quest71520:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71520:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71520:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71520:OnSubStart7152001(arg1)
    print("OnSubStart7152001")
end

function Quest71520:OnSubFinish7152001(arg1)
    print("OnSubFinish7152001")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(976)
    end)
end

return Quest71520
