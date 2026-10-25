require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74158 = class("Quest74158", QuestActorProxy)
Quest74158.defaultAlias = "Quest74158"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74158:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74158:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7415801"] = self.OnSubStart7415801}
end

function Quest74158:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7415801"] = self.OnSubFinish7415801}
end

function Quest74158:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74158:Start()
    print("Start")
end

function Quest74158:OnDestroy()
    print("OnDestroy")
end

function Quest74158:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74158:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74158:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74158:OnSubStart7415801(arg1)
    print("OnSubStart7415801")
    actorUtils.FinishQuestID(false, 7415801)
end

function Quest74158:OnSubFinish7415801(arg1)
    print("OnSubFinish7415801")
end

return Quest74158
