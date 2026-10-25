require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75101 = class("Quest75101", QuestActorProxy)
Quest75101.defaultAlias = "Quest75101"
local clientData
local this
local mainID
local actorAlias

function Quest75101:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75101:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7510101"] = self.OnSubStart7510101}
end

function Quest75101:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7510101"] = self.OnSubFinish7510101}
end

function Quest75101:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75101:OnSubStart7510101(arg1)
    print("OnSubStart7510101")
end

function Quest75101:OnSubFinish7510101(arg1)
    print("OnSubFinish7510101")
end

return Quest75101
