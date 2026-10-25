require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71083 = class("Quest71083", QuestActorProxy)
Quest71083.defaultAlias = "Quest71083"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71083:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71083:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7108301"] = self.OnSubStart7108301, ["7108302"] = self.OnSubStart7108302}
end

function Quest71083:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7108301"] = self.OnSubFinish7108301, ["7108302"] = self.OnSubFinish7108302}
end

function Quest71083:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71083
