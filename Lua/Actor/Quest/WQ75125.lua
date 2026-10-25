require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75125 = class("Quest75125", QuestActorProxy)
Quest75125.defaultAlias = "Quest75125"
local clientData
local this
local mainID
local actorAlias

function Quest75125:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75125:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7512501"] = self.OnSubStart7512501}
end

function Quest75125:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7512501"] = self.OnSubFinish7512501}
end

function Quest75125:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75125:OnSubStart7512501(arg1)
    print("OnSubStart7512501")
end

function Quest75125:OnSubFinish7512501(arg1)
    print("OnSubFinish7512501")
end

return Quest75125
