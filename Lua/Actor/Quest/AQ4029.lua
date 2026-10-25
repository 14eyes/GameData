require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4029 = class("Quest4029", QuestActorProxy)
Quest4029.defaultAlias = "Quest4029"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest4029:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest4029:OnSubStartHandlerBuild()
    self.subStartHandlers = {["402901"] = self.OnSubStart402901}
end

function Quest4029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["402901"] = self.OnSubFinish402901}
end

function Quest4029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest4029:Start()
    print("Start")
end

function Quest4029:OnDestroy()
    print("OnDestroy")
end

function Quest4029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4029:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4029:OnSubStart402901(arg1)
    print("OnSubStart402901")
    actorUtils.FinishQuestID(false, 402901)
end

function Quest4029:OnSubFinish402901(arg1)
    print("OnSubFinish402901")
end

return Quest4029
