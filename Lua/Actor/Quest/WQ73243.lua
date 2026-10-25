require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73243 = class("Quest73243", QuestActorProxy)
Quest73243.defaultAlias = "Quest73243"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73243:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73243:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7324301"] = self.OnSubStart7324301,
        ["7324302"] = self.OnSubStart7324302,
        ["7324303"] = self.OnSubStart7324303,
        ["7324304"] = self.OnSubStart7324304,
        ["7324305"] = self.OnSubStart7324305,
        ["7324306"] = self.OnSubStart7324306,
        ["7324307"] = self.OnSubStart7324307,
        ["7324308"] = self.OnSubStart7324308,
        ["7324309"] = self.OnSubStart7324309,
        ["7324310"] = self.OnSubStart7324310,
        ["7324311"] = self.OnSubStart7324311,
        ["7324312"] = self.OnSubStart7324312,
        ["7324313"] = self.OnSubStart7324313,
        ["7324314"] = self.OnSubStart7324314,
        ["7324315"] = self.OnSubStart7324315,
        ["7324316"] = self.OnSubStart7324316,
        ["7324317"] = self.OnSubStart7324317,
        ["7324318"] = self.OnSubStart7324318,
        ["7324319"] = self.OnSubStart7324319,
        ["7324320"] = self.OnSubStart7324320,
        ["7324321"] = self.OnSubStart7324321
    }
end

function Quest73243:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7324301"] = self.OnSubFinish7324301,
        ["7324302"] = self.OnSubFinish7324302,
        ["7324303"] = self.OnSubFinish7324303,
        ["7324304"] = self.OnSubFinish7324304,
        ["7324305"] = self.OnSubFinish7324305,
        ["7324306"] = self.OnSubFinish7324306,
        ["7324307"] = self.OnSubFinish7324307,
        ["7324308"] = self.OnSubFinish7324308,
        ["7324309"] = self.OnSubFinish7324309,
        ["7324310"] = self.OnSubFinish7324310,
        ["7324311"] = self.OnSubFinish7324311,
        ["7324312"] = self.OnSubFinish7324312,
        ["7324313"] = self.OnSubFinish7324313,
        ["7324314"] = self.OnSubFinish7324314,
        ["7324315"] = self.OnSubFinish7324315,
        ["7324316"] = self.OnSubFinish7324316,
        ["7324317"] = self.OnSubFinish7324317,
        ["7324318"] = self.OnSubFinish7324318,
        ["7324319"] = self.OnSubFinish7324319,
        ["7324320"] = self.OnSubFinish7324320,
        ["7324321"] = self.OnSubFinish7324321
    }
end

function Quest73243:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73243
