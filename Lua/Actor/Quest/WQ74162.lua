require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74162 = class("Quest74162", QuestActorProxy)
Quest74162.defaultAlias = "Quest74162"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74162:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74162:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7416201"] = self.OnSubStart7416201}
end

function Quest74162:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7416201"] = self.OnSubFinish7416201}
end

function Quest74162:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74162
