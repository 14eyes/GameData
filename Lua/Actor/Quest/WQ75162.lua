require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75162 = class("Quest75162", QuestActorProxy)
Quest75162.defaultAlias = "Quest75162"
local clientData
local this
local mainID
local actorAlias

function Quest75162:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75162:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7516201"] = self.OnSubStart7516201}
end

function Quest75162:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7516201"] = self.OnSubFinish7516201}
end

function Quest75162:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75162:Start()
    print("Start")
end

function Quest75162:OnDestroy()
    print("OnDestroy")
end

function Quest75162:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75162:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75162:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75162:OnSubStart7516201(arg1)
    print("OnSubStart7516201")
end

function Quest75162:OnSubFinish7516201(arg1)
    print("OnSubFinish7516201")
end

return Quest75162
