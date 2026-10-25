require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6029 = class("Quest6029", QuestActorProxy)
Quest6029.defaultAlias = "Quest6029"
local clientData
local this
local mainID
local actorAlias

function Quest6029:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest6029:OnSubStartHandlerBuild()
    self.subStartHandlers = {["602901"] = self.OnSubStart602901}
end

function Quest6029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["602901"] = self.OnSubFinish602901}
end

function Quest6029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest6029:Start()
    print("Start")
end

function Quest6029:OnDestroy()
    print("OnDestroy")
end

function Quest6029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6029:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6029:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest6029:OnSubStart602901(arg1)
    print("OnSubStart602901")
end

function Quest6029:OnSubFinish602901(arg1)
    print("OnSubFinish602901")
end

return Quest6029
