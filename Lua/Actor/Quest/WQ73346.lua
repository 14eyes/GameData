require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73346 = class("Quest73346", QuestActorProxy)
Quest73346.defaultAlias = "Quest73346"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73346:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73346:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7334601"] = self.OnSubStart7334601}
end

function Quest73346:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7334601"] = self.OnSubFinish7334601}
end

function Quest73346:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73346:Start()
    print("Start")
end

function Quest73346:OnDestroy()
    print("OnDestroy")
end

function Quest73346:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73346:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73346:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73346:OnSubStart7334601(arg1)
    print("OnSubStart7334601")
    actorUtils.FinishQuestID(false, 7334601)
end

function Quest73346:OnSubFinish7334601(arg1)
    print("OnSubFinish7334601")
end

return Quest73346
