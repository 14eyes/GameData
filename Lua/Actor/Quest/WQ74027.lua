require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74027 = class("Quest74027", QuestActorProxy)
Quest74027.defaultAlias = "Quest74027"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74027:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74027:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7402701"] = self.OnSubStart7402701,
        ["7402702"] = self.OnSubStart7402702,
        ["7402703"] = self.OnSubStart7402703
    }
end

function Quest74027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7402701"] = self.OnSubFinish7402701,
        ["7402702"] = self.OnSubFinish7402702,
        ["7402703"] = self.OnSubFinish7402703
    }
end

function Quest74027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74027:Start()
    print("Start")
end

function Quest74027:OnDestroy()
    print("OnDestroy")
end

function Quest74027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74027:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74027:OnSubStart7402701(arg1)
    print("OnSubStart7402701")
    actorUtils.FinishQuestID(false, 7402701)
end

function Quest74027:OnSubFinish7402701(arg1)
    print("OnSubFinish7402701")
end

function Quest74027:OnSubStart7402702(arg1)
    print("OnSubStart7402702")
end

function Quest74027:OnSubFinish7402702(arg1)
    print("OnSubFinish7402702")
end

function Quest74027:OnSubStart7402703(arg1)
    print("OnSubStart7402703")
end

function Quest74027:OnSubFinish7402703(arg1)
    print("OnSubFinish7402703")
end

return Quest74027
