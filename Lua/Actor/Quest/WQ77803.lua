require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77803 = class("Quest77803", QuestActorProxy)
Quest77803.defaultAlias = "Quest77803"
local clientData
local this
local mainID
local actorAlias

function Quest77803:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77803:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7780301"] = self.OnSubStart7780301}
end

function Quest77803:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7780301"] = self.OnSubFinish7780301}
end

function Quest77803:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77803:Start()
    print("Start")
end

function Quest77803:OnDestroy()
    print("OnDestroy")
end

function Quest77803:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77803:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77803:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77803:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77803:OnSubStart7780301(arg1)
    print("OnSubStart7780301")
end

function Quest77803:OnSubFinish7780301(arg1)
    print("OnSubFinish7780301")
end

return Quest77803
