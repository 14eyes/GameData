require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71522 = class("Quest71522", QuestActorProxy)
Quest71522.defaultAlias = "Quest71522"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest71522:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71522:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7152201"] = self.OnSubStart7152201}
end

function Quest71522:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7152201"] = self.OnSubFinish7152201}
end

function Quest71522:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71522:Start()
    print("Start")
end

function Quest71522:OnDestroy()
    print("OnDestroy")
end

function Quest71522:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71522:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71522:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71522:OnSubStart7152201(arg1)
    print("OnSubStart7152201")
end

function Quest71522:OnSubFinish7152201(arg1)
    print("OnSubFinish7152201")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1542)
    end)
end

return Quest71522
