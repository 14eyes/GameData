require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74207 = class("Quest74207", QuestActorProxy)
Quest74207.defaultAlias = "Quest74207"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74207:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74207:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7420701"] = self.OnSubStart7420701,
        ["7420702"] = self.OnSubStart7420702,
        ["7420703"] = self.OnSubStart7420703
    }
end

function Quest74207:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7420701"] = self.OnSubFinish7420701,
        ["7420702"] = self.OnSubFinish7420702,
        ["7420703"] = self.OnSubFinish7420703
    }
end

function Quest74207:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest74207
