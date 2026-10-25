require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79051 = class("Quest79051", QuestActorProxy)
Quest79051.defaultAlias = "Quest79051"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest79051:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79051:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7905101"] = self.OnSubStart7905101, ["7905102"] = self.OnSubStart7905102}
end

function Quest79051:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7905101"] = self.OnSubFinish7905101, ["7905102"] = self.OnSubFinish7905102}
end

function Quest79051:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79051:Start()
    print("Start")
end

function Quest79051:OnDestroy()
    print("OnDestroy")
end

function Quest79051:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79051:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79051:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79051:OnSubStart7905101(arg1)
    print("OnSubStart7905101")
end

function Quest79051:OnSubFinish7905101(arg1)
    print("OnSubFinish7905101")
end

function Quest79051:OnSubStart7905102(arg1)
    print("OnSubStart7905102")
end

function Quest79051:OnSubFinish7905102(arg1)
    print("OnSubFinish7905102")
end

return Quest79051
