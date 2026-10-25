require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73351 = class("Quest73351", QuestActorProxy)
Quest73351.defaultAlias = "Quest73351"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest73351:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73351:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7335101"] = self.OnSubStart7335101, ["7335102"] = self.OnSubStart7335102}
end

function Quest73351:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7335101"] = self.OnSubFinish7335101, ["7335102"] = self.OnSubFinish7335102}
end

function Quest73351:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73351:Start()
    print("Start")
end

function Quest73351:OnDestroy()
    print("OnDestroy")
end

function Quest73351:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73351:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73351:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73351:OnSubStart7335101(arg1)
    print("OnSubStart7335101")
    actorUtils.FinishQuestID(false, 7335101)
end

function Quest73351:OnSubFinish7335101(arg1)
    print("OnSubFinish7335101")
end

function Quest73351:OnSubStart7335102(arg1)
    print("OnSubStart7335102")
    actorUtils.FinishQuestID(false, 7335102)
end

function Quest73351:OnSubFinish7335102(arg1)
    print("OnSubFinish7335102")
end

return Quest73351
