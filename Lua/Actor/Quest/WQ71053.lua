require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71053 = class("Quest71053", QuestActorProxy)
Quest71053.defaultAlias = "Quest71053"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71053:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71053:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7105301"] = self.OnSubStart7105301}
end

function Quest71053:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7105301"] = self.OnSubFinish7105301}
end

function Quest71053:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71053
