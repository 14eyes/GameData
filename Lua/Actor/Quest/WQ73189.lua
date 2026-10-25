require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73189 = class("Quest73189", QuestActorProxy)
Quest73189.defaultAlias = "Quest73189"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73189:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73189:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7318901"] = self.OnSubStart7318901,
        ["7318902"] = self.OnSubStart7318902,
        ["7318903"] = self.OnSubStart7318903,
        ["7318904"] = self.OnSubStart7318904,
        ["7318906"] = self.OnSubStart7318906,
        ["7318907"] = self.OnSubStart7318907,
        ["7318908"] = self.OnSubStart7318908,
        ["7318909"] = self.OnSubStart7318909,
        ["7318910"] = self.OnSubStart7318910,
        ["7318911"] = self.OnSubStart7318911,
        ["7318905"] = self.OnSubStart7318905
    }
end

function Quest73189:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7318901"] = self.OnSubFinish7318901,
        ["7318902"] = self.OnSubFinish7318902,
        ["7318903"] = self.OnSubFinish7318903,
        ["7318904"] = self.OnSubFinish7318904,
        ["7318906"] = self.OnSubFinish7318906,
        ["7318907"] = self.OnSubFinish7318907,
        ["7318908"] = self.OnSubFinish7318908,
        ["7318909"] = self.OnSubFinish7318909,
        ["7318910"] = self.OnSubFinish7318910,
        ["7318911"] = self.OnSubFinish7318911,
        ["7318905"] = self.OnSubFinish7318905
    }
end

function Quest73189:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest73189
