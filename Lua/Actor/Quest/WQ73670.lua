require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73670 = class("Quest73670", QuestActorProxy)
Quest73670.defaultAlias = "Quest73670"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73670:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73670:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7367001"] = self.OnSubStart7367001}
end

function Quest73670:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7367001"] = self.OnSubFinish7367001}
end

function Quest73670:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73670:Start()
    print("Start")
end

function Quest73670:OnDestroy()
    print("OnDestroy")
end

function Quest73670:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73670:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73670:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73670:OnSubStart7367001(arg1)
    print("OnSubStart7367001")
end

function Quest73670:OnSubFinish7367001(arg1)
    print("OnSubFinish7367001")
end

return Quest73670
