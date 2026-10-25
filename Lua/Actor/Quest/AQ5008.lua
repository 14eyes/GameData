require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5008 = class("Quest5008", QuestActorProxy)
Quest5008.defaultAlias = "Quest5008"
local clientData
local this
local mainID
local actorAlias

function Quest5008:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest5008:OnSubStartHandlerBuild()
    self.subStartHandlers = {["500801"] = self.OnSubStart500801}
end

function Quest5008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["500801"] = self.OnSubFinish500801}
end

function Quest5008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest5008:OnSubStart500801(arg1)
    print("OnSubStart500801")
end

function Quest5008:OnSubFinish500801(arg1)
    print("OnSubFinish500801")
end

return Quest5008
