require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74175 = class("Quest74175", QuestActorProxy)
Quest74175.defaultAlias = "Quest74175"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74175:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74175:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7417501"] = self.OnSubStart7417501}
end

function Quest74175:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7417501"] = self.OnSubFinish7417501}
end

function Quest74175:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74175:Start()
    print("Start")
end

function Quest74175:OnDestroy()
    print("OnDestroy")
end

function Quest74175:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74175:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74175:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74175:OnSubStart7417501(arg1)
    print("OnSubStart7417501")
    actorUtils.FinishQuestID(false, 7417501)
end

function Quest74175:OnSubFinish7417501(arg1)
    print("OnSubFinish7417501")
end

return Quest74175
