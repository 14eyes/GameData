require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73664 = class("Quest73664", QuestActorProxy)
Quest73664.defaultAlias = "Quest73664"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73664:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73664:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7366401"] = self.OnSubStart7366401}
end

function Quest73664:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7366401"] = self.OnSubFinish7366401}
end

function Quest73664:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73664:Start()
    print("Start")
end

function Quest73664:OnDestroy()
    print("OnDestroy")
end

function Quest73664:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73664:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73664:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73664:OnSubStart7366401(arg1)
    print("OnSubStart7366401")
end

function Quest73664:OnSubFinish7366401(arg1)
    print("OnSubFinish7366401")
end

return Quest73664
