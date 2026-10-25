require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71088 = class("Quest71088", QuestActorProxy)
Quest71088.defaultAlias = "Quest71088"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71088:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71088:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7108801"] = self.OnSubStart7108801, ["7108802"] = self.OnSubStart7108802}
end

function Quest71088:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7108801"] = self.OnSubFinish7108801, ["7108802"] = self.OnSubFinish7108802}
end

function Quest71088:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71088
