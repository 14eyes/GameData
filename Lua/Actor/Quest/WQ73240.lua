require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73240 = class("Quest73240", QuestActorProxy)
Quest73240.defaultAlias = "Quest73240"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73240:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73240:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7324001"] = self.OnSubStart7324001}
end

function Quest73240:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7324001"] = self.OnSubFinish7324001}
end

function Quest73240:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73240:Start()
    print("Start")
end

function Quest73240:OnDestroy()
    print("OnDestroy")
end

function Quest73240:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73240:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73240:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73240:OnSubStart7324001(arg1)
    print("OnSubStart7324001")
end

function Quest73240:OnSubFinish7324001(arg1)
    print("OnSubFinish7324001")
end

return Quest73240
