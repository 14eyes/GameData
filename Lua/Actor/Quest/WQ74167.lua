require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74167 = class("Quest74167", QuestActorProxy)
Quest74167.defaultAlias = "Quest74167"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74167:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74167:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7416701"] = self.OnSubStart7416701, ["7416702"] = self.OnSubStart7416702}
end

function Quest74167:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7416701"] = self.OnSubFinish7416701, ["7416702"] = self.OnSubFinish7416702}
end

function Quest74167:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74167:Start()
    print("Start")
end

function Quest74167:OnDestroy()
    print("OnDestroy")
end

function Quest74167:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74167:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74167:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74167:OnSubStart7416701(arg1)
    print("OnSubStart7416701")
    actorUtils.FinishQuestID(false, 7416701)
end

function Quest74167:OnSubFinish7416701(arg1)
    print("OnSubFinish7416701")
end

function Quest74167:OnSubStart7416702(arg1)
    print("OnSubStart7416702")
end

function Quest74167:OnSubFinish7416702(arg1)
    print("OnSubFinish7416702")
end

return Quest74167
