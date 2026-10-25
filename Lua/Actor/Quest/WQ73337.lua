require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73337 = class("Quest73337", QuestActorProxy)
Quest73337.defaultAlias = "Quest73337"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73337:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73337:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7333701"] = self.OnSubStart7333701,
        ["7333702"] = self.OnSubStart7333702,
        ["7333703"] = self.OnSubStart7333703,
        ["7333704"] = self.OnSubStart7333704,
        ["7333705"] = self.OnSubStart7333705,
        ["7333706"] = self.OnSubStart7333706,
        ["7333707"] = self.OnSubStart7333707,
        ["7333708"] = self.OnSubStart7333708,
        ["7333709"] = self.OnSubStart7333709,
        ["7333710"] = self.OnSubStart7333710
    }
end

function Quest73337:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7333701"] = self.OnSubFinish7333701,
        ["7333702"] = self.OnSubFinish7333702,
        ["7333703"] = self.OnSubFinish7333703,
        ["7333704"] = self.OnSubFinish7333704,
        ["7333705"] = self.OnSubFinish7333705,
        ["7333706"] = self.OnSubFinish7333706,
        ["7333707"] = self.OnSubFinish7333707,
        ["7333708"] = self.OnSubFinish7333708,
        ["7333709"] = self.OnSubFinish7333709,
        ["7333710"] = self.OnSubFinish7333710
    }
end

function Quest73337:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73337:Start()
    print("Start")
end

function Quest73337:OnDestroy()
    print("OnDestroy")
end

function Quest73337:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73337:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73337:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73337:OnSubStart7333701(arg1)
    print("OnSubStart7333701")
end

function Quest73337:OnSubFinish7333701(arg1)
    print("OnSubFinish7333701")
end

function Quest73337:OnSubStart7333702(arg1)
    print("OnSubStart7333702")
end

function Quest73337:OnSubFinish7333702(arg1)
    print("OnSubFinish7333702")
end

function Quest73337:OnSubStart7333703(arg1)
    print("OnSubStart7333703")
end

function Quest73337:OnSubFinish7333703(arg1)
    print("OnSubFinish7333703")
end

function Quest73337:OnSubStart7333704(arg1)
    print("OnSubStart7333704")
end

function Quest73337:OnSubFinish7333704(arg1)
    print("OnSubFinish7333704")
end

function Quest73337:OnSubStart7333705(arg1)
    print("OnSubStart7333705")
end

function Quest73337:OnSubFinish7333705(arg1)
    print("OnSubFinish7333705")
end

function Quest73337:OnSubStart7333706(arg1)
    print("OnSubStart7333706")
end

function Quest73337:OnSubFinish7333706(arg1)
    print("OnSubFinish7333706")
end

function Quest73337:OnSubStart7333707(arg1)
    print("OnSubStart7333707")
end

function Quest73337:OnSubFinish7333707(arg1)
    print("OnSubFinish7333707")
end

function Quest73337:OnSubStart7333708(arg1)
    print("OnSubStart7333708")
end

function Quest73337:OnSubFinish7333708(arg1)
    print("OnSubFinish7333708")
end

function Quest73337:OnSubStart7333709(arg1)
    print("OnSubStart7333709")
end

function Quest73337:OnSubFinish7333709(arg1)
    print("OnSubFinish7333709")
end

function Quest73337:OnSubStart7333710(arg1)
    print("OnSubStart7333710")
end

function Quest73337:OnSubFinish7333710(arg1)
    print("OnSubFinish7333710")
end

return Quest73337
