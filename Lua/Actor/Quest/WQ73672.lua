require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73672 = class("Quest73672", QuestActorProxy)
Quest73672.defaultAlias = "Quest73672"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73672:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73672:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7367201"] = self.OnSubStart7367201}
end

function Quest73672:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7367201"] = self.OnSubFinish7367201}
end

function Quest73672:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73672:Start()
    print("Start")
end

function Quest73672:OnDestroy()
    print("OnDestroy")
end

function Quest73672:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73672:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73672:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73672:OnSubStart7367201(arg1)
    print("OnSubStart7367201")
end

function Quest73672:OnSubFinish7367201(arg1)
    print("OnSubFinish7367201")
end

return Quest73672
