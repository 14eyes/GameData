require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73197 = class("Quest73197", QuestActorProxy)
Quest73197.defaultAlias = "Quest73197"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73197:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73197:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7319701"] = self.OnSubStart7319701,
        ["7319702"] = self.OnSubStart7319702,
        ["7319703"] = self.OnSubStart7319703,
        ["7319704"] = self.OnSubStart7319704,
        ["7319705"] = self.OnSubStart7319705,
        ["7319706"] = self.OnSubStart7319706,
        ["7319707"] = self.OnSubStart7319707,
        ["7319708"] = self.OnSubStart7319708,
        ["7319709"] = self.OnSubStart7319709,
        ["7319710"] = self.OnSubStart7319710,
        ["7319711"] = self.OnSubStart7319711,
        ["7319712"] = self.OnSubStart7319712,
        ["7319713"] = self.OnSubStart7319713,
        ["7319714"] = self.OnSubStart7319714,
        ["7319715"] = self.OnSubStart7319715,
        ["7319716"] = self.OnSubStart7319716,
        ["7319717"] = self.OnSubStart7319717,
        ["7319718"] = self.OnSubStart7319718
    }
end

function Quest73197:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7319701"] = self.OnSubFinish7319701,
        ["7319702"] = self.OnSubFinish7319702,
        ["7319703"] = self.OnSubFinish7319703,
        ["7319704"] = self.OnSubFinish7319704,
        ["7319705"] = self.OnSubFinish7319705,
        ["7319706"] = self.OnSubFinish7319706,
        ["7319707"] = self.OnSubFinish7319707,
        ["7319708"] = self.OnSubFinish7319708,
        ["7319709"] = self.OnSubFinish7319709,
        ["7319710"] = self.OnSubFinish7319710,
        ["7319711"] = self.OnSubFinish7319711,
        ["7319712"] = self.OnSubFinish7319712,
        ["7319713"] = self.OnSubFinish7319713,
        ["7319714"] = self.OnSubFinish7319714,
        ["7319715"] = self.OnSubFinish7319715,
        ["7319716"] = self.OnSubFinish7319716,
        ["7319717"] = self.OnSubFinish7319717,
        ["7319718"] = self.OnSubFinish7319718
    }
end

function Quest73197:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73197
