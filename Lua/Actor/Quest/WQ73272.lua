require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73272 = class("Quest73272", QuestActorProxy)
Quest73272.defaultAlias = "Quest73272"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73272:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73272:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7327201"] = self.OnSubStart7327201, ["7327202"] = self.OnSubStart7327202}
end

function Quest73272:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7327201"] = self.OnSubFinish7327201, ["7327202"] = self.OnSubFinish7327202}
end

function Quest73272:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73272:Start()
    print("Start")
end

function Quest73272:OnDestroy()
    print("OnDestroy")
end

function Quest73272:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73272:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73272:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73272:OnSubStart7327201(arg1)
    print("OnSubStart7327201")
end

function Quest73272:OnSubFinish7327201(arg1)
    print("OnSubFinish7327201")
end

function Quest73272:OnSubStart7327202(arg1)
    print("OnSubStart7327202")
end

function Quest73272:OnSubFinish7327202(arg1)
    print("OnSubFinish7327202")
end

return Quest73272
