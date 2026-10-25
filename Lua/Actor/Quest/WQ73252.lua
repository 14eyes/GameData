require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73252 = class("Quest73252", QuestActorProxy)
Quest73252.defaultAlias = "Quest73252"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73252:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73252:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7325201"] = self.OnSubStart7325201}
end

function Quest73252:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7325201"] = self.OnSubFinish7325201}
end

function Quest73252:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73252:Start()
    print("Start")
end

function Quest73252:OnDestroy()
    print("OnDestroy")
end

function Quest73252:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73252:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73252:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73252:OnSubStart7325201(arg1)
    print("OnSubStart7325201")
end

function Quest73252:OnSubFinish7325201(arg1)
    print("OnSubFinish7325201")
end

return Quest73252
