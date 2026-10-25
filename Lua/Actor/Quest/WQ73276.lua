require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73276 = class("Quest73276", QuestActorProxy)
Quest73276.defaultAlias = "Quest73276"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73276:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73276:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7327601"] = self.OnSubStart7327601}
end

function Quest73276:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7327601"] = self.OnSubFinish7327601}
end

function Quest73276:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73276:Start()
    print("Start")
end

function Quest73276:OnDestroy()
    print("OnDestroy")
end

function Quest73276:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73276:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73276:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73276:OnSubStart7327601(arg1)
    print("OnSubStart7327601")
end

function Quest73276:OnSubFinish7327601(arg1)
    print("OnSubFinish7327601")
end

return Quest73276
