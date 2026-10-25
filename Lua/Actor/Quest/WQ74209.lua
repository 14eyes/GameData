require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74209 = class("Quest74209", QuestActorProxy)
Quest74209.defaultAlias = "Quest74209"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74209:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74209:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7420901"] = self.OnSubStart7420901}
end

function Quest74209:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7420901"] = self.OnSubFinish7420901}
end

function Quest74209:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74209
