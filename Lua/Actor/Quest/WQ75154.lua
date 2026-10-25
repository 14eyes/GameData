require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75154 = class("Quest75154", QuestActorProxy)
Quest75154.defaultAlias = "Quest75154"
local clientData
local this
local mainID
local actorAlias

function Quest75154:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75154:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7515401"] = self.OnSubStart7515401}
end

function Quest75154:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7515401"] = self.OnSubFinish7515401}
end

function Quest75154:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75154:OnSubStart7515401(arg1)
    print("OnSubStart7515401")
end

function Quest75154:OnSubFinish7515401(arg1)
    print("OnSubFinish7515401")
end

return Quest75154
