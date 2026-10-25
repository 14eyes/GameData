require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75143 = class("Quest75143", QuestActorProxy)
Quest75143.defaultAlias = "Quest75143"
local clientData
local this
local mainID
local actorAlias

function Quest75143:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75143:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7514301"] = self.OnSubStart7514301}
end

function Quest75143:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7514301"] = self.OnSubFinish7514301}
end

function Quest75143:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75143:Start()
    print("Start")
end

function Quest75143:OnDestroy()
    print("OnDestroy")
end

function Quest75143:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75143:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75143:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75143:OnSubStart7514301(arg1)
    print("OnSubStart7514301")
end

function Quest75143:OnSubFinish7514301(arg1)
    print("OnSubFinish7514301")
end

return Quest75143
