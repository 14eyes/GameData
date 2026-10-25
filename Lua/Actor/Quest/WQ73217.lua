require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73217 = class("Quest73217", QuestActorProxy)
Quest73217.defaultAlias = "Quest73217"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73217:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73217:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7321701"] = self.OnSubStart7321701,
        ["7321702"] = self.OnSubStart7321702,
        ["7321703"] = self.OnSubStart7321703,
        ["7321704"] = self.OnSubStart7321704,
        ["7321705"] = self.OnSubStart7321705,
        ["7321706"] = self.OnSubStart7321706,
        ["7321707"] = self.OnSubStart7321707,
        ["7321708"] = self.OnSubStart7321708,
        ["7321709"] = self.OnSubStart7321709,
        ["7321710"] = self.OnSubStart7321710,
        ["7321711"] = self.OnSubStart7321711,
        ["7321712"] = self.OnSubStart7321712,
        ["7321713"] = self.OnSubStart7321713,
        ["7321714"] = self.OnSubStart7321714,
        ["7321715"] = self.OnSubStart7321715,
        ["7321716"] = self.OnSubStart7321716,
        ["7321717"] = self.OnSubStart7321717,
        ["7321718"] = self.OnSubStart7321718,
        ["7321719"] = self.OnSubStart7321719,
        ["7321720"] = self.OnSubStart7321720
    }
end

function Quest73217:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7321701"] = self.OnSubFinish7321701,
        ["7321702"] = self.OnSubFinish7321702,
        ["7321703"] = self.OnSubFinish7321703,
        ["7321704"] = self.OnSubFinish7321704,
        ["7321705"] = self.OnSubFinish7321705,
        ["7321706"] = self.OnSubFinish7321706,
        ["7321707"] = self.OnSubFinish7321707,
        ["7321708"] = self.OnSubFinish7321708,
        ["7321709"] = self.OnSubFinish7321709,
        ["7321710"] = self.OnSubFinish7321710,
        ["7321711"] = self.OnSubFinish7321711,
        ["7321712"] = self.OnSubFinish7321712,
        ["7321713"] = self.OnSubFinish7321713,
        ["7321714"] = self.OnSubFinish7321714,
        ["7321715"] = self.OnSubFinish7321715,
        ["7321716"] = self.OnSubFinish7321716,
        ["7321717"] = self.OnSubFinish7321717,
        ["7321718"] = self.OnSubFinish7321718,
        ["7321719"] = self.OnSubFinish7321719,
        ["7321720"] = self.OnSubFinish7321720
    }
end

function Quest73217:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73217
