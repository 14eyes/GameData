require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71523 = class("Quest71523", QuestActorProxy)
Quest71523.defaultAlias = "Quest71523"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest71523:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71523:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7152301"] = self.OnSubStart7152301}
end

function Quest71523:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7152301"] = self.OnSubFinish7152301}
end

function Quest71523:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71523:Start()
    print("Start")
end

function Quest71523:OnDestroy()
    print("OnDestroy")
end

function Quest71523:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71523:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71523:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71523:OnSubStart7152301(arg1)
    print("OnSubStart7152301")
end

function Quest71523:OnSubFinish7152301(arg1)
    print("OnSubFinish7152301")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1544)
    end)
end

return Quest71523
