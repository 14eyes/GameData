require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75115 = class("Quest75115", QuestActorProxy)
Quest75115.defaultAlias = "Quest75115"
local clientData
local this
local mainID
local actorAlias

function Quest75115:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75115:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7511501"] = self.OnSubStart7511501}
end

function Quest75115:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7511501"] = self.OnSubFinish7511501}
end

function Quest75115:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75115:OnSubStart7511501(arg1)
    print("OnSubStart7511501")
end

function Quest75115:OnSubFinish7511501(arg1)
    print("OnSubFinish7511501")
end

return Quest75115
