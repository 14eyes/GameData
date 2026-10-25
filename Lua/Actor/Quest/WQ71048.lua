require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71048 = class("Quest71048", QuestActorProxy)
Quest71048.defaultAlias = "Quest71048"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71048:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71048:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7104801"] = self.OnSubStart7104801, ["7104802"] = self.OnSubStart7104802}
end

function Quest71048:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7104801"] = self.OnSubFinish7104801, ["7104802"] = self.OnSubFinish7104802}
end

function Quest71048:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71048
