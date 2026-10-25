require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71077 = class("Quest71077", QuestActorProxy)
Quest71077.defaultAlias = "Quest71077"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71077:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71077:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7107701"] = self.OnSubStart7107701}
end

function Quest71077:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7107701"] = self.OnSubFinish7107701}
end

function Quest71077:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71077
