require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71094 = class("Quest71094", QuestActorProxy)
Quest71094.defaultAlias = "Quest71094"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71094:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71094:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7109402"] = self.OnSubStart7109402,
        ["7109403"] = self.OnSubStart7109403,
        ["7109404"] = self.OnSubStart7109404,
        ["7109405"] = self.OnSubStart7109405,
        ["7109406"] = self.OnSubStart7109406
    }
end

function Quest71094:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7109402"] = self.OnSubFinish7109402,
        ["7109403"] = self.OnSubFinish7109403,
        ["7109404"] = self.OnSubFinish7109404,
        ["7109405"] = self.OnSubFinish7109405,
        ["7109406"] = self.OnSubFinish7109406
    }
end

function Quest71094:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71094
