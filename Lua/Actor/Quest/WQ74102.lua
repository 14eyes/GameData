require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74102 = class("Quest74102", QuestActorProxy)
Quest74102.defaultAlias = "Quest74102"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74102:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74102:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7410201"] = self.OnSubStart7410201, ["7410202"] = self.OnSubStart7410202}
end

function Quest74102:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7410201"] = self.OnSubFinish7410201, ["7410202"] = self.OnSubFinish7410202}
end

function Quest74102:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74102:Start()
    print("Start")
end

function Quest74102:OnDestroy()
    print("OnDestroy")
end

function Quest74102:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74102:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74102:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74102:OnSubStart7410201(arg1)
    print("OnSubStart7410201")
    actorUtils.FinishQuestID(false, 7410201)
end

function Quest74102:OnSubFinish7410201(arg1)
    print("OnSubFinish7410201")
end

function Quest74102:OnSubStart7410202(arg1)
    print("OnSubStart7410202")
end

function Quest74102:OnSubFinish7410202(arg1)
    print("OnSubFinish7410202")
end

return Quest74102
