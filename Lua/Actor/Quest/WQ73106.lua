require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73106 = class("Quest73106", QuestActorProxy)
Quest73106.defaultAlias = "Quest73106"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73106:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73106:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7310601"] = self.OnSubStart7310601,
        ["7310602"] = self.OnSubStart7310602,
        ["7310603"] = self.OnSubStart7310603,
        ["7310604"] = self.OnSubStart7310604,
        ["7310605"] = self.OnSubStart7310605,
        ["7310606"] = self.OnSubStart7310606,
        ["7310607"] = self.OnSubStart7310607,
        ["7310608"] = self.OnSubStart7310608,
        ["7310609"] = self.OnSubStart7310609,
        ["7310610"] = self.OnSubStart7310610,
        ["7310611"] = self.OnSubStart7310611,
        ["7310612"] = self.OnSubStart7310612,
        ["7310613"] = self.OnSubStart7310613,
        ["7310614"] = self.OnSubStart7310614
    }
end

function Quest73106:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7310601"] = self.OnSubFinish7310601,
        ["7310602"] = self.OnSubFinish7310602,
        ["7310603"] = self.OnSubFinish7310603,
        ["7310604"] = self.OnSubFinish7310604,
        ["7310605"] = self.OnSubFinish7310605,
        ["7310606"] = self.OnSubFinish7310606,
        ["7310607"] = self.OnSubFinish7310607,
        ["7310608"] = self.OnSubFinish7310608,
        ["7310609"] = self.OnSubFinish7310609,
        ["7310610"] = self.OnSubFinish7310610,
        ["7310611"] = self.OnSubFinish7310611,
        ["7310612"] = self.OnSubFinish7310612,
        ["7310613"] = self.OnSubFinish7310613,
        ["7310614"] = self.OnSubFinish7310614
    }
end

function Quest73106:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73106
