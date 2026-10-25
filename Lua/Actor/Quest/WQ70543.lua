require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70543 = class("Quest70543", QuestActorProxy)
Quest70543.defaultAlias = "Quest70543"
local clientData
local this
local mainID
local actorAlias

function Quest70543:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70543:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7054301"] = self.OnSubStart7054301}
end

function Quest70543:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7054301"] = self.OnSubFinish7054301}
end

function Quest70543:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7054301"] = self.OnSubFailed7054301}
end

function Quest70543:OnSubStart7054301(arg1)
    print("OnSubStart7054301")
end

function Quest70543:OnSubFinish7054301(arg1)
    print("OnSubFinish7054301")
end

function Quest70543:OnSubFailed7054301(arg1)
    print("OnSubFailed7054301")
end

return Quest70543
