require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71072 = class("Quest71072", QuestActorProxy)
Quest71072.defaultAlias = "Quest71072"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71072:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71072:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7107201"] = self.OnSubStart7107201}
end

function Quest71072:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7107201"] = self.OnSubFinish7107201}
end

function Quest71072:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71072
