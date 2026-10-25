require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11036 = class("Quest11036", QuestActorProxy)
Quest11036.defaultAlias = "Quest11036"
local clientData
local this
local mainID
local actorAlias

function Quest11036:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest11036:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1103601"] = self.OnSubStart1103601}
end

function Quest11036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1103601"] = self.OnSubFinish1103601}
end

function Quest11036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1103601"] = self.OnSubFailed1103601}
end

function Quest11036:OnSubStart1103601(arg1)
    print("OnSubStart1103601")
end

function Quest11036:OnSubFinish1103601(arg1)
    print("OnSubFinish1103601")
end

function Quest11036:OnSubFailed1103601(arg1)
    print("OnSubFailed1103601")
end

return Quest11036
