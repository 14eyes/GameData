require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73666 = class("Quest73666", QuestActorProxy)
Quest73666.defaultAlias = "Quest73666"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73666:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73666:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7366601"] = self.OnSubStart7366601}
end

function Quest73666:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7366601"] = self.OnSubFinish7366601}
end

function Quest73666:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73666:Start()
    print("Start")
end

function Quest73666:OnDestroy()
    print("OnDestroy")
end

function Quest73666:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73666:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73666:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73666:OnSubStart7366601(arg1)
    print("OnSubStart7366601")
end

function Quest73666:OnSubFinish7366601(arg1)
    print("OnSubFinish7366601")
end

return Quest73666
