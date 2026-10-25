require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73214 = class("Quest73214", QuestActorProxy)
Quest73214.defaultAlias = "Quest73214"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73214:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73214:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7321401"] = self.OnSubStart7321401}
end

function Quest73214:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7321401"] = self.OnSubFinish7321401}
end

function Quest73214:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73214:Start()
    print("Start")
end

function Quest73214:OnDestroy()
    print("OnDestroy")
end

function Quest73214:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73214:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73214:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73214:OnSubStart7321401(arg1)
    print("OnSubStart7321401")
end

function Quest73214:OnSubFinish7321401(arg1)
    print("OnSubFinish7321401")
end

return Quest73214
