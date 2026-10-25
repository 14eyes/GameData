require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75118 = class("Quest75118", QuestActorProxy)
Quest75118.defaultAlias = "Quest75118"
local clientData
local this
local mainID
local actorAlias

function Quest75118:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75118:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7511801"] = self.OnSubStart7511801}
end

function Quest75118:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7511801"] = self.OnSubFinish7511801}
end

function Quest75118:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75118:OnSubStart7511801(arg1)
    print("OnSubStart7511801")
end

function Quest75118:OnSubFinish7511801(arg1)
    print("OnSubFinish7511801")
end

return Quest75118
