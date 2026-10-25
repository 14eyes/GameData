require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70663 = class("Quest70663", QuestActorProxy)
Quest70663.defaultAlias = "Quest70663"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70663:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70663:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7066301"] = self.OnSubStart7066301}
end

function Quest70663:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7066301"] = self.OnSubFinish7066301}
end

function Quest70663:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest70663
