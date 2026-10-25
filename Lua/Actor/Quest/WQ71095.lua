require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71095 = class("Quest71095", QuestActorProxy)
Quest71095.defaultAlias = "Quest71095"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71095:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71095:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7109501"] = self.OnSubStart7109501,
        ["7109502"] = self.OnSubStart7109502,
        ["7109503"] = self.OnSubStart7109503,
        ["7109504"] = self.OnSubStart7109504,
        ["7109505"] = self.OnSubStart7109505,
        ["7109506"] = self.OnSubStart7109506,
        ["7109507"] = self.OnSubStart7109507,
        ["7109508"] = self.OnSubStart7109508,
        ["7109509"] = self.OnSubStart7109509,
        ["7109510"] = self.OnSubStart7109510,
        ["7109511"] = self.OnSubStart7109511,
        ["7109512"] = self.OnSubStart7109512,
        ["7109513"] = self.OnSubStart7109513,
        ["7109514"] = self.OnSubStart7109514,
        ["7109515"] = self.OnSubStart7109515,
        ["7109516"] = self.OnSubStart7109516,
        ["7109517"] = self.OnSubStart7109517
    }
end

function Quest71095:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7109501"] = self.OnSubFinish7109501,
        ["7109502"] = self.OnSubFinish7109502,
        ["7109503"] = self.OnSubFinish7109503,
        ["7109504"] = self.OnSubFinish7109504,
        ["7109505"] = self.OnSubFinish7109505,
        ["7109506"] = self.OnSubFinish7109506,
        ["7109507"] = self.OnSubFinish7109507,
        ["7109508"] = self.OnSubFinish7109508,
        ["7109509"] = self.OnSubFinish7109509,
        ["7109510"] = self.OnSubFinish7109510,
        ["7109511"] = self.OnSubFinish7109511,
        ["7109512"] = self.OnSubFinish7109512,
        ["7109513"] = self.OnSubFinish7109513,
        ["7109514"] = self.OnSubFinish7109514,
        ["7109515"] = self.OnSubFinish7109515,
        ["7109516"] = self.OnSubFinish7109516,
        ["7109517"] = self.OnSubFinish7109517
    }
end

function Quest71095:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71095
