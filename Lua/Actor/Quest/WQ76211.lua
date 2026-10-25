require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76211 = class("Quest76211", QuestActorProxy)
Quest76211.defaultAlias = "Quest76211"
local clientData
local this
local mainID
local actorAlias

function Quest76211:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76211:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7621101"] = self.OnSubStart7621101}
end

function Quest76211:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7621101"] = self.OnSubFinish7621101}
end

function Quest76211:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76211:Start()
    print("Start")
end

function Quest76211:OnDestroy()
    print("OnDestroy")
end

function Quest76211:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76211:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76211:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76211:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76211:OnSubStart7621101(arg1)
    print("OnSubStart7621101")
end

function Quest76211:OnSubFinish7621101(arg1)
    print("OnSubFinish7621101")
end

return Quest76211
