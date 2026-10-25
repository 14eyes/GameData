require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73266 = class("Quest73266", QuestActorProxy)
Quest73266.defaultAlias = "Quest73266"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73266:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73266:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7326601"] = self.OnSubStart7326601, ["7326602"] = self.OnSubStart7326602}
end

function Quest73266:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7326601"] = self.OnSubFinish7326601, ["7326602"] = self.OnSubFinish7326602}
end

function Quest73266:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73266:Start()
    print("Start")
end

function Quest73266:OnDestroy()
    print("OnDestroy")
end

function Quest73266:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73266:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73266:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73266:OnSubStart7326601(arg1)
    print("OnSubStart7326601")
end

function Quest73266:OnSubFinish7326601(arg1)
    print("OnSubFinish7326601")
end

function Quest73266:OnSubStart7326602(arg1)
    print("OnSubStart7326602")
end

function Quest73266:OnSubFinish7326602(arg1)
    print("OnSubFinish7326602")
end

return Quest73266
