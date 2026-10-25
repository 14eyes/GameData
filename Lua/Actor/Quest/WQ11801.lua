require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11801 = class("Quest11801", QuestActorProxy)
Quest11801.defaultAlias = "Quest11801"
local clientData
local this
local mainID
local actorAlias

function Quest11801:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest11801:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1180101"] = self.OnSubStart1180101, ["1180102"] = self.OnSubStart1180102}
end

function Quest11801:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1180101"] = self.OnSubFinish1180101, ["1180102"] = self.OnSubFinish1180102}
end

function Quest11801:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest11801:Start()
    print("Start")
end

function Quest11801:OnDestroy()
    print("OnDestroy")
end

function Quest11801:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11801:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11801:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11801:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest11801:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1180101 then
        actorUtils.FinishQuestID(false, 1180101)
    elseif arg1 == 1180102 then
        actorUtils.FinishQuestID(true, 1180101)
    end
end

function Quest11801:OnSubStart1180101(arg1)
    print("OnSubStart1180101")
end

function Quest11801:OnSubFinish1180101(arg1)
    print("OnSubFinish1180101")
end

function Quest11801:OnSubStart1180102(arg1)
    print("OnSubStart1180102")
    actorUtils.FinishQuestID(false, 1180102)
end

function Quest11801:OnSubFinish1180102(arg1)
    print("OnSubFinish1180102")
end

return Quest11801
