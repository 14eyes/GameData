require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70544 = class("Quest70544", QuestActorProxy)
Quest70544.defaultAlias = "Quest70544"
local clientData
local this
local mainID
local actorAlias

function Quest70544:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70544:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7054401"] = self.OnSubStart7054401}
end

function Quest70544:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7054401"] = self.OnSubFinish7054401}
end

function Quest70544:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7054401"] = self.OnSubFailed7054401}
end

function Quest70544:OnSubStart7054401(arg1)
    print("OnSubStart7054401")
end

function Quest70544:OnSubFinish7054401(arg1)
    print("OnSubFinish7054401")
end

function Quest70544:OnSubFailed7054401(arg1)
    print("OnSubFailed7054401")
end

return Quest70544
