require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79042 = class("Quest79042", QuestActorProxy)
Quest79042.defaultAlias = "Quest79042"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest79042:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79042:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7904201"] = self.OnSubStart7904201,
        ["7904202"] = self.OnSubStart7904202,
        ["7904203"] = self.OnSubStart7904203,
        ["7904204"] = self.OnSubStart7904204,
        ["7904205"] = self.OnSubStart7904205,
        ["7904206"] = self.OnSubStart7904206,
        ["7904207"] = self.OnSubStart7904207,
        ["7904208"] = self.OnSubStart7904208,
        ["7904209"] = self.OnSubStart7904209,
        ["7904210"] = self.OnSubStart7904210,
        ["7904211"] = self.OnSubStart7904211,
        ["7904212"] = self.OnSubStart7904212,
        ["7904213"] = self.OnSubStart7904213,
        ["7904214"] = self.OnSubStart7904214,
        ["7904215"] = self.OnSubStart7904215,
        ["7904216"] = self.OnSubStart7904216,
        ["7904217"] = self.OnSubStart7904217,
        ["7904218"] = self.OnSubStart7904218
    }
end

function Quest79042:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7904201"] = self.OnSubFinish7904201,
        ["7904202"] = self.OnSubFinish7904202,
        ["7904203"] = self.OnSubFinish7904203,
        ["7904204"] = self.OnSubFinish7904204,
        ["7904205"] = self.OnSubFinish7904205,
        ["7904206"] = self.OnSubFinish7904206,
        ["7904207"] = self.OnSubFinish7904207,
        ["7904208"] = self.OnSubFinish7904208,
        ["7904209"] = self.OnSubFinish7904209,
        ["7904210"] = self.OnSubFinish7904210,
        ["7904211"] = self.OnSubFinish7904211,
        ["7904212"] = self.OnSubFinish7904212,
        ["7904213"] = self.OnSubFinish7904213,
        ["7904214"] = self.OnSubFinish7904214,
        ["7904215"] = self.OnSubFinish7904215,
        ["7904216"] = self.OnSubFinish7904216,
        ["7904217"] = self.OnSubFinish7904217,
        ["7904218"] = self.OnSubFinish7904218
    }
end

function Quest79042:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest79042
