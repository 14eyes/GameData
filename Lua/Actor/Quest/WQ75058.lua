require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75058 = class("Quest75058", QuestActorProxy)
Quest75058.defaultAlias = "Quest75058"
local clientData
local this
local mainID
local actorAlias

function Quest75058:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75058:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7505801"] = self.OnSubStart7505801, ["7505802"] = self.OnSubStart7505802}
end

function Quest75058:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7505801"] = self.OnSubFinish7505801, ["7505802"] = self.OnSubFinish7505802}
end

function Quest75058:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75058:OnSubStart7505801(arg1)
    print("OnSubStart7505801")
end

function Quest75058:OnSubFinish7505801(arg1)
    print("OnSubFinish7505801")
end

function Quest75058:OnSubStart7505802(arg1)
    print("OnSubStart7505802")
end

function Quest75058:OnSubFinish7505802(arg1)
    print("OnSubFinish7505802")
end

return Quest75058
