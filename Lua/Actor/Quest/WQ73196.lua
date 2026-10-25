require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73196 = class("Quest73196", QuestActorProxy)
Quest73196.defaultAlias = "Quest73196"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73196:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73196:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7319601"] = self.OnSubStart7319601,
        ["7319602"] = self.OnSubStart7319602,
        ["7319603"] = self.OnSubStart7319603,
        ["7319604"] = self.OnSubStart7319604,
        ["7319605"] = self.OnSubStart7319605,
        ["7319606"] = self.OnSubStart7319606,
        ["7319607"] = self.OnSubStart7319607,
        ["7319608"] = self.OnSubStart7319608,
        ["7319609"] = self.OnSubStart7319609,
        ["7319610"] = self.OnSubStart7319610,
        ["7319611"] = self.OnSubStart7319611,
        ["7319612"] = self.OnSubStart7319612,
        ["7319613"] = self.OnSubStart7319613,
        ["7319614"] = self.OnSubStart7319614,
        ["7319615"] = self.OnSubStart7319615,
        ["7319616"] = self.OnSubStart7319616,
        ["7319617"] = self.OnSubStart7319617,
        ["7319618"] = self.OnSubStart7319618
    }
end

function Quest73196:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7319601"] = self.OnSubFinish7319601,
        ["7319602"] = self.OnSubFinish7319602,
        ["7319603"] = self.OnSubFinish7319603,
        ["7319604"] = self.OnSubFinish7319604,
        ["7319605"] = self.OnSubFinish7319605,
        ["7319606"] = self.OnSubFinish7319606,
        ["7319607"] = self.OnSubFinish7319607,
        ["7319608"] = self.OnSubFinish7319608,
        ["7319609"] = self.OnSubFinish7319609,
        ["7319610"] = self.OnSubFinish7319610,
        ["7319611"] = self.OnSubFinish7319611,
        ["7319612"] = self.OnSubFinish7319612,
        ["7319613"] = self.OnSubFinish7319613,
        ["7319614"] = self.OnSubFinish7319614,
        ["7319615"] = self.OnSubFinish7319615,
        ["7319616"] = self.OnSubFinish7319616,
        ["7319617"] = self.OnSubFinish7319617,
        ["7319618"] = self.OnSubFinish7319618
    }
end

function Quest73196:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73196
