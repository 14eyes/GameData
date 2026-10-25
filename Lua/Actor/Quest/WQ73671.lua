require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73671 = class("Quest73671", QuestActorProxy)
Quest73671.defaultAlias = "Quest73671"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73671:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73671:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7367101"] = self.OnSubStart7367101}
end

function Quest73671:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7367101"] = self.OnSubFinish7367101}
end

function Quest73671:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73671:Start()
    print("Start")
end

function Quest73671:OnDestroy()
    print("OnDestroy")
end

function Quest73671:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73671:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73671:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73671:OnSubStart7367101(arg1)
    print("OnSubStart7367101")
end

function Quest73671:OnSubFinish7367101(arg1)
    print("OnSubFinish7367101")
end

return Quest73671
