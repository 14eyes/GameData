require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73246 = class("Quest73246", QuestActorProxy)
Quest73246.defaultAlias = "Quest73246"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73246:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73246:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7324601"] = self.OnSubStart7324601}
end

function Quest73246:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7324601"] = self.OnSubFinish7324601}
end

function Quest73246:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73246:Start()
    print("Start")
end

function Quest73246:OnDestroy()
    print("OnDestroy")
end

function Quest73246:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73246:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73246:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73246:OnSubStart7324601(arg1)
    print("OnSubStart7324601")
end

function Quest73246:OnSubFinish7324601(arg1)
    print("OnSubFinish7324601")
end

return Quest73246
