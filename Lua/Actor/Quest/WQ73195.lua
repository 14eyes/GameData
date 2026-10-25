require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73195 = class("Quest73195", QuestActorProxy)
Quest73195.defaultAlias = "Quest73195"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73195:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73195:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7319501"] = self.OnSubStart7319501,
        ["7319502"] = self.OnSubStart7319502,
        ["7319503"] = self.OnSubStart7319503,
        ["7319504"] = self.OnSubStart7319504,
        ["7319505"] = self.OnSubStart7319505,
        ["7319506"] = self.OnSubStart7319506,
        ["7319507"] = self.OnSubStart7319507,
        ["7319508"] = self.OnSubStart7319508,
        ["7319509"] = self.OnSubStart7319509,
        ["7319510"] = self.OnSubStart7319510,
        ["7319511"] = self.OnSubStart7319511,
        ["7319512"] = self.OnSubStart7319512,
        ["7319513"] = self.OnSubStart7319513,
        ["7319514"] = self.OnSubStart7319514,
        ["7319515"] = self.OnSubStart7319515,
        ["7319516"] = self.OnSubStart7319516,
        ["7319517"] = self.OnSubStart7319517,
        ["7319518"] = self.OnSubStart7319518
    }
end

function Quest73195:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7319501"] = self.OnSubFinish7319501,
        ["7319502"] = self.OnSubFinish7319502,
        ["7319503"] = self.OnSubFinish7319503,
        ["7319504"] = self.OnSubFinish7319504,
        ["7319505"] = self.OnSubFinish7319505,
        ["7319506"] = self.OnSubFinish7319506,
        ["7319507"] = self.OnSubFinish7319507,
        ["7319508"] = self.OnSubFinish7319508,
        ["7319509"] = self.OnSubFinish7319509,
        ["7319510"] = self.OnSubFinish7319510,
        ["7319511"] = self.OnSubFinish7319511,
        ["7319512"] = self.OnSubFinish7319512,
        ["7319513"] = self.OnSubFinish7319513,
        ["7319514"] = self.OnSubFinish7319514,
        ["7319515"] = self.OnSubFinish7319515,
        ["7319516"] = self.OnSubFinish7319516,
        ["7319517"] = self.OnSubFinish7319517,
        ["7319518"] = self.OnSubFinish7319518
    }
end

function Quest73195:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73195
