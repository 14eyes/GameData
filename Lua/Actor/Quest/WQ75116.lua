require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75116 = class("Quest75116", QuestActorProxy)
Quest75116.defaultAlias = "Quest75116"
local clientData
local this
local mainID
local actorAlias

function Quest75116:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75116:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7511601"] = self.OnSubStart7511601}
end

function Quest75116:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7511601"] = self.OnSubFinish7511601}
end

function Quest75116:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75116:OnSubStart7511601(arg1)
    print("OnSubStart7511601")
end

function Quest75116:OnSubFinish7511601(arg1)
    print("OnSubFinish7511601")
end

return Quest75116
