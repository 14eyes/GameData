require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70534 = class("Quest70534", QuestActorProxy)
Quest70534.defaultAlias = "Quest70534"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest70534:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70534:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7053401"] = self.OnSubStart7053401}
end

function Quest70534:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7053401"] = self.OnSubFinish7053401}
end

function Quest70534:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70534:Start()
    print("Start")
end

function Quest70534:OnDestroy()
    print("OnDestroy")
end

function Quest70534:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70534:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70534:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70534:OnSubStart7053401(arg1)
    print("OnSubStart7053401")
end

function Quest70534:OnSubFinish7053401(arg1)
    print("OnSubFinish7053401")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(974)
    end)
end

return Quest70534
